Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3337D3C0C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727545554; cv=none; b=EnPBBGU35wf3CIDOXiI+QfqT3MlVzUM9CSiJfXWtKrkWxJkMpKte0FuPqS1jAYkA+fsAuSzqOOFohZp7qGnOFcFe+oWc2OiXEwRGBBCr+4Irg9ETpOakZQfnWjwkziA+HLwBj6D7YrBZzX9XC3fYrSGzOo3cNB+q/CPakGqYkiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727545554; c=relaxed/simple;
	bh=nKKNJVMMoQGzst97zqyLuZYwcRiGbpqk5AFKgGg1r4c=;
	h=To:Subject:From:Message-Id:Date; b=tFiSCkoISPxo3svsvjsWyjG3VBZQtLEZz1uuLGPPkKHe8TtpvWf0vlGbKeaitMMvZLzuMPWQ1RKzcPXDoIcb5MtkqjaAOEoomEOzLOSo/Gyjvkht6d75alCSdBC7m/30J3yBLQ+yD4uuljgGviSJ++tKcMZIp+TegQJCIDybesY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtKJR5kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtKJR5kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404AC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727545553;
	bh=nKKNJVMMoQGzst97zqyLuZYwcRiGbpqk5AFKgGg1r4c=;
	h=To:Subject:From:Date:From;
	b=QtKJR5ktk0SsJjtPqe1QYlWBDtvPV8Nn6SppwmNsxvLWufSmKuGM1D7V38rJPxq3g
	 fYXRdDsIV654YUzC/5GoAGQ35cOokEd9I4MAa1YPOpcXd84iCH19MT5cvFCO9MV8S4
	 iCEaTOdDvPuvho8sX9AUmDT+EfPr52ZqbK9Nix4qcusyo/v3LiJCVssePvB72i+YR+
	 z+6Ssiu3Igb6NdPENokMlcvN4nOT1Lygb309KYvp8uCQ4x9JFIxpema+dvscHnlY5m
	 8XltbzyWmJ8GGf5is+va/sDfr0BbVSyIgbF13dmYe0jQ52JKKA9LGRBokU37VC9vab
	 yusf+llUWm4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFCCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754555358.17588.13603708197785824662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c232fa23eed486ff637e2c21c150b3754a37f7e6d1d8a3055e58df676ff5bb
Date: Sat, 28 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727545553

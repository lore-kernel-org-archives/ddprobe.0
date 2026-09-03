Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC7A3F7882
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788429034; cv=none; b=TPztFO0G6BQKSVSMk4/iu4MHJcfwSCO+GUgYLItyGyTLourjT7F0cTjTeiddb7tByfh8ZXnAKybosbcPx3Db6J8Mm7aQR9mmdLKDdMk+H4V8p1Cg7u8P+OdWb1KVlLKEmLwEd110zbVXOPrGN5cYACT37MCwk84HGokQIrd6Maw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788429034; c=relaxed/simple;
	bh=Pu41pjAMUomivcIarf15CaVAir8h9DjqFpU2SBDCn08=;
	h=To:Subject:From:Message-Id:Date; b=Y1kpkYLXd2J5g5hJS6oSLhkFHew8+uIKLzxoXTcRI1g/Me1t3KzPwLLKRxW0ZzXXF9qPdBXPb9EAXEuE5aBB16/q9iSwmMOmNcOkUB257pT1XlrX1rQP3QNW+OzjZRY9RbOdb8AcowFs+RLGClCtL2lKOVlzABwTOmsji0w4PbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODQP1SvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODQP1SvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2B5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788429033;
	bh=Pu41pjAMUomivcIarf15CaVAir8h9DjqFpU2SBDCn08=;
	h=To:Subject:From:Date:From;
	b=ODQP1SvQzKyTC7f6iTJBOO9w8O7JXHI9ez3jC+SUBpBK7C9mFbqsQ4Q/l1ExZMAZ1
	 zjObM+W3PZ2k2unZZEzKxJkJjRT/sX/W+tu+ECJHqaoAfifeXDlRTd5/sjSYle+2Nb
	 j9kvrxMBO2AHv8UuQsoF8OyiSxWOC8p2R1GloXZvO+Rl+qci9X5uHUWQ4oLIWAis7w
	 Hl5LMZ1SY4Bul68uRr7eAasHBXjQ8AoZGawrD1IOT6G3jT2L8oTC91cSZdvdWY2vGQ
	 0KFxXtcAorOTgC9wJJ2zwTqLSMbbeS0mtVDRQwbulnvIX5NS196QKe6AOWDO6mhoQC
	 qSqmdlsas1Clw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2CC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842903369.11808.9630250769813256303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d341c1c1daa78f16971dc111c8fc357d6e117c875ceab4fd0b107e7b24584a1
Date: Thu, 03 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788429033

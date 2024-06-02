Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C383C2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717363523; cv=none; b=JgYZTmVCVMZ7zSuyy+mItqeObp17sqzPLF7wPgzpOdcADz7QNbfwyVJsrAsU/9pVETapA4a/Ua3Lm8u8Wv4alZZrBdorWKlshLG6eBKp3rUXKVZYgISuCvOZ+qO3tOskMINndxLgO9Z/MsJOTUMGcEFCol6ubs59ryjVlYxHKxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717363523; c=relaxed/simple;
	bh=7HTu2kfkn7Bl64Ub5/GW8O80OXQVWkEWJnsVEZNoe9k=;
	h=To:Subject:From:Message-Id:Date; b=rmaGCY4x45hUqzvqq+Jf5pCT9h7cTj0yC8hh7WSUw5GdXaIBjbPIk9SJOcXd7DLb0eFhIptl6HWbOlCRlnq3InqlmJ2oT9mIAgvvqK8gYTrN4m/FAzgEHF/nFQYOHCU1bastiGds/cinq33KSmTIdVTOllQLU7VF07kKMe4fig0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCGacV32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCGacV32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CD9C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717363522;
	bh=7HTu2kfkn7Bl64Ub5/GW8O80OXQVWkEWJnsVEZNoe9k=;
	h=To:Subject:From:Date:From;
	b=hCGacV32JUTOqxc6Bcebp3j/ljGb/sQUMPRPEvJ3C8k8QkWJRM43TFbg335Jvq1Vp
	 mqelhrGdu1FxLeBaalFUYGY67j23EkaaHjFdYu+YRXMiLKbfQwfn9tCczFtr8tCrkH
	 CxvgOcJm43OLmz4IpTCrJVJwe4LuOvy4bbjZxLKK0/umlhKgeO1YeutPvj8GS3zaJS
	 RMHBuUJhoJjHcCMvpV7wQpW29aFuoa2c9sNeyDva3XAJMdqcudUgbIpEcGEbiIRxNB
	 zSyf8sXXkKTf8IQPlO4vwvn0N3BMhg12BxXgW3lI/pKRNVDc613uZBuhYc/pchv49N
	 rwW5G5naJqA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFF4C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736352276.27462.12007263864008835835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c95a083c2534fa18ab13acefd6a75e57b38191c1f7801384d48f9696c969e6
Date: Sun, 02 Jun 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717363522

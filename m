Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DC5253932
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765822373; cv=none; b=REhSlesONtrcoIBxwxen+U8gZvjv4HdtvTJlmhByOVyGkTzsnf3TmhCgYW7GhqCIwFEjqFmsSTJ++6K2ECeqpDlN2oX5DtFJ7il2azfRpRtNFCCJ6BWAcOZuqkmvgBHuN0taNjUqmi8FJlTjTdo3i5MOI8DY7x/JuPeaKqoWb7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765822373; c=relaxed/simple;
	bh=2uXo5R7hCfEG1iAqSwaco1ccmgaM6LWNbiNwl6CjUfY=;
	h=To:Subject:From:Message-Id:Date; b=ILI/zG0vdNBzNwOtyujIDpe7AuNtM6M2MWh4H+p6gGH5ZvGToMjWN4RoWaQaCRt+oTdUu1dMPPBtrlb7sWOHeTSAeacoP4SwdAE03HY/o2akZgJscWjSjkM6TbAbDAq+sztFQX9bSZI7vQ9Q/3D0aOAzPaPUPQp0Mc70rYF4UPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJmKFKCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJmKFKCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765822373;
	bh=2uXo5R7hCfEG1iAqSwaco1ccmgaM6LWNbiNwl6CjUfY=;
	h=To:Subject:From:Date:From;
	b=rJmKFKCsAfYg31Ht+HE2ScQ/TPkcCSzfUu5gV7XQz5dFYrty6aLk0JASBXQ571PKF
	 VsB3kQezkdwshaKvZnonCLwJzmLd7w9xbfNInrBhtzXEj7Erf0x8Rj/Asm7RVbhTUK
	 oRLRwkJCj+mgXnRlKk1izboi4xqBwVUo2xxscujs8PYYPRTQLqqJnBPMtR971LSqWF
	 61KMb1oXevznYmGO1oJDlbltxHuErcqE9tjpb2YqNGPtdDgX4D6ebf5k7q16jzLvvE
	 B1Ga2kT+3YO2c31L3CcHpCGHcyiUWdcEj7RrltivT2ZLTfQbdgNS3eMBFw1BjLs6Z0
	 I1+tn5TQPx+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938DCD5B862
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582237358.28367.10070674370606958425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c0473bc9e609314afa7f52fdc5061434b8cc5f9975648db019f9f8383d2bfa
Date: Mon, 15 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765822373

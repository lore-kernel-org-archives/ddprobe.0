Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72552212556
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759202394; cv=none; b=oU9J3cCNTjqkllaUA1R3JiMDgg30Yg0feronnvDdaagISNBbBf0Flg3/27ltWei+0UFu0ZDlQGLnsWSKo8sApfiehp+oAD2nGKAizhJYmZ+YfcIdEVG7/8wVnqooekLBqYBAijYos+RFAUM4wQcssxWFWC2/aOnMeGPajAd78tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759202394; c=relaxed/simple;
	bh=Zj19ZCv5Ir7jD6UgV8vkAP4f9pq4OHsp6VNdCmWOeSk=;
	h=To:Subject:From:Message-Id:Date; b=kcDRkXBLxzQrhIl4Tga0NDJqlq6sYaMVPPitDTIS/qKkgWfUQblvhE2X9ozN5KAXDWWNO6exvi9Iev3ImM/O/uvz+ygc43ZMJdRyqE2eCuWtHAnxdbr14CuuiJTE/L2lgkscK9rw+6EPj0/mk2SHNACIKHRMs/tnSMK3otdCnQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6vrYXY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6vrYXY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE28C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759202393;
	bh=Zj19ZCv5Ir7jD6UgV8vkAP4f9pq4OHsp6VNdCmWOeSk=;
	h=To:Subject:From:Date:From;
	b=M6vrYXY97KAexHkm180yk6xn/Ruoou5tqo5bGDST9tBkN8CFtHDVqB6JecWWu6dt6
	 x1pbqS8CeInaI5e2Rqpg+tWVEDoEaE0ser5V9CXsPCUJMFSlFODNkwSMs8arKh6r69
	 soDhrvCxzCTU9hUbDfKot7gODVy8HSe82FRBzcRSMiRV92jJohitbbpOg8LDuqW2fz
	 lFk1LS4sIW9khcCv8+kPjIf+sc71XGaDLMcq3sPdQp8JgRPVAZST9tl1SNmh838OMl
	 CACPBsCLsEtgLg4iEZ80uEm3/FQQ+wNoJpFk6B+KAABxSrOpArITcCCCcXyscP/MQ1
	 V1ayryT95AGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B3CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920239369.13586.6208194729889191049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c84acd5d5fb255568fe42f3bf1a3bae9a6b06f33c091d73b228c865e8c7799e
Date: Tue, 30 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759202393

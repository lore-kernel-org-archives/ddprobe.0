Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129272877CD
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767820434; cv=none; b=dCpkFsKkg1ohfwb/1ffCMK3y89uDJvranoKy/I/Wb895uCZludJukUT2TS3KT1VfZQ3VkNHNRlfi3uq9/SiqmFSljU5NTkzvELa5ZerjblIw2pQnfhs2ZwU3DTW6SlvOTHdJ3e3JwoSTevVl3HtuMCyLsJHMcPe/SUukGRpBPHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767820434; c=relaxed/simple;
	bh=AFza22Fhd9kOGvvX2hB9O+WXwTHMrK/LrzwI8LE1mms=;
	h=To:Subject:From:Message-Id:Date; b=qgbceJDv3ylXErYX94RXZRWk9rjOCPgfe7Q/Lkc9WpM+mi7DXBM9AULdM8as24OEHh9zoS8j35JCXtvDPGlDv7JeHCW/7Wzjp8l3y//qGVQ3xRZ85K1UPHMMAa6CbKbaq2LLGk9qmSTKAH994ZAILRqtHepUA/lLWucpB8LoqVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF0K7GGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF0K7GGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767820433;
	bh=AFza22Fhd9kOGvvX2hB9O+WXwTHMrK/LrzwI8LE1mms=;
	h=To:Subject:From:Date:From;
	b=oF0K7GGSmzh7rLiCmt3K5GaNh+keyMlltwOcxLh1CQaVABowehMXIC2LqWVHqX8IO
	 1gZ2lWJe50lgMlve/sizD90YPRdT5tc4ff0R3I/KVdvn3GxVSDe2BkWs22DH4gqfYi
	 cfWxVYF2408B1boMIiMa5ZomjrJuOzQmU3wvL0xZLQQZk5k2pruiPXf+26Iq4+kw7r
	 rP59vYaeZ83pjXhVVW+trTqsXWd53Y5T2ba5q8qjB2mW9He/7LBe5SugK6PEwHRjB8
	 PmwASe9sJLn2NLZ9mtxAToBCdpG1t6Dbn9rWc4bNRtvGIS0Nge1d4nTnB5W3a+CTPX
	 gesawZs4w8M0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9657BD0D170
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782043358.8017.13370534649640666398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8a209a2e2a4b77c3044630c6f2ce81fcbdd757561a3578a38bb605f1c08cc3
Date: Wed, 07 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767820433

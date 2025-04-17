Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B04227EB4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744883993; cv=none; b=UCCfwui8W5KFlNhs2EC7xTCOhTw7y4yXFTyr1OZ5DQQXJ5F0Axtm1bunw8fHOm+8onaQ0M58eJmiGLdyRSj/p1s1NamoPOK4uhp6U2N/PMpaZL5JHkCYmhd/Cf2teNqg3X6PToBJguDxOc0b0eK3p8ayirK24ooS8vF5oxW1tY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744883993; c=relaxed/simple;
	bh=rM5VZHp9dwJ0BvoKgTgIN1xB0rmC6RRC4OkeeFjgj58=;
	h=To:Subject:From:Message-Id:Date; b=gexBEhHVJKyTTqxgNtrWtCD5JTTmC0jsLQXFpYFBBKmZtvJwVR1deivQwk713YVRUELvNaHk7iHGHPk1ExuwbDbiSXSp3EgcRopNrBRwnns8OuoPNjKDU1u6rBsJt2GZYHs9r9x++VdD2eO0AFW01oxns8e5mTumSSGTurT9bOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpWHKNHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpWHKNHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEB8C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744883993;
	bh=rM5VZHp9dwJ0BvoKgTgIN1xB0rmC6RRC4OkeeFjgj58=;
	h=To:Subject:From:Date:From;
	b=TpWHKNHZ1py6nbNZuZVDoHUSHwfuVekA26KP/SMP4Keyv0WqQWW2RY6dfZxP+c9WM
	 Hiaao3hU0C3Agl4ix/4TmLvRCFWlHfrEDhvPfoIOUl0mjQgNMkMK5A5w6rmjSMgY9l
	 NSNNVxz6+mOBZgdbuWtMOxyJ0dxW3ixIPAfwr514XXWSCVg9vQnI9sBBSHvaAaWLLh
	 AmHmhybOFJluI+STSj4GSOjME7lOv1bTMg9uPOQL+5OrM7Efhg/I5v4BdkKSPwjKUs
	 op0vFdNxNOIEplZM54WTYyeUS7kz1G/rMLeZHqzxGi+o760OKVAyDsDqeWPfBe7rw7
	 IP/YtxtUqc68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE57C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488399357.9207.7145715931882412565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205cb8daf77b58cb4668ada6c649bfda2b616224958829bcd05de23b64acf606
Date: Thu, 17 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744883993

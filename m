Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10C2E7648
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757373594; cv=none; b=E9df18x/fWRN2NyMk87kVU4VCNmukcaHBEbpLwh9QOJS4/d7OMwCXOTlpJ4ZWzQuuT4Oas2T+tiYVPzGCqV6N5hiXQ8U6TzO6veXOldcJGD5bbQtlhUw5qJ1YUPzwlaqQIVKSECd5v4UtlPmWxKiVjECT8RVzHRI6i73haxoQRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757373594; c=relaxed/simple;
	bh=I03RR/NpwWuJdpQTMw42qJkwOOZ3dMLsYKZEis+6lcI=;
	h=To:Subject:From:Message-Id:Date; b=SZgfzszqpv0RDczx9JybmyW6MlNIJLEUUSwuNdV6FNaE9qxIoNjRLZKMOZcIUYX4qtU5jUDazNAvSuDFw+ytwtzX2N8pSCwB4/32FNk+2O/CydO/d98TjzwsLvrZf3a8H7MuyMerc4+LJ9k9kBARfgSWYhEslC9FvFJjdF3WswY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnmQqN4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnmQqN4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B5AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757373593;
	bh=I03RR/NpwWuJdpQTMw42qJkwOOZ3dMLsYKZEis+6lcI=;
	h=To:Subject:From:Date:From;
	b=EnmQqN4MB9NBlLNxMqjla6SobIkDLCigyIjOdxCnQwHZId5pP0iI8i03IJNOEUCJ4
	 YyiQMmSTaSk7aWBbEd68k8hPN1t26mDHtiMC61UQ0V7sniNb6LdcASOm+A4E8FbGsO
	 UJM0G56lSFmmJifjOW56YwLLuS933crPkFKgsx8Fo87zYaFEG5Slq4ZmxHJEffGMlE
	 HMK3MAuWvT90eP24xrNntDRbxvufyIAbcGrUpIoPk2HyUuAJ/S0m9wWrngw+0ZAgGg
	 3QtrXDHfUck2SkjqVgCZIIPfDyeaOah9UwewY54O71bv7UxqEGtpUJJgx38cAj+zZP
	 /OpqeFUjvgghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B8DCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737359358.32753.15664801120363869356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99d885605d3600880b3c2c5b0567759f1af2d7176d577b7acc0337da17037d0
Date: Mon, 08 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757373593

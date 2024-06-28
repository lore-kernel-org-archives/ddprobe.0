Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1AF7F7C3
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719610463; cv=none; b=B7ATTLlf26gTvxfsVWmeKEBpP5D6BtVYfr0xMMI9+wE3JwpTI3sn1umVxyJullpc0hq+chmD040NoFYdethDK8yvbqLY30AhsxYWx5X9y/EaB28IHuTfPD08P95UEU3Blyhr0FM4oYfDL+1VXm78KBlGogLw7Nd3gjtk3vL8vnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719610463; c=relaxed/simple;
	bh=XTOFdPp7olf8e7kLGVG4MQe3Ho9PWAenp9vyktpKMxE=;
	h=To:Subject:From:Message-Id:Date; b=WPw3JN1BE3JAXnnHKg3DkCnLWxK5j0ZMtIcnU5ehsYjouJQUbsiRGXwMTVoq81W1PH0SKwdZSVY580yLGSK2okHjAK+uK/6s4BFxfFrDZPy72Th3ghK0G2nVc/ePLslnID+96whK6lRgWfq9hY/kAuT2JRgBpX6Q1o/NhJzRvjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaffKRGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaffKRGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 006FCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719610463;
	bh=XTOFdPp7olf8e7kLGVG4MQe3Ho9PWAenp9vyktpKMxE=;
	h=To:Subject:From:Date:From;
	b=PaffKRGJEGLUOG5mBf8uE3KbseDM9GyrBHhKwoFs9ElFUCRmbeS2zfzPFX1sWs0Fb
	 2rDeqWxQJVynDKURjglegm2e8tqN8j0lrhHYbelBUCLQvIBgEh7JqD9Fv7r7tsS0d1
	 2W7U56lB2XWeMYys7lAK77q53AjzeSMwJ1emEws/Na8JrFvuF48LHLr23TY12EsJDM
	 tsgPS543LlGdKOMmXvLtb6jzbiKyPx42hsoy31ViM8GeQVAfh8WD+76GKMXwVRxCxl
	 VC1BccRoM3cdTCxGnX1A4fvzLAN8ndzpNETlNyuUDOtwKeanns40EqzO8dEThFS3Ct
	 Q4bVPcGFqY/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF9C9C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961046281.27620.8935263550977382771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23337d5275ac091879190a2efaf3324acf5d6a21d94f0c479c55bad047390696
Date: Fri, 28 Jun 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719610462

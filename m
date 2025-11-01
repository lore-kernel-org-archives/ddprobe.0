Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EB741C62
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762009795; cv=none; b=cWk6X5TPyRmViYXnM6fYloXAPvFjMhHcNMeZl8nlCrRpYHpRKXyxuOJNxAcXqARq8KEX58Dil6QVjOAv7G3QSTexuPVbU6dNo767UZ1j6g3PNU4YHStzwTqYNR8X8i50pGC2ldpBtYaP7vrvvcxnxAlUKMxmIz7WZgph7AXCs/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762009795; c=relaxed/simple;
	bh=h/5/CRboo7zAfeeT31IvZiWLWyk+N5UQgqumAzsTt60=;
	h=To:Subject:From:Message-Id:Date; b=YaJZ0j9ENMyQkwS+yHex/v0Oqsr1CkENVTK7GVcvFPX2SLEgCN3sfCk5b5X9abr4SpL5smdbMTC4vIC8TWnbWEyfMdKlkBXtFY+pGkLUZDROLMLy0xgNV1M3lSW/6/sZhH1PiAZJKEtXGUbhAifAuhdu8i5u7AF1gqIoqfU92gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBbzgql2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBbzgql2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9430C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762009794;
	bh=h/5/CRboo7zAfeeT31IvZiWLWyk+N5UQgqumAzsTt60=;
	h=To:Subject:From:Date:From;
	b=NBbzgql2+bVLGOoGEg00QRS5XVL7Ka+3gi1Z4IuptoT6/H9r2VO93GD0wrWmipa0K
	 j0iO6lbcNlvojqBkwxj17l9vSCzM21MsxC8AyFEoQqyE3keZ4rgCC7teqd32yRs07y
	 cUHjjq4M7aRGzmBZtVRm7Y7Zzr8cIgsLfM1yCj1VstorYmq2xd0DtMstlBI3WRvhj0
	 asIKnUoCJ0XEoIPVWkqPNiuaUVXaG3EC/MATG/bbEXg4wyb/RzVswkItsMNpAgOW30
	 P3Jy6ZHXxw+vr76DEyWNjuEOwgPixRh9Hfm3Qe5XHQBNL5txsZd81tw1yQfpdG1ceq
	 HLYSkc396MtnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BDECCFA06
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200979359.6519.4062772210533031932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1861a9cdd32107338ec1c1f66567e73fb25cd38867490402b402396d6c7f2bce
Date: Sat, 01 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762009793

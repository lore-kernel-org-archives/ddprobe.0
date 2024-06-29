Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239A42574B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719665063; cv=none; b=ulx/Y1R9kvgH6e1t9skB77fbxr9S2HkPogkm6IUjUDjH+yp+AJI/ObJsV1zPiCkXoYaViFeOFzHErPWBOrjHeyRoUthY5CQJ0LKLjiGCR9VfpmBwOaLaU8Fdz1vggHez0WMJrVAiUCB5xJh9wyWSDhA2161z/3t0zoKLTlaNNbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719665063; c=relaxed/simple;
	bh=IqPlCbaC+hAuZgQCbYX+f9VLp/VNR55iM/x6N8BX9Xk=;
	h=To:Subject:From:Message-Id:Date; b=N6NC4xWoOWGBOEv7y+9KMYjpro3q8mBq+QOp1XtRe7kdG9Sbh1uR8vgUXCkkBD92uFuWkJHFWoxfDNaAEsb4Fn0ahd40it7ASSa4nkIzAZUXmJg9x1sH9qK+fvbWTUGemwMJKX54kUP2Tacyjc1fsS8NBVwxSV0Yo2WYJ4XQMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saD5PsKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saD5PsKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E36C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719665062;
	bh=IqPlCbaC+hAuZgQCbYX+f9VLp/VNR55iM/x6N8BX9Xk=;
	h=To:Subject:From:Date:From;
	b=saD5PsKgN4gds6YPAmp8wqflUIODfYJOv8eX3wOY4e6z7i5sKobqGb02LTjPdUQXK
	 nM8PeL0mS4pzpT3A+wjjtOB22GVaWTK4ojn0wBWVF6OjpXSdcmb/1f9BEbxkHhuRCK
	 eB2fKMYjcgHatY/IQspZHYb4Q38DIPaJZs6HM/X9WoFR7xIaPfrDcDMyYbjHVRGZw6
	 vt9rfBoyVtJsG6uyvJmv3qYVpMGoTEEfnZwmW4zVLVxSE8I1RoSiy8V4u9wQ1vHc/I
	 8aoUj7lLaWv+DBmQLOzMda+ilU/GDlRccSp7/FpHuJIfQlQaUnrkKYarbi/a+Bd6C8
	 DzOoj70dmbXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D5CC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966506282.16832.16249942980820948745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df909997d05f2e3822e3d2c511079947e8c9f0573c40dfc7c4e0a57be11db282
Date: Sat, 29 Jun 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719665062

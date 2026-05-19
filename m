Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B723DB32A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779217834; cv=none; b=aFLOBhbz0wRLCaII+5PV1GyRKWG1BV/5TzVXHcCK+f+OXU+VtgJLsGh+ojV3RrRyM1VQ3uvmZDqtAkY+6euLkV82silD94Y0gX3kiQddo7NXzY640K5hlK+8SJEfK7LWPVvhPmn8KY3OBedFVgSxZsKM4Kgp4cykq34wT9oGCpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779217834; c=relaxed/simple;
	bh=1mGCPt0LglcAYIYJz2Ptnjq+fCJwJIHIViWrGtir3+A=;
	h=To:Subject:From:Message-Id:Date; b=RLDKbDPXiOIaKPp6uLtfwifAoR1W/oLf5QtqNQkK4QjhygLbzaY2+gZ+MLxcgtP5Ll54pB3H1ZTNCGN1mGX2SpcdXXYoTlc98vttiR7EXSJrGZ5mACFmKCWTjXR/hYzWRaw82BWwiidcmBicdEhjyEiu4zD8YVKdbi+NbTDhgV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqSRvCgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqSRvCgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF462C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779217833;
	bh=1mGCPt0LglcAYIYJz2Ptnjq+fCJwJIHIViWrGtir3+A=;
	h=To:Subject:From:Date:From;
	b=uqSRvCgcpgYfuLr24Mycw1t/X6G+yiSmnie+U9RkPSat57Us+HOBdNAW65bq3LWc9
	 HtdZMY9h+9VRaVhPhQGfjI30Gsv0jrlFeuD2Oc6J2fZ7vqJzLmt+Rw/8R31Tlc/vQy
	 FcSXp6jlvCmE+1YQ/ztkzANgh2N/NQrXe3Cr7SzuLtHtPmj9JfyEy6vlkTyVPV8lSN
	 Li7pyMKm+YmLZB/j3P2jPYq5KDtwIL6qUcPup/7YG6Ar43QnQj00SiecxqPKAZWLa4
	 NK3++droUhz4do+uvipPDOR1iiSD+BXc9PqclFRnRqDQoXCxtQZc7bOs1QEref/x/8
	 Zvr8KmslLt7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B262CCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921783369.19885.499251317197423283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f126a2f1317e2c86d0257aefa612a4184029f0ab4e7396d852f921e4ae7130df
Date: Tue, 19 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779217833

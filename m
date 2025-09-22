Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD982E9743
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758561595; cv=none; b=eZrLuETq0Kt4wUH9b/pkhgHSO9xLnxnoFFabq+lXLbMWP8VnkO3919tmK1o88o4G/Xfk+5hlh85lpPDZSn/8ufxBYt6spuIneAP4IskiOuGqlamz4c8nP4YsdB9duL3zB/IEPUDN+DAePK6bEOaUWkgywzoec4syFNAcHJ+Cfdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758561595; c=relaxed/simple;
	bh=v56/FVhGE+CiL1QSB166crI0gWFnADLOjwe9VoGBQdI=;
	h=To:Subject:From:Message-Id:Date; b=l5lOov9kO/+6NqMEdeQShi7qlwAnzuUfsQaWlBl4kNnTzawtByW91gSr3gx+GokS493XqKCcCdpnNxYGgQm1vcIXRbb9kB4t4PxIm7ukEFdJIFPaSTVUCtm2uWIEsgZ+a9dMu3Y8eTyHEO5U6B2e34dzPTaPHzad/3J/UX+AunY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnkm9Sz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnkm9Sz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE97CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758561593;
	bh=v56/FVhGE+CiL1QSB166crI0gWFnADLOjwe9VoGBQdI=;
	h=To:Subject:From:Date:From;
	b=gnkm9Sz+B3vzppX5oFMI8FAFbbS8rSZYpl2tLcpa0p1ZJDgydSMvARdmB2XLvqTsj
	 vFnzkMU6W8xoudCKT8INRK+kp1Y/9gJ+63jVAMnTqmRkGRg7znwrJTz2RpnsytTqPy
	 2byB5khw7Cchz/axdAbeYVwX3Z7D4u1nStyI/fUfmiGDMRAJGP5BXiDRYSjC5kVb+A
	 vxmFtyN4BmoPVigoe9YbyU6WvimKhsiuyVZ2cLfSiF+f3Hfno8KSGYXRMrV9W3TQq5
	 snpKzQ8O0ZsgoH4V2tK8/wLV9LbsFmi8Uyd4zDDNJ6KfgKj/LgcLC+Oudi1v6yA0qS
	 mzEoXcURx7hRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9990FCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856159361.22919.6844267129568113266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d95a34f8749333966238d2c14b80cc17c9e78f70b1b539750f475a97232e82
Date: Mon, 22 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758561593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6951BBBE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751747394; cv=none; b=Ca/7tDnPlVeSG4SR5U2FM+uGugqAlU3/9qEjRCOXerzm/zoinr0PRh98SbsYkCYc/QFjyXd6jMoesy37bK//QHHxxkBdhbIQxmAWsmAziIVnyzMbiuRVQOniMnvc+QdpE+6fAaGTwg3OAZAfb0MsURMDE1aPHo5jjwNl4/Xp4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751747394; c=relaxed/simple;
	bh=vzVTesFnMzg/i9QqBB2+sFltYwyGGZtPmfblRoG7M2s=;
	h=To:Subject:From:Message-Id:Date; b=qea+uZNwvsF59aOQHA6ZMpQm9RpgSx4ZV7FBeL5MQveaFYeNX0AVbMN8uKqT6XVHOUClkEW4pRcJ1sjnyyInxY7eysJA8MGs5zE7rmCBAfp30/Mo7tXLUrWOyYAasKvCgV6YSEM597D5hbX1EXrB1bQYAPUXiag4AQSTAlUa2sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvwZ/gRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvwZ/gRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96BF6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751747393;
	bh=vzVTesFnMzg/i9QqBB2+sFltYwyGGZtPmfblRoG7M2s=;
	h=To:Subject:From:Date:From;
	b=bvwZ/gRD+ouO/HWRJJHEeFnVlg7/M+MCCxJB14iGBibwwa5ZI2ZqHdFWoru9iNLE4
	 lla3dP5qSSimzA0jwqSLsmQ1ruPUeb+6VGIB5lTbV0ZZStQL/+Crp0lgybWY2y1siV
	 P7YLnlSvpfgh3fIFU2XbL72uDTygx5kLwe6OsbJl/2l0eiwgzkVoLmk0axuVZltLj1
	 J2nUngTgWpwqHa2BYtDwMB5VOA1o6oxI2RP8m2YW84uNonNdnPwKfqoZ0IDC6Ab01H
	 ETMPQUUGjGoW7v7S1aph8Hw+6cX/B2mAgdlXW9Ur2+Z/V8yBFdb64ALrZ6VTdgv/2x
	 8V4qxAin2o8+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94AC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174739357.7428.12288968933940811250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec3affb470dad15ffc6088fe3e121f96e8aee987da9a0591dd7985d6edde0cf
Date: Sat, 05 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751747393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A35F2C1A9
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715638343; cv=none; b=kiF2xxeUvGpS9Vi2jt76yzmH24K3T+BI71NDl23lA3GaeyVd6osbRgNv/jD/6+dm8jkCDmBUJa9VyECvDorHSdLK2qyjHUXvY29NixhJaBWWIiEwye/s2IB+ERzJ4DTSULnjKOW+VhmVCQnTnR5rrlr0CcaAk2iiAdSaqGr+gpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715638343; c=relaxed/simple;
	bh=vNc5VhPHmS5aiDqiH6sOCa0c/1sq4lxvekyyt2bMf7Q=;
	h=To:Subject:From:Message-Id:Date; b=sLQtbJx/LHwgHyVuihvIYZV+JRsGezxrvLBm8vJ6Dy738BXN/MMtkknpNW+dtZgZCfD2OwvXrkPu3r6ayz1A0EErzG6jPWG0yEYnCOBHRoJ5mjgPPiD+mGqUy3mUnCI66eDCQ/KeVHXJVtFElLsLgRwiDvP9CbZfGDiDi0Jlwp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdsS5kh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdsS5kh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C928AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715638342;
	bh=vNc5VhPHmS5aiDqiH6sOCa0c/1sq4lxvekyyt2bMf7Q=;
	h=To:Subject:From:Date:From;
	b=cdsS5kh2b0r4uqe0M/i0gTB/3BB07wewcHGfRZSMsrYD2isQU4QWnXUYvnVRfA6Nb
	 Il25LB6vRjtsozWbElo0JBGTyUQI37EoAM4FMX8IXurmMOmifamwVNSPZzt9Fn90TG
	 j1vLmt5HiMGIb2yt8Hpvo8V7RQvCs9x0BLRWCujhl/Q9+cGDennqiXWti7hD6WdD6p
	 Z4C2I0GKyosg/7rORPA43UNI4zpGBzZNDqp72A0ja7t+wB8OV3n1xAiaRmmnfWTjwr
	 ceU27Ifj/uCdLODAULk8ecTJp9H1jpjgeKs8LTW/twi3XYIQy+l0fUuzXZ4Sp62MHV
	 HTUrIgxUNyBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98F8C25B79
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563834275.15568.9698207108950268342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ab6502ac21e8afa43fc01bc79aca09fd50014357d7b8c9c8e2ffea0bcffb7e
Date: Mon, 13 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715638342

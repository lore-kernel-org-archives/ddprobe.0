Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5355D322B8F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788599434; cv=none; b=G2PRz+xCVnHKkwhmYncVBfNf+YHh/e+ZV+bVcdXwhFLTKwAtlinALorVRSKNd1UoTK9jb3zOAMIFmrk+GnFMj/0oNSDrje7SwoqEcK8YBmfvdMGn22lMIn8dk7G4SHXL9emkUFZPeSErzqr4k8Ky7y76LAcCCaYsIW0ecWUyXGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788599434; c=relaxed/simple;
	bh=hptTaGg3Iolb8rZr/QCA3a6DWX2mSw+D5TLW6NOFySI=;
	h=To:Subject:From:Message-Id:Date; b=Dw9eWLdkshImG0zajgAF0BV8NWYqCOto+be1Ovm0xar4/vfZVKrOWhxO1kPtcsoSLwltWOCV8kGdHft95QOi37w2oNQVA2tvXK/L6AJq6P+bvAO8vnT9n+PgRDZixpMTFrkXFTW9XtZDT7LzenNHZlE/vLxdfDE0l1QDK3u+yTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjICqdxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjICqdxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F20C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788599433;
	bh=hptTaGg3Iolb8rZr/QCA3a6DWX2mSw+D5TLW6NOFySI=;
	h=To:Subject:From:Date:From;
	b=GjICqdxLZH+IoNOS/Grif2bmm7Q1O8e6rYV0wb05wSl0Ox1rY43bO6LTc1jYN6Brt
	 TPsRApiLJDj9CmFl7m2lOvlN6yMd+/RBZSV2IQjoX0Yy9EKNZuY9Z9Y0j/X6d0piS4
	 46xA9OEms3Ay2wjHjB9nKI+PXgrCJGVmczfEI/9S89FkPWWea8nax2T1V8iQ9GOFAC
	 sFVnImcSB+r5VZFn0dB1vf7hWkhNuuNMj9+jIaxYs6nO7BMFqHVPvGE8JrsEExdz7n
	 5S5/x57n71trOBM/W0nUlzOOL7DemWDsgr9Hl39c9chHa6mn70oPKUz21xFW5sG+M/
	 DC1jvPqwd9AIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B091EC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859943369.14329.1503443175756974090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6291364e94363a85420932c4b00cbb383d9cea100288c4c9659fde8a12b5448
Date: Sat, 05 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788599433

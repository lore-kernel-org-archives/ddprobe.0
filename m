Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3616C26E716
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756898394; cv=none; b=LryLmFlvjRz7hXI/bzvdAmu7T7BJIy0rlJirGhhuyWz67U5khnG4HSofjAJrEZEDAFoknhhTc8ICAPdS3zZhXqwOB3+hdr7M998AEmxwQyZUThZXK/n47hPLItINU9niT8T1e/ssvLvn9SfpQZn0Ek2+3qJHXbwFCOZfHAz6eVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756898394; c=relaxed/simple;
	bh=d0fh6JWHGVspZet5QT6ICzkzxu/t9tBc/8R0T6ysiCo=;
	h=To:Subject:From:Message-Id:Date; b=iJUa4U97cDGoYU7gNdPIG0RKQNHEHcpVoXVb4YnzHSriqyHTjEnh/4WfGwJVHvgqjw26HZypyo3RS1L45tqK06+IqA6QtxYZlLbeALuvKEseDlU/glFlfAyTSbQuh1YvbRNeKy4Gkt7nVM67jotYz9dxgO8GE3i0ciOLl70i3a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqVyAODh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqVyAODh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3293C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756898393;
	bh=d0fh6JWHGVspZet5QT6ICzkzxu/t9tBc/8R0T6ysiCo=;
	h=To:Subject:From:Date:From;
	b=gqVyAODhMbPqyXaeDqYZtIPJsWYC2qI99+VgenVfVftSyzxD63juFEYHeVxwfO+8f
	 aeOsu4IsJcOMt/0/GoWF5LXMAqol0Y3LbynbDnSSNoojiQgBw4B1Qh6XsEZrXnnuUT
	 bZJBm7FPEnynFHh46PuLILTA3//UKk5jpcayLtuCf4Jkai7qWWTB0k0tHlzS0k+uNl
	 5u0DI6DylQHA58fu3DoinqWTVTWPIdz8H1uwP7oq2DA9SDOYY0N9bFbCnUo46Zqce+
	 OTR0I4ekiDDNTty6dQ1wOn74ZiGsDfSrFCVvBaJ5ZHYMQtDYHTfBR1hqjRF7F95UFh
	 pEd1i6JRiyp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66ECA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689839357.28108.17916283460738222071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e19fb3ca476ba73fd1df4f261eb899625bcee076f7c8d083032a0a03ec3593
Date: Wed, 03 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756898393

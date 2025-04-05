Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A347625
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743887394; cv=none; b=aOMfMYhnRJP4uTYVXFPEq2FLkPA6Lfem19iw7meKR/iQEsbmWx0Ux9+BTXmajTsyRXt8WjPl5TiAndPUzefPp4b4PbRCMzRmNwQUxfSVp+qTmRqq9BKiCfBhC4j7lHRdSSpZh7MSM13PsgflE1S7gMQ8pINtl0shHO5CKJMfOZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743887394; c=relaxed/simple;
	bh=W6Tk30QhgAn6Gjw07qFJWzGU7+OC98JGuV42vQqgqeg=;
	h=To:Subject:From:Message-Id:Date; b=PAUne3LJxsmOKVfU+z2MZQAzSFlaG+BULy+oZkBVoZb3SoJlTrzJ+sTt/5s1YJdzkEiAIn6lZlYbWaSMAqwb5IxaO6+Z2PjWQvzQH2GjAUya+LiLy1+cos+NXWAWal0r+FddJHSRjy5p3YPaCitHRds5Fi245UNLkXkCBnOeJyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSG85Y6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSG85Y6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6747C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743887393;
	bh=W6Tk30QhgAn6Gjw07qFJWzGU7+OC98JGuV42vQqgqeg=;
	h=To:Subject:From:Date:From;
	b=jSG85Y6s82kPqnYcvAJX2XhvYrsWsOD7nVxeWtGq/NhkVGeCYjWZTpSHVR6OV5rer
	 m9dG3O8+I6a9mtOSDOy/esZbYfdLCPK8BaJ4eF1ymrs6zqYzlH1ZZ5c6LurR4n+74s
	 Bd6QS5aSQwDVczzro7SSSIvM/56O2vGvi65XdCxwwKDUGGWx9ybBHEsv4IMrvL/SK7
	 fLqX23UXGu4soaLnT/ivfyF4/TIqxm99UdF5bXr3jNQ5tX3MDJvfAdUkWE+pWEOzxk
	 Ddwu9vy9fLpXc8gOT/fZiUc9MPw8BRtIuFci64dE739Yb+NExJMs797Rtpzuvjsvzs
	 COZoeLERz3oUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08EEC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388739362.30833.14592926876419305719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f432f80d32020de17a5199649b654b363e5798f52dd361d71b35dcf47f00a86
Date: Sat, 05 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743887393

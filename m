Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C95D635
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758246594; cv=none; b=b3D4o3ts5BdTeDf47rVtsrY68LGdyHJe9rCwgLjKzzJ39lIVrDPx+kM1QYix7DsrHJEJmL1cHkUwp9+70z59UkPK+j9qfeHPtWhgpO9UIGYMp9EhXfRQ3LSuC+QT5Q9mqkI3IiRKWCuLgey3udy6B63p8IvS9HtYS4Wm5+gKdJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758246594; c=relaxed/simple;
	bh=CpUmAaHl0PTPlpRdV9mNANJZELVgtG1O5JhXd5G39RY=;
	h=To:Subject:From:Message-Id:Date; b=MtFONUE1fRjBPZp+3eSfbrq/UUSu0VWvEyL1slUnCRTEeqyAKKwNMk6lqEKAK9MDdat3SU68Pv0nsdEEF0hIQPadLuJjfR0PbZAhF36FFX5vmtbHuBoFMDyftF890y7u3jXxfKU4uOrAA+YUDcPZfgUaIJq7V3wRMSayxvBcBVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgMDqUfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgMDqUfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758246593;
	bh=CpUmAaHl0PTPlpRdV9mNANJZELVgtG1O5JhXd5G39RY=;
	h=To:Subject:From:Date:From;
	b=MgMDqUfeGCqnRb/tb5WqV0GzMRDbGvO/FWlpi0mt8r8WLswA6i/bXzVP4N1aQmdUw
	 oW5d1uOH2zlsjV1vWx1yP/4wOh06Xu+yp787oLSrkpejllcEhQK87z6YGzZX2MHeOj
	 KM2KIZXqwlSc4S4/DT5FBkcu6hVaSkyGLY5QVifKEYakxeSRuR0bp6jeseTgpwzZsr
	 DeY7HNR5Ecni1XtTO2CWC4I/cW3IO/oe2CxSUdCKD4cNchbqFlLxzG+VgDsH+hDsA+
	 7AcJcJR0d+u7JM5ps6tMLag3GAWY9wJWwdWLFt5xxmpFz1vP3lWGQvQTVD9n79tODb
	 2y3mdZoyAnNoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDFCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824659359.13207.2138444569042398227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b87a089bd1c31e116f3609cd16473a2a8d473204e94e3dda965f0bdbf1c3087
Date: Fri, 19 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758246593

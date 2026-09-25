Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF239185C
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790350234; cv=none; b=moi76fKNjxrGx/JsGDaXgjkwc4TlzcuNdkce/PCoj1CuV8RzaYHDMmpJQK0OuH/lQJoXRjP8X2HUkMlJ2wCDpLIjWiHD8DXMsAvZWlW2sManctPoi5BpA1mAqsRGu1Gdffvq7xY6Iw+m2wK888motIxXaZd9p6ck/cO9PqrLPw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790350234; c=relaxed/simple;
	bh=Juw1AK8P6x1TfiRMG3Tktv/w4RFkJ08yM3nnm2tyNB8=;
	h=To:Subject:From:Message-Id:Date; b=n5rvdbnEFE7YZR6s70Osa0MG/NOIu/KOLnNutg6XVQYnwFCLwwWz5osirAnu1yk4L/mGlklSnYyPzGGNO9I5XIMvqDrhb9iIVt4cebHJNLWnXRWoBh1kQhYJhBWxfV9xwKhyoYEHQ3jyZNKx8Gj9+SHnIPciieP9uOF8Lq0A6Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRQIKEsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRQIKEsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F77C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790350233;
	bh=Juw1AK8P6x1TfiRMG3Tktv/w4RFkJ08yM3nnm2tyNB8=;
	h=To:Subject:From:Date:From;
	b=KRQIKEsp6+xwd4lAqfawk8KU2fhFrKPhtuCw2NAdlT3azX4NBCAgpG0GOrUZt0GRu
	 oYHLE3LdI8maMkzPkUbVGEAT/z/gyzq9mcp6vGlj+M2fKEWroOfYON4DwCphxOC8on
	 Kxxjir+bO+CjNYEisDCLzxsRwYJrQ6R6zKQB5GL2yto2Gs7KqrBTltZMJvmaOjBvM6
	 2CT2ZtRBtICbQvVf3aI7xaAk0r3jP8OwlkeBEcmmKdPnYoRtMZCsGuIU0KSLMH9sZr
	 tEQAV+Ti9FWh489FzU7isVHZlA9rBL6r26rucaKa4rtdh05HfXJMhfCztxHTfNZNMj
	 xr0ccSvyg5VTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3186C98325
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035023372.19945.15639866935044846651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9eca717c591897e53511513e74a90ba05a18a960828f1863d3aeb0a2c7221ee
Date: Fri, 25 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790350233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6A22FDC20
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775813854; cv=none; b=SH9TFqBWxp4x3UIwcm8rmam22YMPoKbFS9qIJTxsX49TUkAxnCR+cXwRH47hx7PIRH8nf7jXVLv8jK4HS5DJu5wsr9QfVPuwzethD6rnUa5NgCgTn13KtW/A7LQ8nYO0e+Q3D/MN/YDjLFBM2JJ7zZwF9g/EwlLaBxRknH9NI4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775813854; c=relaxed/simple;
	bh=ecG1XigqwqQI5/jVF0zFryl4EfJ7JK0Re9hdtIwpEBE=;
	h=To:Subject:From:Message-Id:Date; b=fKW/t4Wqld1orPIAir/b4pa3uOHhZ08ffB74kvJPWBp38qqgbFze0fr078bCu7IYwRayeOXpqPwCPUS8cv96yLJUN7ETlwnecpj4IBgLQIALN5K2B3zhryHBMKxsoU/u9dEZr7IMg0qhg5JNWCYWPWYa1vtXo2sAB6TkNTPWG5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz0WMOfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz0WMOfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB9BC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775813853;
	bh=ecG1XigqwqQI5/jVF0zFryl4EfJ7JK0Re9hdtIwpEBE=;
	h=To:Subject:From:Date:From;
	b=uz0WMOfGAJfYiw8+YrZ43zGyDt97X6GRWEIJFfx1u9p0piG0qV3joE+TAltpvHKeJ
	 0E0wrIAOyaW6JD7a8Vr+ynVKIEeyoiAKD7BgGufKy+znGP/sB1vFKc5TvG+YAUxYfJ
	 +005t5TgoLbCGL9mto5CZFAQHUmL616mWED5vGJnR08gZfvjhxujoF/OrbnJy0ZV5w
	 Dh0zHjddi9kMauR1HFxGcbURdS/J6v8kwifRMhsbcR3ck5ai4tXfLH/aw852KpReKt
	 ji3RvKLpGKxf5vl7eVXSAMlqh87Vwk1RolL+aQhOmUlZ96WvJ57ah0Vz3RA6XfGAv0
	 bW1e9JR2E+GcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9984E9905D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581385368.30849.3857675845918215233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6df0bd99ab163f148c42c683239aa7c85d87cd1524ca33793ed6b86a2eb9870
Date: Fri, 10 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775813853

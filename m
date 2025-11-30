Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBE91B142D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764541974; cv=none; b=rSCThsZ6BQCdR40KN4/N3tTrd4K4VWErmL6mZOUiWEn4AsRbt6wQsqLfSBJhWxeL54CbjCAYf3tr8XX+iWN7QlP/+bT/DniVN0IAgTtjJpgF0D2+/+4hem0yj+ytaSPkdthIVyYq1FQKnJDQpLqIqBtdJvXsc16qCln5d0daLuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764541974; c=relaxed/simple;
	bh=2L78UM2N++jdA01nLUT2UplX7kvqtQ2kGHHRinXZJw0=;
	h=To:Subject:From:Message-Id:Date; b=FDIsLakzeYeOcxrupeBry4GKsS+8D0Ibdtqr68N5dIuCN4BQfeYETpjDi5jJWDYqZDfQgqh6eZjcrOz5SZp095XeTPVsbTxCp3EGT2bcdTV1/+gz5CWdrZOD6tZkJdRyvJwbsUfp2y9G9jw/vBXyMTtrrCZtM0hy3FVfQHUHaOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHU997Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHU997Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F8BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764541973;
	bh=2L78UM2N++jdA01nLUT2UplX7kvqtQ2kGHHRinXZJw0=;
	h=To:Subject:From:Date:From;
	b=dHU997ZftaspnPdFXter0je6oSUPwbJeCbsrOf8lofRXGj1xD7mnOvfbZyY+09isJ
	 NkVLH/GZmibJVQI4J++EjBhCce6eb5AdZ7fFrPe36AQuD2/ASahQs3RQc9D136TYr/
	 yy2X06TfAIpA09YA1oxITJUtGy8cGhMOLcWj6MAuvcnE4NtOgc45NHuoyZuaVO1p0X
	 lypHC0MChbU8RWiD8/VrgUN+FTKBR2DTA/DO3Jw+fvyhRE4gA0zsyy7icQ7SWw8E4T
	 5vIwV6A/Yz2wI0IJCSboIJmrkrYABZNxSdW6/qZWYbJN7gasKbempj1gtJyknvO4FI
	 KR56bssELcSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD8CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454197359.14582.17765034392815737981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c13628ae9507f7de7de71df2d6112bff443254c1a21dff0e57d48dda0ec352
Date: Sun, 30 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764541973

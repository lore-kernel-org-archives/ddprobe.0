Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55107849C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759624794; cv=none; b=VghRXYGckKzORMNxM+43F/Fxyjkob7iW+t36fe5rQrZ7En0raT78YxCd2sipYaPR2oXMx0t5gJkYNm95WnJcy6sRcdLInlTDwdCg+sRLiSk7JKI3SL8kTxXcnr1Ei1b0fYne7dRTf7GlwFWaDMryFBEPejWC5IbCzT0jQUM5jK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759624794; c=relaxed/simple;
	bh=AfMA2IvXAJ4BGwiYDUYPxONqXYXzApint9/gjw6Ge/g=;
	h=To:Subject:From:Message-Id:Date; b=EfLYXHQpXDRRgqleK4D5Iu7Hr0hLXR1/GqIH5a2Fr50uroHxp2yMQYKuxPckCncvlj4YA+b5P7D5R/QJ3xrzGt6bfjFQsIFwpGIwxKjMEY8pMFyT2iTQMrekPFaH0rZkMUt3r2LFBgy0GuKmi78mfLo2aOuouMVx4nICOWZTYUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNb1uYCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNb1uYCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759624793;
	bh=AfMA2IvXAJ4BGwiYDUYPxONqXYXzApint9/gjw6Ge/g=;
	h=To:Subject:From:Date:From;
	b=ZNb1uYCIRVBreS9xic6asHlDTSfkgH9RuVRFcrd6KfxFPoPQng3G+MBy1inEE1Ibh
	 0lmE5GcgfRyAlA7cLsFrJhLgJK3Don3L+lVj6OdLT6cuZeeuBRgiDE72WeSAg4WIbE
	 50Rpa3zMgjzoELbEsCq2LTeLQsNxTWCs5VtvhxpuqB6MyAQwjyMeK2/Tb4MT7YKOYf
	 5YTRUh5zHjsO5IxO+OH45/t8CgBCpozXPX4cJQRQ9YY0vEdzPH+Cn6WD4/u/wdIhVH
	 /mzJaK+I01Tv70Vs0uDWIzn3xKandvWVL9/933s1Y6jxcqSeT2tNyvyjZUcOB7gVXN
	 XGC8tuxdVSCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DFCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962479358.11949.10279681781135396281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d783df160abdc2f4fdbe417211fac6f355f912f7c0d3d5d6f6f80059ac3032
Date: Sun, 05 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759624793

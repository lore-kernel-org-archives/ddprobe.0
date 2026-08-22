Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648E5388385
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787440834; cv=none; b=SSMTT7fODk1iZHEohuk9kkCnPdXTYUeJ7vwId46wUf8laJX74v1wNYtHfLv21LUoYn7mEHSrlUN/EbJAiba57Oead8Kwv4ILvxN92shV+0/EwdNl8fdc/ZZoYOxiLHxnZt/7BnbJJKCgfRKadmZ7olnpioct4YOYH5SfkWyvCUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787440834; c=relaxed/simple;
	bh=ONN/NldTjf91NUKlw5DG0xjgb8Rr6WyDCcIHRs08OqQ=;
	h=To:Subject:From:Message-Id:Date; b=sGC0nAh5OE1BagDALap3I7xEVTiIbIY+Sc6P1wx7SB8qKdE5OYFwLIhcy9K8o9W0td0+bT2DKdkJqPPXpofyKyv5zPiAcxUSBMkhFW5NvSvzF5iDFY3oJfK77EpGc5Pzehl85GxwwcFq1i3QIwuSENnHIK+a/69cgM0zylNy49U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIt/LWJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIt/LWJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787440833;
	bh=ONN/NldTjf91NUKlw5DG0xjgb8Rr6WyDCcIHRs08OqQ=;
	h=To:Subject:From:Date:From;
	b=CIt/LWJ+5o8odU47xnuJIq6maWuJjZcUeGW6VH+fgqXVrwLcEMojQrcdOsX7ZLEPG
	 Ni9g9wHXiZegpvbCFpm96pi0v4E5uBi/KnLEdT++pZdqMANRpCT7PkVenzgAk7HHOV
	 ejIJCmrPHxlQVB6bjnxCihro/LtOSASqKNvQDd4biSDjSmSQeEIuo6aIYpavjq5LQw
	 h9H3wHKVP3gVwFwv+lQ0LcnXRrlFCvmuy38QLGNl/PlRq7WriaMlBouZ9XdPbGj3D5
	 iyhZnY2hKhow1WfgQCXKovL2gELSJE8jgzG5AqnUhlpXnxGJZzs/yzwvcwgWeUzvX4
	 8vVbXrx5r1rOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE090C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744083369.2890.15085650090913440046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98f92951b7b48a6bd685eda3102a61e9c1d91391d203298732a31c08ef7708b
Date: Sat, 22 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787440833

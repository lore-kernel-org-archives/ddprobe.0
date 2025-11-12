Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C810134D395
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762973993; cv=none; b=u60FZzppq4kbh9qoQvRPjjOqRee5eObv/PimKpp4F86VVzB0wjonfo6sM9f4kQ8WPd/JM5yJLBtcwXSWL/Fml2uFjHZNuSe1Zd9q9RkLlhP+Z2CrRAYkXsNPYAuy64EJaQ2UabGyIbTDv8DMY21iEvpi65oni7i5gPt2SNGhexc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762973993; c=relaxed/simple;
	bh=eYb6sR4FknjHZdAhxeNCVINcT//3dBGN6lVDLrFcEUo=;
	h=To:Subject:From:Message-Id:Date; b=FYr0Qgg5ibIEtcK6brvLk74l2LsspdKQRhQxX87X2zoga5C/OZdbITaNHA48s21UtQJFpsSgI6tOoGnpa0jcJYj1rEyMmnCOqwdgSNPpbR4S8Sgt24mSHHwZ/6NVB91sA0/Cao61VpELmPZ5MQ8xMw175/rwk8fDDUDz0hQhXAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAQsQDgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAQsQDgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BE1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762973993;
	bh=eYb6sR4FknjHZdAhxeNCVINcT//3dBGN6lVDLrFcEUo=;
	h=To:Subject:From:Date:From;
	b=dAQsQDgbhH13pDS4Py4NpH66b1sdr7ZNP323C28H1O4Qw14ZXqt6iuW/ZClpmS/LN
	 a2k3217OopOCGxkSOa4cY1Qv2GqSeVYlOauys1Ya3NBxbTDLLDtqSZPS/KXWuDYOAB
	 H/itGhGrPA4r90nW+J+MpNqJly3tZSMAYdFzpMkUGDgMm6ka/H9h75+jtwnAMip2RY
	 E6sPwo6q48IWgYRAfbqJ7E2GhycLnUFu3AKsDsrtHfHFUWQ4DHG89JQ3G8qyvzdnG+
	 UnHrL9wzyYLVSaZyzELtZzSOJEmxO2ieU0IhbEF5CsgBg/9k6oyRm2LKPRIe0nRh8p
	 p5EkGQW8p5XKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C7CD3438
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297399358.16321.16099579901795855734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dd9ef9ce197798296c57fe72645846fd97788b6598edd505c119ca8801816b
Date: Wed, 12 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762973993

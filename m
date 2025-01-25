Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480CB28399
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737818754; cv=none; b=hyXZhwsjsxfX8lD2m5fJ5yJrjVLBT2kS8agNPwMdo4uZQdZDRE6Fc82nGxPjR7JUfFeG+rcHyYQKTsPLnUXsVvEL+T4ILur2j3wxTA5Cx1SqtvNMJ7dgGBIwWv2fgLJKWpQbKFHmFUiQEYjzuivb8W9pg0Ibg8XKd4guFA78gDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737818754; c=relaxed/simple;
	bh=gcb+G+IQdD6tl7twyn1tdWvp3byGqPRsHuESj/Lj2TI=;
	h=To:Subject:From:Message-Id:Date; b=WGm4oQ/v5lYSkPiVqSegy2f4cmuZYGfLFmZOnF7VL+CXlqfXadbJ57kRT5u/E8lfnyKTU7HJGp+m/pKAoOUEXMV+mTwpYhMvqGH8SOwo4/PsFUdf9Wrx/hBCh2ZeH3oqxkMPvq1cUDeyWFKNmrAoKozema9Hm5SfGGtPYg5cVhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2x/mvCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2x/mvCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC77C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737818753;
	bh=gcb+G+IQdD6tl7twyn1tdWvp3byGqPRsHuESj/Lj2TI=;
	h=To:Subject:From:Date:From;
	b=r2x/mvCHZUUoSHADct3sX8is4ybVJSYhS2ATipWMKg5vzty1v2wnWb4h+mLOqdbKo
	 nlf5X66Y16BzHSMFhS4LvwmZ/jTIoP/GaUexyztW9CqwbZcD0yjU4WGjcqXzJOH1pq
	 FgVY2v3YzjNOdXxmZmP3qag1vHprM3leYkT2UKOKlEuEWMVdEhKyZbBHisjaJQqQJy
	 U6zEo3vSL/LKaCgHOIHgD7AO63RSbGo3Pum1aMtpau40zn1t3kti4QKGOoSQtRGhnK
	 Rdnj48dw1zWxhotJqwWp+cLYs2xp4xmOVgTN2+mtMvOM3CyVlYY/cmqNjeE9sInJ5k
	 qgVsjNmYhUTZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0DC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781875358.23620.15425047424683525166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcbc46cfbab5a1a1c18131befb6c8a1dbaa1cbe8861aef32c851fc2c95f7a64
Date: Sat, 25 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737818753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6629482C3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705959497; cv=none; b=rgZ28/KUFAn8BZz61EPLFZF2r+x4niavfeNHeL2SoC/XALXm0nZ+2n+uVpN0RoXIID/MOYYC7DrSRct+RMMW6K67lHsQUQunu0jnR7eyUYajoYuva6hfIqcjUOYNNiYaGX5UXHMtwRCYtQVes2H9elwGiCTnGHJdHrKwS9GcPa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705959497; c=relaxed/simple;
	bh=5lmaptc+22xlKG24RJBUi9oJ8QhvacJXpMjeo4wJlZs=;
	h=To:Subject:From:Message-Id:Date; b=BnwntP9i8l2Tl4QbFzpYUFyk7r6UndG2zTM5LqdVlurk5EEbsmKTp1RzTmdbLW61QE9xS16Rm4vevs+JhypjVpVFiq11+fQU2KYZL7v0xZ+4PVe2G92Cali4YjMXAr/bb3E063TDiOZafcXaoLelF7qV+rXk7yK58eaqaA4q8bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ4G5uZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ4G5uZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792A8C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705959496;
	bh=5lmaptc+22xlKG24RJBUi9oJ8QhvacJXpMjeo4wJlZs=;
	h=To:Subject:From:Date:From;
	b=IQ4G5uZeflgthCxbYMfyL659QSeBhG7PNLYansYCsw5GxwtIJ1DRFdZVsGJityU7S
	 KTr0nCDiwRRoJ5KI+z3t7x9ZnbsAiUD2hzni+/EbxYEUAeoxK6HL9JDZNH7piUVgXx
	 Cnnql2YDURUXf+SLf6hF14M0i6950dL59Bvpm4IchNMQDsdUyR+0qhCIGGl/Gvs8Kz
	 gKydSnYHSq6MUuGfoNLvdBHKHaZwjolKphu72EQ7uj1gG5dSiNS1SY7PLkadr4W2GQ
	 /SWVDv02zWuOSzSf13A0C+6eAiW9nCibvpJivRJGXLIwnJ3QQptrz4+AD1eBoscx/W
	 p2Yk4ydnRXW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F262C47DDC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170595949638.667.4242666608694282032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916b29c2c3fa440a920b67b284e96ffcd984a3381bd408f54b2673f7b892e41e
Date: Mon, 22 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705959496

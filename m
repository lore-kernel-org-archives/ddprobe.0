Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E433155C8F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720695443; cv=none; b=qNre2XSv0rKIKNGuegTK/NGDbKI2PGGYcRf6faZ6kFx1wCDNINmebGbzckXLWJ25VFjfYVDiK/Al7JwszIIiy53dvfG7oV51yFNIrB3DwSvYzwatEQbnPiwpgKEXouRD//aD8PnxZ7MBGW9OraNwEXtlYQ7iwVwzS8YIaqtfJ8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720695443; c=relaxed/simple;
	bh=PED5X+/pzc69ZfzXMVMwrwZ/TQ4esT3SkAkQZn8BDiM=;
	h=To:Subject:From:Message-Id:Date; b=bWQyxxxWiCqBO57Yy/RvRmFJZdNPe1WPFAdvD7IxmHr89m+MvlEGioVTzW8KKBrmiADeWpTYar5B+B+wNgy4SOKj0XFhFpcoiVyI8Z4CI9xl4Y+o8mTqXLaTobJIxqTr3MeJCQT7P1dkqY2SxXyCnlvSxbHkVpiUc402jTPFVz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyNuUPNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyNuUPNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72EBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720695442;
	bh=PED5X+/pzc69ZfzXMVMwrwZ/TQ4esT3SkAkQZn8BDiM=;
	h=To:Subject:From:Date:From;
	b=uyNuUPNMApokTRZ77CiikMi1hY13hoeIsTF0ZrDwoiPZiwrVHWxCrgt4u3JPiKjFo
	 TbyLLIc/sk/WWp3iSOxe7sDRoJyLSFAoBxJRSmiy/uvrt1VzCu3jrUE2CVgF8bZGvC
	 aQ3AqA2OD807Om0vdjGsh16kdK7u5KVUfO+qUQIFNEirkIzihW08qgGNwqwdbYOp6s
	 OeHRV7mq8ofKV9JRZMHwEvC3rJVKXIpPFfdY38NcqL4A1qNjw3Pz2ziprQDI3U31ID
	 oI//LxAuzKmemoZg5aAtCrbzhZSEukAsdMU/lkSu/9Bm4hjT3MLO5kHBuwyEJdMFUy
	 yNBUT8G41wzzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE34DC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069544276.6405.5233687108748512405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dc8d3b2f64c0b35bc8940a5e2e566336c949b01e82e1dcabbffca50574681e
Date: Thu, 11 Jul 2024 10:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720695442

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DBD23643E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752705594; cv=none; b=Yktd/e4O3ucaFlAebDSS5cxtPPFsvf48Ajw6GXBDqv9z4Lr4l0MYRXl/3smWncaV69olL9DTUEtwK7OcXtXFT+A5YkeF0Qy9XbZ18E8WPjv4TTwEACJx0ZdVZ0APuzHsMSsWux8D8Wbn3pmr96kMyYYb0z8mOyRYNVs6gyUu1HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752705594; c=relaxed/simple;
	bh=zeEdxjL0XH88Ep/QU2UqC/atod6SYR529XQsQjVJZtw=;
	h=To:Subject:From:Message-Id:Date; b=MbJ98G4tcV5eZTyjLU5Lm4plU2cEXUNDScAGvg/C2C+1otYfUGX+SHtagm9CFz5G4EyTpxutqNynKcZK7eduf8YQ4i8B6jUU4uoUvgp3Cx9b6LzjZbRwMRD5ScaHKspk/dzUaFdaZO6wtNs6ccIrBiJKFW8/gxh7L20S4Xh2fSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krOTuZMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krOTuZMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A4DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752705593;
	bh=zeEdxjL0XH88Ep/QU2UqC/atod6SYR529XQsQjVJZtw=;
	h=To:Subject:From:Date:From;
	b=krOTuZMOT9w36GbfneSJVig6NAdTMcIKVYzqYqqNBxWPVsmSubcGK3PFPYFogTHkV
	 CqthRNkTbj0bMcxXpQdBBcjNnx8qKQhzVLi5OLa3vcsPq4gxVe/a28b4RypHP4DKCe
	 lFwCG/CZ+ghbbuRIOsx8LHDC6AqTHuHYtB27RNOBTWWzq0WdXIVyR/6cSB691QjBm+
	 LyzBVVcvtary0mSlQYSw5tP3Bc5YhrbCXk9gdLlkBUl2mBtl6DZemS46hSDFFtrWgE
	 wUwBFiQrKKtX/lW8F4KliqGdo7/VjBMbu2OTLUF94KLMRzLGyWotm8P7GnqXNuAhrA
	 3cpHv1wEItMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43BC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270559357.18370.512155204927644538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60cae76b3248b8490dc8a270d92678d181a23251f92ed5e3731d402de5bca9b
Date: Wed, 16 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752705593

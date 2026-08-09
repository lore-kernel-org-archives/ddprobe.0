Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADF722126C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786276834; cv=none; b=R1csiRkhZtVGfV/doKrZx3D7Ry+zRGNX83wc9cHnQL0r7soG+qHjfoZVfU7fwUZqtNVPauFJas+Vpcm+YCWlN3MYWcXYcPWb4PhSYK2qoYHTm4msUpVxfF3hcFQPsvbMvgPOI++gOICSqQHn6IspllEQRGO02ZiD16XixJexL5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786276834; c=relaxed/simple;
	bh=7yTSSbn9pAX7TXO5sOvQqbnD3VO9b6SRN25JYI4MWis=;
	h=To:Subject:From:Message-Id:Date; b=qwV2McEERY7xpxZhGmGSV5UwEjrPzT3iAWxpbn9YNAwjQiSbpKcD5vMPnsBfZ3GqD0ZBTo9OVwhB64XKrnVPELkfcTxM/tOXSudQ+Tv5WyF2c1riaGoa1a+hgxttJZEKlnV6wXpzzC3Fh67s5c/swTUlk68bIE4w1tNzg8hIyCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG+9uzCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG+9uzCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE1DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786276833;
	bh=7yTSSbn9pAX7TXO5sOvQqbnD3VO9b6SRN25JYI4MWis=;
	h=To:Subject:From:Date:From;
	b=QG+9uzChbFiuqwAg60Eh6lnKTWlIEe0U5RwCI5m/f94Vh/dWHa3b6flVzDgSnQIwq
	 YeAQuh1SaBDnq2jlJazTmQm/buYdxQcVQYA0HH6SYFCmntv5OixK56Tn/yUILcS0W+
	 gW5eqIEmgLEyxbhVgJKsPQBJMSRN7RtVOGPEIjiDDzV/1d/yZEZ6r2O8PXiJuzKAHh
	 NhTxPQpHgXfXxIfvtbvzKfmHx5K8eNxQyW0RY4/53kdkvRsLRGRHggvdZ9jMbCBMih
	 fj+E+K4UV4dEFtdDo/CBfd2Pvan4m9ZelSUdVjZMR6TgSb0yYpmrd6Z9D+5x0w+NZc
	 ttJrQAIagWdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ADDC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627683369.27990.14541640691701768009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c395ea0f914f0fcd1ce84d74365c32bcc2f067b175a026820fa8f0eeb5b2c466
Date: Sun, 09 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786276833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467B519DF62
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785607234; cv=none; b=CYdht8s65I/q3B5ZQimWWUlR774XqITpCkTrJ8qI+QbZcMTFXDvgbAbZ7viOhAE9GSg4UzLAEeTMpsTd9CpS/NM7gYSy2HNzsg8nS9DBJYoTeLVxZ+vqwKOzKcklhLZSMwt5HDLiY4uYu9+GxCddrTOwVXCUKbUsGS0HMi4Zuww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785607234; c=relaxed/simple;
	bh=2ZWSJTxaNiFQ45xSl6kOtL2n7cyZHUjD4fM+JfzfN3A=;
	h=To:Subject:From:Message-Id:Date; b=qiO1I0JoW5QcTQlULH+HkfWQyunsTnRoS7ScBRGndeZbK/O/y+I8U1y848hpf1Ry5dt3W31zma2dK3VmXiPuuUua1YQ2ZyOPR+jrfkYECeNAjdGqHvyzHonD/QPB1eyTHC11QKBTK0KXY74TRRPbPACoshy6l7yM+YUHFWImCR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5fi8WRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5fi8WRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2578C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785607233;
	bh=2ZWSJTxaNiFQ45xSl6kOtL2n7cyZHUjD4fM+JfzfN3A=;
	h=To:Subject:From:Date:From;
	b=o5fi8WRPlA9t/xFbnhY4IVKnYdQYlZIQ+i9K+s19KtuKDJpRrJB0wELF1gaUVI/Gf
	 ahIqzog/EBsKAnc6WLNJI4qak4o+lLsRjABgHBgZx/434eN0pB6L9huFA3haMYgB4Z
	 EtAKKcfgmdPqUFGeROl6szEfGfbxtwQCYHZwJIlV2e058sQz9rOEhUWxQ+uVSzR+A4
	 Sd+83iW1WNn81uddXxri4K13LVy3ilsf4led9LRLEWPUk6LVDEWO0+Y8OlWeJItw29
	 1AnyOXbQpWh2TpgLf08kScxHY6/UWhQAM5DwDnWOPxCD1PYp0OUo5tx8FDUlpvpWkE
	 5Ako7Sayk+HAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF7EC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560723368.31911.3078318058286708834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1fd49b9634c5d39adea1492c68d65916bf339834c2a96a038242f24855dd8a
Date: Sat, 01 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785607233

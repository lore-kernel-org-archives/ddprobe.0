Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2348230DEDD
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772527494; cv=none; b=H3FzAKIjAUio88f3LynjEJJlyD4GCSXUGT97jJFYyRQ29t0ZF/9Q8Eh0P0uOvL7m9SDOHWauXNsTmTSROpDJ39W7e0mHLDoN3jFET/pIZBB/qvQsC2B6rL3FrOh2l4BL8N7kuI/4Cmk9zhuQlYKIPGaOZ1PeX1NDJ0NhasWq0FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772527494; c=relaxed/simple;
	bh=6LYkk0he6gxLlic5x2huRwBZWBu8DwhVVzwg3qQYdE8=;
	h=To:Subject:From:Message-Id:Date; b=VltBFrAA2hXZR2hHpbKlZkXvWncsJTTAA/Nun67oafqjIUohZtM9ikSZHeYb4x2YD4UHuk/ZQomO1Fo8Keryj5SCoxO0NjJFUk420hJEVJXH6gmvXQj6ZFQ2W7WJjzKIeAGv6qovhaTWh6zO1OTzv3MyF/mHdwgk3hfO6BkxgsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWfjl0rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWfjl0rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72FCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772527493;
	bh=6LYkk0he6gxLlic5x2huRwBZWBu8DwhVVzwg3qQYdE8=;
	h=To:Subject:From:Date:From;
	b=YWfjl0rPja9iiOxEikFTF0x9id5LR06pcLxOqcuGb7GedGvjZueHLL28HAhoSuv0h
	 crgjp7+twiekb5CGEvzzWbmA3XuIW7vLingZlomeLWlC9GiCuxG7sF4SRG9ogqcaJI
	 MX0XHS1g7CO+tZsY79dXEDkfD6alYi7geasSUhljbE5uN5yqdS8R84AYTrrAuoHI5z
	 rCopfHVAQ0dN/jDb5KraziwJS8i47sYYfSwF8Zrjv2Yx6x61zZBYIW3fBdrN99Sd11
	 vEqrcimwoiMkeAksi2bKeiY6zAckrEFoC0UXu1MwnUQsUc+EBPqs/bkpDeZoX+HbFy
	 SyYU07AYOS7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C1E67A97
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252749358.7394.15471389955325257508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88acd2d85932a68fdd794b58c1d1bc378ff643fc86b4dd2a00adb4abeab67677
Date: Tue, 03 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772527493

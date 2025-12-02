Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DFF1DED49
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764703974; cv=none; b=NW1FWF5TZ1iE41irZ9s4vzjAVgtN6rp9OFq0XsLdm9IWeYfMj4L5xRwMgcYOpykykClHJuJDLPdv8dxteqEEk0bkVN9zmP4DryhJwQx2QGHsOPuSA2ujQg7hnfO8/FwC8jshhXPc8xZZO+5mF2GdiDzdKdg731/zJh2kbgxXGbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764703974; c=relaxed/simple;
	bh=pFlK4wlbfmns3rZ/XVbYJc0IIokc7SiAM+TZUNL98Fo=;
	h=To:Subject:From:Message-Id:Date; b=MmcV3b+BK7mshGUEIlGmz6wRitOSi1w7YvZGtZmlzZS+WGsVkB5vyuk4XPpRAkSIBz2tKntaQCHDJCrlDOmu8DDrNTfvv9DwJemC1pxrSjLm/GS78vJ5IH7+MvZeUZ1msUod2K+c5PSyhEw2wNlCCXQIPE4ToePvO4ZE0PaTUao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO/Imd3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO/Imd3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4541C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764703973;
	bh=pFlK4wlbfmns3rZ/XVbYJc0IIokc7SiAM+TZUNL98Fo=;
	h=To:Subject:From:Date:From;
	b=PO/Imd3I5u63DB66e0uHtT9x+n4rbyqnhj4R8ZIo56FOIHG0ZA9hWx4VX10ucSlZl
	 LcEw0rxYVTo/1lmKPvle+JmpmY8NOUNMCA6TiOs5eusg72UUoeCcuZBhKtZvRTilvd
	 xbi5HHRWKbBILXN19ukoY0FETPle8PL+nVgFpv6UzFsz3VoWgZ5+V57s4zaqDrR8bt
	 nsIwV5y03z+uF1NfjoeHFGBR1zfk0IAAL5BPDW1d8w/j6JD0JsG84Gpbnc8y1tCBci
	 RD7B+j6ekduIApZsdb+iTVyU9x/VqO7QSWCg0Vg0yM2TMQPbYyYEQzkg/wVcH9tbEP
	 OVNpTp2zJYRig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E1D1266A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470397358.19905.8470694580762473910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e394a074ced48059d4469dffe1b5c0d8b975d47cf21ba259f14dbce11d44c35
Date: Tue, 02 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764703973

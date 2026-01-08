Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092033803D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767870834; cv=none; b=isGAh0mCqmIci4klnaWShEOYyc6t2Cyr5t0fx+KIbzRfkXSh5xg5ixOUUBpsSmjCmzM9Y0BeHmyck19mN6BjO6g79pNUQLG+9Slxo7tR1RGWyUsx5UygkMPlAneJ+kpCyc2LPaBhxMi/7bB/zN1cMqJwaI67uRXCxt0nKL7vyD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767870834; c=relaxed/simple;
	bh=1uNifttrcAJUOvY4kshj88sRtZ53NzD3drxe/ROwmKs=;
	h=To:Subject:From:Message-Id:Date; b=GzDDw91YzKk0wVmcF7IcOA/1PC+2LgaLlhRYbYYhdgDCVxBFnUabwguEsDvzn6LWH781JfiIL5Y88/2+VJkIxJmbGBjoODmDDX8bMCHQov8mZdq5grirqVLJyDWAZoiw/oEZ843SwnHwpWrQ3W81xyQRD+7WF/CqJfpgyEyFXsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMSy7Lsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMSy7Lsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3AC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767870833;
	bh=1uNifttrcAJUOvY4kshj88sRtZ53NzD3drxe/ROwmKs=;
	h=To:Subject:From:Date:From;
	b=sMSy7Lsk3a9QZyJj1BzbfLfgs2WBO+wQl3viHUsgzNPeJ0IvjJjApBKuY6p2Tgkau
	 lYeoOJALlm7nUAtDzxrE1s1boYkxmdKZJxJ/yhWMSB0pRRuvxTbxixSCET7n3CLVZv
	 NBA8bkVjqAdtIUJHU/KnRYwD3KaO2gqM7BOg3CtujQXKMR7kY2XzKosgKpUjeU/a2u
	 pwNg97mDe/Hh2ymcLyv6fNGHSEq/h7HOKjpqtX7CaGtZM/UwdsxC9Ig36tUSy5TfOl
	 +TSWtXKMHvewfDlPk8XX9SlJYEYlW6veA3Sy3Uftvhzr0aLnRm/oDxsvsvf1VQoqRQ
	 zySKRsGQxp5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002FD185CC
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787083358.1024.18151862566156849585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3418853f654a4a4a1051d9227ed607786f7897e34712ac11bfe6d773e7b43997
Date: Thu, 08 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767870833

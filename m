Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2717C15B12F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728381354; cv=none; b=j6y4AP2T96ZypmYQzo8MAoMXWW/KeGVS/JpkqFtzOk2Qm3bGlLZ2frq5FAyne/bjEgkq8gmuiGDaYgneyIaBIrFCZ1SkBPISflffwgS6341sj/TCN2txHFBa2b5+tX1lBypNFRM0lQP9ljMB91fG9wWCUU9HR92TikecajgvsnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728381354; c=relaxed/simple;
	bh=jeO1ZxTKZ9G0RjK5XRTeMOVrvSonB/MenJQ6DG6Azms=;
	h=To:Subject:From:Message-Id:Date; b=ioeB+jzBzCox9No4nCY5qA187EnkCbM3ZjMxLLfPJ3AWJ7cJZ3wFF1u8IZ6FkiBigWJAZAqN3Pkgt/pjTjSOopUwvrZPLYG58E+WzBhzZz98992dkYe0OSgvTHdGocwj7RZUo/7PwThKLsm2pRVqmZqB+rBPEVK0sPD0TwvOjZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTZCAoWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTZCAoWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F086C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728381353;
	bh=jeO1ZxTKZ9G0RjK5XRTeMOVrvSonB/MenJQ6DG6Azms=;
	h=To:Subject:From:Date:From;
	b=GTZCAoWbiSnffBWTnFkGbJpFtUkiC5hOnPh5QfGloqRgDc9Ph6USb2usNRv9IjXjV
	 omRgXxYTW9uQGfsNXsnilDKwb1eGWQQV+gpxdnkgZMj2UtrD/BOpmm64fc4RgNAeXu
	 /nksnXypCEMAe5c8bEh2OfiyIrnGYG4/47oixdRyRpw6Bo/lZQKVKcQvE7XUuziZEW
	 N8dV7bhaeZNbWYZQ1IhVCGhgN3Gkd14B6waKsbvTymoaQ7DA6I2f0HQfPQgS8ktMou
	 WSG8HK4ltaUH5Dqs5/Nb9D1pjquHXweyvNasSpFBp2qW7nXhTWvgwmxdZbqxMtOXGi
	 fY6Lanycfn8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90318CEF14A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838135358.28870.10659490310243255400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355d6271297a6109e5fcb7cd6a4f85ccd238e8da26c0e96c5f75db264ee41ac2
Date: Tue, 08 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728381353

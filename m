Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44528AD5A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748125194; cv=none; b=OA6ihz4Z+YQ64GojY49r2dMkwjQKVPuZsqvFovCKZtNQl6O83db8EUfpQAtrbwfQ8toSczlY5TtkWSOZ653taJvayYM40mWHIhab3Vwre8t9HvO9WPOEgN02wX9OKsWGZnnTQGb85OICV1CuY40WmfOubw9jR0GjI1CK7C0mMfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748125194; c=relaxed/simple;
	bh=C/rZ5RF+Jz1GrIGAeLDDPOxC3s2kF/PQei7JvmfQ6fo=;
	h=To:Subject:From:Message-Id:Date; b=app0iA1ifqAKnEj0kvGTHHNRd53suUJKM7gRskZAB/C/udJO1oQi+UQ6EP3DMSBWxfYBk8KegR0XH4yy5Clo2aCQUTXkzlMs2Rthy5yGcmDvl7WWpaq9JA8Ht9+2XHwDgx+1xhbAuLzDQ/38MGfYJPqlBSJZsYdG1vLb6QnTqiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfevybff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfevybff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748125193;
	bh=C/rZ5RF+Jz1GrIGAeLDDPOxC3s2kF/PQei7JvmfQ6fo=;
	h=To:Subject:From:Date:From;
	b=hfevybffL8gMxTe6IOMLnrtF/ybXuRjqpOiGa+7+YPrvA+Y2gccQ8YXuMsECv1ept
	 beYuJqo+0FWuJCEXYUf90Se5/2AhmU5N5FEhfgKA4U6R+q5VUHYYxXCuc5UGTOFHlk
	 cO9aC7lpTaa9/S1atjhciJwidibDcRTaZAVmHjpGQjQx10X67zWgKfbzKA24cg2g+P
	 9dknV79dbPVcrxM0IAe9Ov9KRUGrmAkJMTqfKzVZhXP2+ltA6olUoG0IoEBz/qlUAE
	 +75OVcEgS57wz8zqq5gZ1yaHrezDuSkkFOwrkTtJAOZAz0N/RGzhFT9ZpKoYwX+fZE
	 43rcU3V/tX4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95316C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812519358.7232.9278470395669593078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede3f1f39a97a2c42466efd9c7f3e1cb656b25944d821841f8a56b85390a9995
Date: Sat, 24 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748125193

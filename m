Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4012FD1C2
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755023994; cv=none; b=Z5loyf5VuvdaSTpQZPVdcJpUp6cSCBoYQ+A0jvUXtnzfkX156NyiIKENrFkO6ibl6HSULkyj+RfIpWEnX8bISyCWOS9ymQ3dTtJvJvypKg/n/IOYK6oZowAZ8FTzgFsxm0g61aTMsxyvqYJDUajtUuR3fgiGcqmynpRGGYl3D+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755023994; c=relaxed/simple;
	bh=9WWPF34q4qTCBxyOSaNpiA4csrNhOoklTjCR4QORbTA=;
	h=To:Subject:From:Message-Id:Date; b=Lh7GdzKaARBqAGphoWwSGcf6JdYXgo0Qz9qCUYHnVIZYtaR0yuYaJydbY/B9sc/tjo+dSK4uRmugJ979sr/Gnsz1VimpMY6ClElmJ3mnA8341gsIyf1NlFtl/oqkWSe23IXqresMQzA5rzeN2fnn3i81hnXDIWqOytJ/f/yH3y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOSWsLZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOSWsLZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755023993;
	bh=9WWPF34q4qTCBxyOSaNpiA4csrNhOoklTjCR4QORbTA=;
	h=To:Subject:From:Date:From;
	b=eOSWsLZp63jpFKqD4dVp3xDAa9d+A4mF0ileZJLUtpOpe16UPwyJbySluTAIiRcRu
	 tNEUObzoRwqxyrGIppQys2M1+7tIoSfwg45cqXRJ3Eu/Adb6bK5ASzQCYhPAP7sgGh
	 jYlifBuxFLHDEzIF4NqWlu+U3Jl9WBCtBKq7JquGcaJPDPOu5opDsJOi0RG26hESvt
	 57dQnw8V0tWaJbUGWes7PGmyYFUkQLoBCVlG8vad2zxBsp9O9T4oNA8fbFS9omx4jH
	 TB7kRJL4RrF9GDhiw6wMP0ji7+QlLcKnQyzezRFVwD9/6Q6MFZaFGCyJ3L21xlT+TY
	 O3TdTFRSYeDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED25CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502399357.2468.8817340687260309062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f91f624a5b60a7793069e353a2a33c6b37525a091eb455ecdbb2e0ee1a12126
Date: Tue, 12 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755023993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D74815E86
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727123154; cv=none; b=f7MiD1LvkL3JhWpnXBxLr+anjB8g24oVbeifz4wRgO/CuXoYBg6RzsX8RsbHbZm0erI7iPAC6MU/t9kdGbfMa7qgkfdXm+ft/Vnr6qeQenkEvJOWG2zCrkDeqvdVQr4MhY3CZLzN08oYtEBETu4P3UFo9IWK15vE+F6B1XdkDpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727123154; c=relaxed/simple;
	bh=QdzdmWvBIUgCQVpXBQMktFx3aLVfQRQVN7WMSGDYMrg=;
	h=To:Subject:From:Message-Id:Date; b=mmbgQ0tLajhCiLdNu/FhTyibsjMasdIIQ2jTA9evZewsXS2nEHJZojKHWBw3Dsds8eKVG+yL/zvdiW5iodRwb9XkMeLAuMp8PyXrYAzg/HG4J7ouCbnQBU4TsnHazb399xNqEvTBnd0kcEJhHrtVLurfNAp0MxPl8ZzzwNKMhmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt1GTHxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt1GTHxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBCC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727123153;
	bh=QdzdmWvBIUgCQVpXBQMktFx3aLVfQRQVN7WMSGDYMrg=;
	h=To:Subject:From:Date:From;
	b=Xt1GTHxzSHoFieqWoz49dt8IxMukEQLS/zLvp7ki1ML5sxwgS3fCG2MPO+DP0LLPC
	 Frj8Zu87c4Rk5S3nYsVqdwMhausuqLzR69myzZQzee0EmuTkkN9o2uCMkMTJcu38LC
	 ODf6NZ1bjsXGyhDouwBWFW548nT4+PvPiJYQDLPSLWmwbIduZHQWRbcPHYVHnyzOxV
	 gRCy4BStO+548FW5hVDmlQ5GpYn07222VfvdHXKuKEPnd08hAmwVJSyLR1jodbWckI
	 InwWbUl7utPUHwVnSFS+okXnGVWm09lQlbgKYxdsBZZrHJGThHgU1KZylUIrVYDt4e
	 x1BqszCdU5WYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A21CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712315359.28236.17079581800437485650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfc72f7786c74a3d5d2004f28bbb8e24aad50a1c9bf5b7fc3019e4017eab01d
Date: Mon, 23 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727123153

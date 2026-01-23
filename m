Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FFC1DC9B3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769193834; cv=none; b=ebMRXMidtfKl0LxFmkXq2CU4rYw4fm+SFDHns/ziAHGZ3zWDXU05x28STtalaubk9SzqqVi4BzZctsl4VKKCPLcOLd7qXfl0NDc7Fc0qd7kSVVzAONbflMKITS5VpxS4vzfoYd8ib5K4O06kdkUn7O4qaxytk02XUgyLfvaPG/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769193834; c=relaxed/simple;
	bh=r0ZfDDEmda0+SIwhPqaRXyew07mtl0qFKzQG59uPfdE=;
	h=To:Subject:From:Message-Id:Date; b=upxbEaRDiNoMQj9R/dtcsDWIBS9Nb8I27XbvowHIIz5YaqMI/FyHZKfeZs7yx+OH7bj6wTkKLpu0ZCadQsGopwXyHvQ+GxdB1CnGU3KNTZP+udSN/QnFP0YZjre+ggUhuOtJ978yksyhc3Iz0gnC42/cp79f29jTUIJ4agFhwOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IphtLAku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IphtLAku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769193833;
	bh=r0ZfDDEmda0+SIwhPqaRXyew07mtl0qFKzQG59uPfdE=;
	h=To:Subject:From:Date:From;
	b=IphtLAkuF0EeQnr8KOt4Rn0VweFUOebhiS63VfrQ3D2Wme5CV+etRjYP6BNJJehT6
	 Bj3n+/XWkXPWjOCAIyys14f9WE4i0/Rx0FC0FloSe2JAelokjqAvuGOw4EfyzQNSnv
	 J5BWBKQORhkol8aXVVdYJuL8AU+ijwcC5VNJuYb/k9W31PXgiPdVcuArtIWgZ6D0ft
	 iuGWJlaMCDlzQ+WDAdtsryl+ZSVNlRoiQWtGm+ohfiKmww2fqDx3UYsQeUGfQHmiTu
	 gQRRKA1MpusuIkTfPuDOhmOX88PSu3izh9V64fKGNO3ZcgMm/uuzI6waKm2APIiUjS
	 3+8mamE9grlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F693D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919383358.7005.984642198453545249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb0aa34cbf7c14c6cd197cf7b27e742398eebc7d527c8db8f8e7a66c0887c98
Date: Fri, 23 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769193833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2873035975
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787949634; cv=none; b=J03w0B+VzT1+osm/NYWUaILqEkYr+BE40AObjC5EwD8OKWG3Xr+ZCGVTMx0jY7x0nQXq2wPOOXNkxcS+Xm2eCRyu8mfDu8T4na9f+hU52fdCsqGjgJL6lnOUS5VpEvPvKcmTPeJdZuWCA8x4VPIIPnkDu4x0bW/8M3vUZ4Yexe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787949634; c=relaxed/simple;
	bh=VYzb7OWn6GrJK9caiXRV+EJsGkzRMuGuJyolGcGzhtM=;
	h=To:Subject:From:Message-Id:Date; b=tAVVDvz0vy7EwE8R5ig9pZlHKnI+PX7M3yiuKfsOhzDogj7J+FaNQPQL2vqA+uOWxZinHvtsh5KolajVc+31/tx9U9S8QN0g4wFFVGZM3ed8HXDK96aH4jJZMIQPlS2Fb6F5kS7NnRIEQ1ZcyxpMbYdJmPyh+6Kp4HijAr0iVE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTy7WQ+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTy7WQ+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C41C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787949633;
	bh=VYzb7OWn6GrJK9caiXRV+EJsGkzRMuGuJyolGcGzhtM=;
	h=To:Subject:From:Date:From;
	b=PTy7WQ+109HZffYI3KRrVwbuivPxEIwMCbslnQvhZMxUV5j1LZYTGfT9fihTGZr2H
	 qjWW97WFf+ut3e6w3To1NXfqzboaEdyJf3TOK9fGt2f2z0pexxEuEdMZpJsN6yLoUB
	 VVpED7Zb5/1Fxc5LCHN/WvYdXMKlZOB+/OAdSxe1/UVPmjtC86YsWUPgIWLkvharlQ
	 RTS1YxXo+j/vZyNXeRair1tJ5KnHGo5hjGHZs/Ekx2+X25ooOuVX/kzM27VQdVRNp7
	 uEfRgE0KOn6bj+WG7kuupG88qO/NXrIs6AAHD8uXZDJY91zSRmFyH5SvD3x7KBTyjq
	 i4TbRA+i8lthQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3EDC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794963369.29855.11362031600860778970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbe878b0a6dc7c94188a22d55d57b6cced17020a6af8c234fde02d86b74bf6a
Date: Fri, 28 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787949633

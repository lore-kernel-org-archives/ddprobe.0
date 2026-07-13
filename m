Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482A3233927
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783964914; cv=none; b=eVVYgToP9imFUdmfylzhvWcxfbD2LagUwBjM5O5LxWKWhjSWiSrv1C+zH9tiIzfqUcEi1t1D1ajgdQ1wYqGyTOv7FQqgnYVC4TTAhMAgA0ewF4O3xqltfmKIm9f/CC6bLXts/A7ZoLg6wdblJfk+h/ZcwIQ7OOQQ+xd0Hg2cmKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783964914; c=relaxed/simple;
	bh=ul3a9w3J40tsnS3Sq6T0n7gDgN+E/0Knl1JlWuUvaak=;
	h=To:Subject:From:Message-Id:Date; b=muoyT2Z4AnIChVtaZ1X7j9DIiDKfcniih2e9qQ1XDoHRIs64ovV+LzAqvz2yff80YE577SoYPFLrfAi2g0lposuvtwFSsZRAm3wt+eZOnPymNkctTE5JR0EywhHarvC1sf2/7hyXSgob9UBV257CsAUVrFUe6dmoatw99SalslY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDqkyfIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDqkyfIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC61C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783964913;
	bh=ul3a9w3J40tsnS3Sq6T0n7gDgN+E/0Knl1JlWuUvaak=;
	h=To:Subject:From:Date:From;
	b=NDqkyfIhP46tcbI973vSZl2+TeZRwwb83i/37aaspZ5wkGJy7k3iYhkshdKCWeci7
	 BKI+vOBRUF/sWpnLCIRxJrpjkHQCbTSTaTHcX9ubmDqKGtIiLmsZZGQOYWuGpXnhz0
	 5hU60dLWx7md/akKW+ZiPbzQmXfnPClJbymionaHB5Em0RtG66uFIfHGSYI5Wvk1nW
	 kfbBk7WnQCZ8ubsMpaLzZiWpqNRZ/vkcz6RzI9cWKRkpPqFLtXW0ReHI3mYeIq1MQd
	 7xj+r5/t0HcfP9LIQ4+DXE89/N8ScJYJL8rG4T+EtZkIf/acV7eD/9Lx1iNI7n0pNZ
	 jntcoyGHKhoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D3C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396491368.28583.10143171084682336021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc425251d3dcd054dad93277322bddf645e82ff64bfbda41323d4d1572cab305
Date: Mon, 13 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783964913

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E270C1F4727
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747380594; cv=none; b=WmLuRXkGj4RkI66nuOv6maLcmbMVAYqZZN7FbclXCzym2DkBRn49R1M04fcIVAaZzFTsljqs+Nn7yWWV3TB896tlAE1BuHUwq/Gvu+wMDU0gVCnTteilHmjL6WFRx1oB300cnsWSHFzQsTJt1Z2bQv99Wxc2lh22yuylzw8j/1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747380594; c=relaxed/simple;
	bh=LyF7AnbAcRGrWgPOOrB1z5NVgH9u6/PNYBLTJsdSeWQ=;
	h=To:Subject:From:Message-Id:Date; b=Yu7ThNQCPxUMFeRJ7hVxP93sWJmrorCUKW+w6UQ6+DcAEM3Hm9nwSh+KdBZIkI0KgSrg+yNxs6rYGjYcDI3Z9JZDpRnDaKuwB6CXzgoEzrsUlI7CPEnOa/CY9cJxPMd6nFb6X3KV0bjfMowLYeE3ouSrgdCw4W3lEZWR3QHps5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFtl9shc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFtl9shc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0078C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747380593;
	bh=LyF7AnbAcRGrWgPOOrB1z5NVgH9u6/PNYBLTJsdSeWQ=;
	h=To:Subject:From:Date:From;
	b=fFtl9shcavs+yUkzeQFTXKZelYFsuwIsjjSqYauriIRqyvzgBZ4mF7i6DavielpCS
	 qxfluOOgM2h8nauXHC3WMBa0eUaVwO5x3pVyhhthEaoX3aUje7W3yUbMUvm2S6eZeH
	 dCzwyVYhxF4rohxxc0XgQuXEMjQGnVvmeG/qDSK9ghdYXaYe0r8pmYi2R/1V9zfcVq
	 n55F3GOegxaJpYeVqrFHZN6Ed1POOhfjjWvm44eeA8ZPYGC/X/rCDpjiGdb1RL2swW
	 ApEWaNVymtdMyICpu6/Hwym5afv6D4sOKMf60wC2s24TND+RdJxNCBYTOWQK63zuQa
	 aQugEBtQeiX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E81FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738059357.5401.8024094073728846044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08797573029314efdd53ce7f7ab7ae76bc5e4a07fa506acabb5bfc67783939eb
Date: Fri, 16 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747380593

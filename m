Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731621C1AC7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735947954; cv=none; b=CdjQsPNqLFQ0JWu679Ckk70vqIZKwtM2xJgCVzqtjRYARKWHBMlbk8n1WqJ2MNg/gHRtc5WgUi0Yp+HDkA3r2pV9ZaUirPj32EVAVYauR/yjE2qtAey/Lu+awW7mpXyt3pdhyRd2DrPt21gbXnKXwyjEPEgK9IQAxAAgWMIO/YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735947954; c=relaxed/simple;
	bh=9YHwXNpRAmV9HPmTLryYCKqwoFtTiE0ItP4gova10aI=;
	h=To:Subject:From:Message-Id:Date; b=XogRWlDZlCn8n/JVI7geJxzOL/6hKmVZ6Qrle+Mn+IOuI4c7hAFf90toHc0TW+YnnRSgXIkvm6ZvMvFCaVdc7v4g3IBaqSLmsV0rta08mQzSgpoVEzXj8uDIOUllybhza1dm59TVNNTX5qozSI/1976oGBlUBGY0xqmq8nYbReM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWEL0rPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWEL0rPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD78C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735947953;
	bh=9YHwXNpRAmV9HPmTLryYCKqwoFtTiE0ItP4gova10aI=;
	h=To:Subject:From:Date:From;
	b=JWEL0rPkZ43ANlRDGpHJOoND1PElPznQP6L0NZrd2XBOIRg9jUuk2QGsrnMywnw98
	 N3BLCascl5zFpUU7qJgnOSA2FLamunznSeLBIk3ChQRWRPtcRTKdxamRXmbPqtCIvo
	 wKQnDBRcBpp0gVl594M9u7bQCMP+oBqMUEnUpyQUItZ0wz8cLP97VPmvsI/l0PnnwT
	 5PpzngWfBH6wWnV2CNdfoxJnxz/VG3m5ioLGfHpm3/UXGXsek1imJYLi53SBaTXOEY
	 pqrC1udvIxBtTYNu0kfCv0qsS/nukcnCM5uAlwMXQXpgysrZimUtPenDrObGWbUURO
	 61yXfjlCk/XMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D8E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594795359.13081.13108199572345251894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add57f11622bd0d36d03f499f148121892b859b035a01f1b9564486e47a40eb5
Date: Fri, 03 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735947953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB502DCF45
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779614554; cv=none; b=XeqikbCBueaffH5GSFtW0z1NvIx/xQxN4ZWn6toNY6WQVSFX2FMowqnL/5JJcKqh1ctpgWWwG5yjx/Bev9OQjT2RFXrHOt8dU9FkwFKGbKd2wxPYDYh63pLm8wrKuq1wMRGALy7fPBd6DIFGtTXTKJLvod6s0USf7nr9lPVwdD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779614554; c=relaxed/simple;
	bh=IoXArAq+e8QNwFvuUvTKL63VJPuLYHtJsp6BUv5WZuE=;
	h=To:Subject:From:Message-Id:Date; b=NYmcfVYE67phFyJLGjx2lUt6lr/e0SnDZE2iZfHKALePys1GhynRjgwGEpmgQIm32/PBPxelMDSkXqazLud3O0Jlm/RDOLDTDTBlpnbiJinxbCMXXPhgZCtBHKAJsvEZrQ4LRCwxjkvzF8onoqpRXuSMTLb23f0VOHmj403Kfwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5haRX3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5haRX3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56CBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779614553;
	bh=IoXArAq+e8QNwFvuUvTKL63VJPuLYHtJsp6BUv5WZuE=;
	h=To:Subject:From:Date:From;
	b=J5haRX3gSV9t41s7H4XZFMWhVLjQh9n3gkPzlGrFmYOPur8NZnvPs3UfdP7xb9/LP
	 aXXhfdGxOCUUWMGp3Pbq8hsBtnPJOIjCRfw4NGOMD9XOKEu4bONnk2BMpG+2IlPA66
	 LC7D/NCdblEylgJ54udyW2TgvcahCS3+j6j00ujM3Y4h5j+dpwCOYfn2dl+k+ZIo8V
	 QgeNUATpl6HyjTXFrfNB4zgcQ+VpE90LsHVRghRixe44kAHYxqgCpTnH+BVR6BAQ32
	 1XY/pdIy4sRfJh/8GLIEk63MmIquBbxgX7H+I24UjA9jFp7YEGl2jiOWn+Rg8na0wJ
	 VVm1u15cC8GyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE92CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961455368.20808.9651974856690111330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2562d42d07a9c54a1e70700f49b171af728bdaec932e559a4bdf123b02542aa
Date: Sun, 24 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779614553

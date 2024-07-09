Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487623214
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720494983; cv=none; b=qtoNvk7UZjA/Nwghj+V68nDj9pNVIGtCI7gzrpGxw1331Onp7JwbG7uHYwTyvQh5mEFy3+KgYUi2YBw3+RVy1lUkGPpNiDauLbNk2jiHhafBcgCzI7fPu/M8WdqEu+Bk/r8XaZydMaMDBL4JQVm9i6TYwXNuE9Eqvp6vnnQhTVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720494983; c=relaxed/simple;
	bh=xGDc5cv32RoySEWGGFk0rTNPl8dItEDRbd4dOfNtZU8=;
	h=To:Subject:From:Message-Id:Date; b=ONsiq8RHS6f0V8qoLMQGZUIuMXizMz+Taj8uJhaXZv2qihjm2SmYiGPUJarVrwvIvPpD9Z4+ZpYxiWQ5ZYk4dEI85yt9alzm4jPDejQKRenHw+wcCEMqWpq46781R6mroBYb3YDJJIxCF7xzUbuFoKvUgB/c6IU73EYHWk8RMGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgW0HYIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgW0HYIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D579CC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720494982;
	bh=xGDc5cv32RoySEWGGFk0rTNPl8dItEDRbd4dOfNtZU8=;
	h=To:Subject:From:Date:From;
	b=CgW0HYIGaySjEUz/IX94/HEj4NVxHhbomDoQQ4Q0XR9tu8F/PG0dgSzX2Csi2WCTs
	 jr6x5UtnTnPLU/+W0F0tQUvIF1TVunVHnSTjDqUD0Qitat0klMD4eBdNpr8FrYICRY
	 gF6XVoN70EAdJ+QZHzP8NHYb/4ZldRaBCHmqT0/72Hl82exkaxD3MWmYIYgDfD5mkK
	 pyxgkHIm37ut/0EpUfD/k9+gJ19529S97qmvp9CP1BFLJUVUAaNmYBhF04F6P/L9Au
	 XtIKgq+TAeU5xuWMDBtnmcC3I4DNbQe9xKICL5n5Sb1NqYQPjh041c2SX8fDMCGn38
	 c1qKbjKU0OIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C442BC3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049498279.22503.5977769020878045874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2491b7b6839220870f489224060fa2d5db80421002b227323e16b4ae7a427ceb
Date: Tue, 09 Jul 2024 03:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720494982

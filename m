Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B075C96
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745974194; cv=none; b=P2KaBM+WJFsKJPaTdFPY2drV//+sb4IWSTAhY+W/Neodf35SC+T38aQtudpMY8K9wRrSc5dmqw8OFceKGTpqFYhfS160C+7rv7RNu+4irFN8y8EOVdrk0JKk0XTLEp9NESQyEnYurupEfZB6XAwtE0SDeETz0y7YrfgZ61ZDgKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745974194; c=relaxed/simple;
	bh=TNQjPM3dN5oa85v/YyU4kz7bn0cm4feI7nMq00kwueY=;
	h=To:Subject:From:Message-Id:Date; b=gMqFdJF8CEhLK9vtCRJKzcEceYrvfVzrssnSqKHctWMImmu2ZL3V9bYiqxty4wSh+WpJZ39Js+5pkx5jLiaog/jN17twysEb8o/vWG4gY6lOOVEjkRItgJ/1cpKhUoT3sgv3cR5Ststif/lCXRmLwJAJ1v8uJ4OpOEFvTH0+/so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZAj5992; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZAj5992"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2331C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745974193;
	bh=TNQjPM3dN5oa85v/YyU4kz7bn0cm4feI7nMq00kwueY=;
	h=To:Subject:From:Date:From;
	b=QZAj5992J+8cy2xbn7Sr/9N42DzSpzMHzfKNoXTewLHipS8MvgiVLC4BMeqOvf5je
	 LUN7P4CMh2jKkPchmVjp8AAubfF6N8fN6F/2yN2aEY1uOvxDKG5ecORz38Pw2almi8
	 QIIlcJNhvFOmK05xFZitkjBufFVnFra70+8eWAI2DRLFsp/0wPp1cKOjuT2FVYSOQK
	 GSUTiARaYO7d2eJb3ihj5KrQIS5zQtsTsqGbvMgJQHqxEWZibyCruhe9cHNExpziHH
	 DTxiQdhbz27znt2KvJbv+qzOOR45NxFy0sKAkipD7eL/Z3uDRrWemdnev6EAU31+2E
	 eNyOHxDaidvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91734C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597419357.17619.11986744498320779009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d295258041cf1c2fccdab855342a65cc7658714b0a565423715bf6efcd00af
Date: Wed, 30 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745974193

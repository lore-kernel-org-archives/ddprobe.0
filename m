Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F687351C34
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782322054; cv=none; b=Xw++mWYlaxByiu4YHCqqCfNHBGCuou0mL0Wq4bDmv7HYbmVt+VKi+zeCHdMADgE1o6mmE1uX8uClOR8XKvJgaXjaJra0wDwBxytTyRNW3baDOJKTKYKOJ3al8dGxLoDwk5fTCK6nxhT63Wpkt2ZuSsBxs1OELAu+Wd0fx5NcUGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782322054; c=relaxed/simple;
	bh=HzS1L/6uqw+FEgy9PomkezRYGOfy42gM/IZW3Wif4kU=;
	h=To:Subject:From:Message-Id:Date; b=TwpFF7k6fxREM6i5pd5SntOC7H/nUuOTgbquJmXcApHUHdVUHq8rOB4o9Z+b0DpiSGgNJSHLGS1YpGej00RVgAwIJy905LiKLdF1T0BXGyd5XQo6nIVfY8kWgltsTF/sda/Y6utGfeGiZJzxCXi10vE0DTvlAREWten3X3NN7rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmGrMBkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmGrMBkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81C5C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782322053;
	bh=HzS1L/6uqw+FEgy9PomkezRYGOfy42gM/IZW3Wif4kU=;
	h=To:Subject:From:Date:From;
	b=NmGrMBkGZiTEfDfZR2RaYFOTqXsO5bW3ExSdl3t6xtu2vUnQR0TqW655RtojC0Qbb
	 FlORrrt+m3hhlp38oBpGSPGTZO6hqB7GVc5S47JTGctcvO/6ichGmPUjBYm6ceA2zM
	 Y5OL/GxhL2iNsjrDElHfVHcbAS3KGTOdP3c5ALYxlC7iqHSjw6tZWF892QTN/C6hIL
	 PEFAMUqPVQHw0aUtyqYdMyzFw+XbIAYDT8sknpvRJi4VOfZbaLTmPgOItWv0EKM1hD
	 33v47bbgiY+uSbMEvaMR1wL4n8DXfKJq8rLum+hVn3gDJAHtiZscnYH+Lbtj7n640V
	 6JntdjUDl+GvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9E4CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232205369.31938.3399728663688652403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e39b61d5361d6337a94ab720bb41b3f378e1218fa933d8a2308ef6ec5351b75
Date: Wed, 24 Jun 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782322053

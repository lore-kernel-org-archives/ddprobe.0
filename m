Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F711531C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752387594; cv=none; b=Nf8xnTpngbdSBgvdV/mOldVhTOcCig5DnZjYl71cWtjUxqmiqIgRLfPYtVJneW7ywtNww0xoeIFRr34Ssc+t8XCPNPSVVU2flzJlN3EslXKZ2dZ67rjIoO/p1+em2FLq1z4rjU2yYfAIslyvcL90ADIHQLOxg26J2rgYBnWzg00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752387594; c=relaxed/simple;
	bh=yimHJeh/d+D9Mil02vxLyNxNL45XFdajBre9oLQ0dUI=;
	h=To:Subject:From:Message-Id:Date; b=RRiMP416212qu5uSzl/nicxp7JS0FvphDqdZvXDBkik9KyScmU48OfYOQSrqA1DdgwHVEzslfThE1IR/oUkIAzUrcFkFRwQ6Dhc5sunp9FlwIBwjEd8PCn5oHyHL70E+CwFRH0jy2N71L/ECH8qjgHvNfC41CN+rrhJQrTmXpLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0X1F6Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0X1F6Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752387593;
	bh=yimHJeh/d+D9Mil02vxLyNxNL45XFdajBre9oLQ0dUI=;
	h=To:Subject:From:Date:From;
	b=c0X1F6Z/h9GbeJGF64jdInoGFNnKjqChROBMdWhi7Of9zeFjEBos1SSQhWvmRhD1B
	 IiDzKSdaX1wvxKBaRUysLc1cfYyyUFog+UBwixWE+NE9tx6O/v6CmIn6HXl2mebElb
	 JGrSVj7skLhrpjc7oBHkQw7Ecm/yrPkBMCghwGuw4/3y0X/VVu8V1ZjeVsHyZMHWMS
	 8jsoD9OcdAgz3/s+O7NDrkclCt4T0YvQUVplOaM+GfU2GJRXRzRJI/aXY/N28V1tnb
	 1q2YcjGLYv/mlniW3X6Tpl13nAXMFYfpqOPmCj3eS7jijs5gB/kyrTz19yBJT39aAI
	 zEauZTCfHTzIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115BC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238759357.6035.15364361769432260118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9518d442b860e779a6453d4f30a5fe1745936e384b1d4311f69a168a1f60891e
Date: Sun, 13 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752387593

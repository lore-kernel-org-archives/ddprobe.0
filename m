Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F3219F489
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727969754; cv=none; b=QbgSGUYfCjwrb04GUmboXharA3eXIl+iTe7stFzl8rOEu1voR+pkgIZ0WQhGLsTitDrHq3AQi2AyQvMeCDvHwgjCYQp1zkONRV4F/uPaz+OoD61r3I90Ipe+OajggDE10wlsIAkORHVuUR/yRx/ndFVuHiE3TAYUog10KiH8QDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727969754; c=relaxed/simple;
	bh=1lQ/NQKrV3uzSpl3wvUOcsn0I33Lu+gTF0yFtttJiuQ=;
	h=To:Subject:From:Message-Id:Date; b=BgPxJANbxlphPUPYqK7nQUmSIwvovnjcKni/eq7qhtuWLFXOPmfsJbpMTSSDJ+FevMIJoiZ/3wLlj4v5h+I6NgDDbhN/sxbJuktHsMlsU7DvI25ZYJpAI5rkXBPPMi+vsPfhnNTvyjA99nuXsDWj65SFpov6qW9H8PRTHrirhOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzVVnWaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzVVnWaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFFC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727969753;
	bh=1lQ/NQKrV3uzSpl3wvUOcsn0I33Lu+gTF0yFtttJiuQ=;
	h=To:Subject:From:Date:From;
	b=lzVVnWaOKTrH4jolbZSQikPveHEFEmmx1cVFP6IRI5lJJ0YM7vo+RBJDxU9mq8T3N
	 U7BbCNwiJkWQxcasehXGY9vcT/8YShBRROWboROWPZ//e+4gS3EhsJsbcVfgCnoJDM
	 8FaXte6jkJcS1/H4inNqQOUcxKRE7jvepF6Xtf/PFImdV3DXu0P/NVYQ3AhIvozoYs
	 5gQWkkGpaevUp/wETj6/vr+K2r49mAz2aj2rn35vUAgpy3pxvTDvDFtzD0KprXDsNY
	 VmlsIBQw+Wj4juL9JrlvkY9t1JfwuuFxftqoo2iHahkytxQk07pF9NrJSuDi4QZl5A
	 yQJM0UfQHkJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF3CF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796975358.8363.12991895011082182731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7a112a8bd852d672505705187052f65c69dc61f526fdd57d638e8236dddc8a
Date: Thu, 03 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727969753

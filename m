Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B2F40C03
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738901154; cv=none; b=bxT9k/VU3frDwlu7UJUJ1rnARnGDc7ryqVYGETpk4G/VsSs/u1TUiumh4d/qpQUxEwpipSnkX8T2QwCGJdNF+02mQzDMquEswwSRVlkCQSrIxYuptUlMr5QWWSJnMAcZNzSaTqU+n6usWArvV0uI6BmOJTTKCS6ZEVLD5INm3i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738901154; c=relaxed/simple;
	bh=rBnPlFC9NAd5fcFeVQUJbEIXPq+wczkxXkBx8MT52n4=;
	h=To:Subject:From:Message-Id:Date; b=EwHWDEvFT01qhQukDOt14gAP7tTb3Y446W6529nEmDjbr1gEshLw46paRJsqO/eoKRVWBTE13J9u0IKzaPQv3nyg88G1rKEgsx+gfTEduTPz145L+wh6EzxltKEqHqz9vnmOtRmd6MbdJulu7kw64rgiwLKAAq7sJJ09R8wOFJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unBkGzyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unBkGzyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA72CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738901153;
	bh=rBnPlFC9NAd5fcFeVQUJbEIXPq+wczkxXkBx8MT52n4=;
	h=To:Subject:From:Date:From;
	b=unBkGzyNGZIPXNm5CKZPciiHt62O7K0+uIsJxoNyyLmeoUjlRNGhSeK5duOq9VHjc
	 9hKuWEVy6IRjtOg17stpRIiMS7K6yLv2dkBabqo1dwJ4jEFQXsmusZ7Qvj/uGBbxhu
	 IYOeNoQp8HCXyk0JMI+yZ6y1iVH5EpbpLqiCplB4OfJ/6l1DKc6QQedq77vpIfvM05
	 tWMOf9fNw3kYCzcfP39URuFWoQq9KSdnLmkQhpX9GR15PlnPdN0P88XvhC8duIPvy8
	 vwq0bM47zvqpmw3Qpw+alqwnzh7GrUnC/m6uglSC1Uss8GJLa3PrwSfrZ9+nX0zU1D
	 feTVTB+T9LTpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DAC02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890115368.1695.16930618615741676859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06583377f53d9fabe21232bdb23de946bb63ce843b834478e5c5385bca33cd6d
Date: Fri, 07 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738901153

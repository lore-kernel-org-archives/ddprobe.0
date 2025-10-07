Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A740CA4B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759864794; cv=none; b=rMb94Bqn57ivXDbQu8Ix+Ci8UjjCtuTThTJX+AEkPWCWK5Ks6+53M1rDgN89nY03Cs6ayHxkeciguXqOu61vIsVI2Xt9E+mVqXmpjEvD+q8Ucl/yQ963ItkjRE1W6IQ610pvYPY0I1le4N1cZGJzeZOlS58+i9ZZ2s1Yi+dObIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759864794; c=relaxed/simple;
	bh=V1+6dmZj7bwOEVU+Y9nUFitzxZJCXm/u0DAfgZ1b6+k=;
	h=To:Subject:From:Message-Id:Date; b=L/SENxVGYg+OooiTA8i35DEQqtZ1snKnd4tb8kJ6/5O0QbpsfEhiaEv6OZoT2nPw3A5/LF2/UYB6F0ylCtd2VOU6mQqf0XzP7pgTiOwyuZCucaFKa+kfxfE8zM1Huiwbd7zMqReRmWQuXcbyczgj/02mqvj0M9R+GFZ9t03UZ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrBWARek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrBWARek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F85EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759864793;
	bh=V1+6dmZj7bwOEVU+Y9nUFitzxZJCXm/u0DAfgZ1b6+k=;
	h=To:Subject:From:Date:From;
	b=VrBWARek1WKqr+xv5CVFfTNJL8F8TH4Kov5P93IeYSu1CC1FmxchEjhSpCN1vjjCY
	 JZI15AguZbPl2ImERFc54fePz9X8jVtZLgy5CSGw3i25qUBpXo+q3SObLKrBuCD0po
	 zgaN7oLc/OrTPDCSia8JG/FFRCc+sWcHDd7oxiFmEbgRRorlt7c/Sat5XYysfsVmSq
	 cLhFbPAiN5bIavQirhFaSNxiCsYjuWbnIJ1qT5t7ObdrAo4LhJStt7xVDM+m1LmUvG
	 ZTwr5ekYcldGNO+B5shv1cl6O4c4GpMooJSlphCMEkvtuq6opt+xiNESLA2Rz43hYG
	 gpDFXTwXW/r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C3CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986479358.23244.94583842284818885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b147bf62642de5f55c2a317ea59a2de524116186881e109b4aedca005f7be43b
Date: Tue, 07 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759864793

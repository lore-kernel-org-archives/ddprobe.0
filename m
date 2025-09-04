Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E762E03EE
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756976994; cv=none; b=XigAdLnM5jFb38b4zqeRJ8/a106lp2fmPxZ5+D5yQGqQBOihjOkrXTBeWi2sR/cwAzdNQVPM3jQvdtkkxVY1xfQD4L8QAkq5H1AYg7GZttQcZQ7e+zjvz3aIj5VxTDYUIJyf/4J927g4/Zn5riGebpp1mqDgeZKjwBaa+2B+AhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756976994; c=relaxed/simple;
	bh=I7ZA4egBj5ICAMRiUTJJXH++rvHgvvdgJ1UloDV6pjw=;
	h=To:Subject:From:Message-Id:Date; b=fcEvldKH+zFwvI65mANa2axweSnXe1Y1toV6+5014YETYY1EBhtjBAT/ev4LrOetDo/Yvx0lQNID8wnCnctHp7bAEUE22BFEtx6Zvqg3+0zSa6Dck/O4o1ZW4Zivqg4+pU0JDPF9RwJb2e20eXPa9VVnCJLpgJmZ79UIKDhLvFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxV5NbgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxV5NbgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756976993;
	bh=I7ZA4egBj5ICAMRiUTJJXH++rvHgvvdgJ1UloDV6pjw=;
	h=To:Subject:From:Date:From;
	b=PxV5NbgW70fnddzVuDsaoUAD1Gpbb1mcnde+3jgzSXsr6/PSWgpsYoZV8KQrEq87G
	 u3IJ+IU+au3sylWxGIAu+z7nHH5kZIfM+5PWk1xihN5DX/0p9Vd3g05d9IKmKMyXRu
	 Ur9djx1CIW7rUR3cMps8sefuv2btVN4KS6S78NlnCbAWCFKRdH8EUy7lBlpRhAwN1x
	 CmvLHA1JAQvLWpzqsT93STmfDzCbCFguBAEbDhAFhX2wikVJ33wQ3F3FCMFJaTvgBX
	 /2sn1i/CqgwVJc2c6QIQQ6lZ2lpDpLmilfM/F0kmUJNjL82ri9Vf8ccl+YxYZZJLIx
	 PRXiHYlTuUFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D7CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697699358.16116.16518185458867923762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f807341ba5b2a384531ee5212a5e4b06f9e74b56bfa6b309c49c1bdb11f12e23
Date: Thu, 04 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756976993

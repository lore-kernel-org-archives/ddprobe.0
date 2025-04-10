Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E331E9B14
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744304394; cv=none; b=cL5jtH+7C0Nod0gFbTKtzy/ZPPzojGgNhfW9VpsVi0d/udPD3XRWoLVfJp8Dr+kbhLSflu2L01h3/GBu2imL6ryo7tXNRDYaPhDmyVzM35oB1jn00PoA93KT2Xoe0USbqFdl9s0G7aICRl5Ei/blrxYSd41deB7ASsmlTzhTD5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744304394; c=relaxed/simple;
	bh=waDFzP40b203bAav28IGUeimK4RWcjPoc7Iq0FioFjE=;
	h=To:Subject:From:Message-Id:Date; b=mbEcE8swElSmVg69TGAnrPg6Kn+AjKYJbK+yP3debtci5NZxOaQgNV0HJlqGpa1ym/LqL97SCsnl7QVbt3SMuPVWk+p48jEdgTfc3j/QYWUcDT9ocVhxFzXTWOW4gp1MeTr0SpuqDaOQw9NHp74T0uv1CunXzyq7IznTC1UE/TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YycTg1Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YycTg1Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC26C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744304393;
	bh=waDFzP40b203bAav28IGUeimK4RWcjPoc7Iq0FioFjE=;
	h=To:Subject:From:Date:From;
	b=YycTg1KmOS5Ay6+ArLhQZPR+9DvKCuf/4oj/uEzhcS3MSk7wFudA8wD/MpOtYDhtJ
	 ZmCvhmjmxp0Ya2pIrnuvUwpjyeGHvRQCrhn6CA5i6Wb9EIUZyEfFXPLXhLJ4yyCbzK
	 UCBycrqoQWv6779CYPuNpI7pm9M9snd03Ym7yPHEL15YEmlco6ogidHEDTlTqAU7mg
	 RMJZpkua53oWWB5tGtKWya+KqEz5FCPbuaZEuOMZBEAPqI0YynoneRmkuelf8tSujc
	 DHOpDFk8i56hwpeD2a4pacUEByWXKU2XBRFQqQRNhnTNXoZ7hC+X5sdqOCf1zbOuIh
	 sRc5ailpexgsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6886C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430439367.14012.17157565828484119466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bedddc1320796feac26a5c723b5803c3c846cfd247b7573bd8a75e2986595d
Date: Thu, 10 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744304393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302171487D1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751094594; cv=none; b=m3TSxIKYWRZFJvTZMGcufzmfA+OCoF0fy5G3Oxr3FfWDZgQdfv60tYl4wY57RRYMwJfE3bFfy5BD22XvkSIQrmqVX4IArHQNGNrS89DuYM4tHg92vO/DKbPHS2KKH5oX3CacEZAFsd4Rts9unm5xyxiM4nvDOP1VveigxrSfHtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751094594; c=relaxed/simple;
	bh=FPglEi2PfNn6cdj5xpszFS2rHkTUXario/QXUc7NgnA=;
	h=To:Subject:From:Message-Id:Date; b=HQDFLeq5k0zoG2yuNV2OHsl7NOWUoJrzR5Bf+gxxLA0pceAWFsPaDDRJMK4vSWd3gBPg3xrAY8q4uyTNUmMtM2/AWyzBDup8tvJihjeuOPgEJjK2Lnu9UQBGna3nIOpKFJsMMZR+amPkbrK2DO1AB7GEL/tOFLIvmwVT+5fbKaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlnfmWZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlnfmWZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418EC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751094593;
	bh=FPglEi2PfNn6cdj5xpszFS2rHkTUXario/QXUc7NgnA=;
	h=To:Subject:From:Date:From;
	b=NlnfmWZkgZB4k/eUWIYEPC+6ogoRYrA3JComN1N5hkmJnHahmVYg+5ITHoQd5pEGB
	 u7weG5TlOn6BKMAyJ49UJIdREUyLoLtj9w5LUQ0Fz1Ik01vBHXBxbh2+nX0gua2kNW
	 WniQJRrZ6GBrN+6TybNh+0gMM1ZcBhM1YL8i27t0P5yjwhJ8cWaJidLVMRClc7D6wA
	 bNpbxSWDRFpmA0cbZCVGpen5uaiXIW7Z+JBl7wImUFGYQiwPsuddfPaMNa/VGiOrDi
	 paOdSuyvVHRN0uPloZRgAToBeAPlgXETeSey11AvTih0ImdfxHfcua7fH0oncIMPhH
	 0oTGWy2Km/KiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109459358.390.10888358281680816892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36ab0e8dbcf801b938407b4bcd05523c6c370af61042139976bab905e0e2516
Date: Sat, 28 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751094593

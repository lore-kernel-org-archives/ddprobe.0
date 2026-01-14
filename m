Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276BB39C624
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768398234; cv=none; b=lHwiTCdB4DSoGADyXVjIA7QlsTH3ShPlrzS43tjIGjZmlAOA83zT6HaaIHTPJBW5HrBtwRgQtVmwzitALeX/wyXWmCEG46zBNBsYCnYPT4HcNFo5s64AOtlW1wquftcuKenP7h+++SVnfZYcj9psK9lT+EHlJSZSx15km1EQx+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768398234; c=relaxed/simple;
	bh=aazrncWZccxxa770n+PhpzcJAb4GZhCJRFejsWhcB9M=;
	h=To:Subject:From:Message-Id:Date; b=EiIrKNDGeMTCGinUfMPmWQ/PHjnUOvwuuUh9MglMUY+F4EyjYFnOTpaXUaeIZRyH+AIiQqvApFqrBGSc/uQF/PjyhTwpcn0+2sn1kHkEahUgKqV1Ceo6iuvQ/gVFBxq9XJrAf0XzoqLE7mzGY1J0YKw0HcnwAY10OtZFMtkPA9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsHDpHQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsHDpHQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE3C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768398233;
	bh=aazrncWZccxxa770n+PhpzcJAb4GZhCJRFejsWhcB9M=;
	h=To:Subject:From:Date:From;
	b=qsHDpHQjMa/u+dGVZ3+JD/B/HyTb2Tuxvfc1irDdO0fvQXBHsL1y1jPj1EPvdDOhb
	 pf++gROUOkoibmVXVSq4RtaLuaPmuf9GDY1vl3mbVzhjAyt1O6siTT+x2NgBd2z4tl
	 lIPnpqhazQxDzDQJ5Rn7G+CsgDXyVWgdr7w57AIf2sWKqbvOaoYm2QZS/jUnozS2Vp
	 IkBf1hV3rVYFJaWvlwb93XEv51VPtl/Zt/Bu8jlX/6t/hZiszAq2nCpTZmbESWSrHJ
	 Pu3FCUMMwl9cHf5eTE2I9vbLnkQUhe0QGBOIov+9Cxsiw6Xn07XWShyqE/MfziSa55
	 26RWM7d8wMVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E4D37E39
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839823359.14606.17859400166560595398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d34fc899f45b378fe9dbe64111e0681468f492b8b8de10a9edc9faac36275cd
Date: Wed, 14 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768398233

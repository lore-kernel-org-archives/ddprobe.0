Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA53800
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734665754; cv=none; b=XGqEy5Z9t2ZqYCDETkWiFY3IAxKi6UU8zt7jIfb1ERvSXe4kt4/VFAdiDGEiz3w7qHiytxH7JQ4hkGVKsaQN6PZeQAk9nw1xnWBGvQRrbj4Q2Pwfoc7ogdpvaTulMVXCOrgToL2ou33vEdWNuUT8eZZNmL+lv//fMIWLfcDiYJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734665754; c=relaxed/simple;
	bh=YTTg4tiQSahUSCxUbj242F5ZBrLd5gF9ZdeuAbpBf6s=;
	h=To:Subject:From:Message-Id:Date; b=fhSDjnA6aBLf0NAnUEy3WAL2282IiZugmUZtUlOtcbDxE8gXTiAQTJWYatw1P2OkiAzawAnrqoE0vxSwGuhVh+jSCYKJajWRjthHh5ZN9Z/0xFaNOpIYVyND/kYtLTu6HZSUsKuXYju75Uzo8re2BcLhK0AcE2C1a45zeXPh30A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoOK7lLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoOK7lLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1BAC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734665753;
	bh=YTTg4tiQSahUSCxUbj242F5ZBrLd5gF9ZdeuAbpBf6s=;
	h=To:Subject:From:Date:From;
	b=KoOK7lLTnbJ7etwFWJErVdfNCQkrPAhW3+Bik6LFcHlKMYLprsliB3wQeYBY6mxRe
	 m6JlVXowYJJ2NTthVhoCN8SE2+MA1+j/oOAtSGUyyjUPeRrvIePuPLbJf4PZhrII9z
	 7hDBmv7Sf2iSjQgW3g0jTbeyeszppRkIkNA3zXjsgm2uPkUUEuRhMlzsAVCfbD+wo6
	 Ld0yBiv2Ug3xd62SyjBfC32S63EhWcgKiRzVFXccaZoq87QUPPkJgHAC1EeLZBBVPS
	 9UFOetZ/bpHO77rIEkxgHTAyAhQubn5RbB50fKw+DlSsA7HdqhRnNuAWfL1KJPLsu2
	 F6AsBQaQ6lAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFBE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466575360.17884.13007758183218334605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e6c516346592b15153c563c9f5272ae847cc293d1e59266d3e1b6a876a1ae9
Date: Fri, 20 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734665753

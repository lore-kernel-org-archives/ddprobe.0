Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227D3224B0E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762024794; cv=none; b=LFz1tYqS4VLA4f2xDP+S9MdQjH5JxF/SnNemt10k6qxJsQaoaR8hy7eioLHQY6z/bwnS4VMerMeh0FYzBZyGA9dDOfCt6EoBc8x2WovN3G41+bCedkl/nM7maVYDayRCkICfSWW0wlZqqcmYb09NDnahMVnWP8scv9qrtZC95Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762024794; c=relaxed/simple;
	bh=A1DgnzVT/I86AoTVlEGNRlW4q9xbdmbVr2BZKWv4dcE=;
	h=To:Subject:From:Message-Id:Date; b=OymewmlYlY85sRXWiQoj6ujl/EXs9NXP11Y+OWEpfPyjbG4zXuQ4emGKVg5/F1FvX2AmNj4fcCBxlHz+rxn1lFftn3bEZKK6g42zNszSFogR74mBao5QUixy0i9HPH1nIIA9WstR0uwJuiXda+1oFbavU8wnCsnYOpLzO0TUcAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+ElhCvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+ElhCvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762024793;
	bh=A1DgnzVT/I86AoTVlEGNRlW4q9xbdmbVr2BZKWv4dcE=;
	h=To:Subject:From:Date:From;
	b=U+ElhCvU2W6JbTk8RXRm41psEbrr9fZ5O6SEA+pcnFGe/Jy0wW1b+YE2xiMWSK36l
	 ii1g6yYS+4HyXrLd7daUA/97Pf8ITeUfh+mV8VcTTc9iVF9yNQ7xfJfHf1YgI/LiEg
	 zuEhhBBfwLRHnjkfGGsdbo6qrrOxQxJwrVdZe4fup25k8hm9rZb8pA2L8/fZfH52Cy
	 ot9ymTvYCrizpsEoow106zBL1Ek6nrgxC68Jaez6OCVtp2RciEuXlrqov4/SYbxLqJ
	 plU55bgkObLr01HIWMGRNXMPAQ+lKCl5Ng6a8Z3LyRx3x6mmfhGjAJslr/gK0frU6L
	 WDWG13Yfc2Cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BFCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202479357.15565.8162488014741119985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dc9a054782cddc8dfa24049a80332b4ce91eb88cf0e30756fb3c3e0a405747
Date: Sat, 01 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762024793

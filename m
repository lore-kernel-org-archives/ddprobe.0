Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F0C3B14BF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781906194; cv=none; b=EeZgnm6UF0Jh+B8VGFU07bW/3U9vnlo/O+KCDygJvLFh+phhhISJhQqxzKYUXT2qTacJNPFZHxgxiorIMLczMCboXQ1hiBoG1ol830c73+NQOORf4sPHk7wFrlS7XEcHIBwdBWC4MDTChVcTnmpcHGANzy0V4dDZUg3sX+dzKrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781906194; c=relaxed/simple;
	bh=n5bpGaBk2/WN8GW4HGAFfwVOBgOHb1+STsg0BVRCIXI=;
	h=To:Subject:From:Message-Id:Date; b=d2vkogbwW09uS8YElhbT3ZsB9du59uvjyYp6oThOSsDeu66rM/AWEeR5rlGAQoLf/4yUZMs1MGGwh+nN4DCA0gQHI2F6ZRkMK5ixTdnPsx7mFZdLuMUdOkex/dfCfAptDa9L764znRbmzhVTuaRh8zDUBFbqjlx3J/TSzq80t2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eatlDIjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eatlDIjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF31C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781906193;
	bh=n5bpGaBk2/WN8GW4HGAFfwVOBgOHb1+STsg0BVRCIXI=;
	h=To:Subject:From:Date:From;
	b=eatlDIjzjFVqeVaH92zkFtHiVNTqP+Z9uFpUvSghHUscG1338zbqp98kCo+HuGB9Q
	 4KNSGgtyYIzSu/LTulLi3KVi77MeUMt6qxBL3JXIcNW/d0t4onLeNfHQkS1/dGRPzB
	 9uI2URJ2raQ+36s7qElh954OMrQm0D6dqTzhYedmbhO2lZGzPh3oil29ZmKxNeenKi
	 h0thKC5rAmKPyCyZj30QVluALeD4iFRxXvLPfIHcc1zD/+bG90kI9MLrC3fZ7HJvWJ
	 he8xJ7CbWppMYSwvbjWxwmY4xhWJkpeJ/pTyi1pPgWHyLY2QFRBGv7xiwjwiyltrAa
	 +RPFJL2hJ184A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56FCD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190619369.7182.5004159468487651454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bf4613b63ae158c89d7743754f496ed01848d6149c14c271d9292675a6b718
Date: Fri, 19 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781906193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9421547C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759420794; cv=none; b=n0CpEHNhN2BsS0Ow77+f8Gp3M2Dk1sMt1+acUMLFccYe3ZAkrQqGlTFoKrbhTjEbWxLhM/3k2gWf8LB9DzchLphzWSXjjVDLegmyZfxTMia4Iei1MkKmON/LRQbKyArlOGgvtUJGpaIhWWzG3WbxBiZMaSi7xvUUC4i3sKaEfyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759420794; c=relaxed/simple;
	bh=UhokShtFlLhaaJVWtLSAgC5893dX6PwoINp9e6dzas4=;
	h=To:Subject:From:Message-Id:Date; b=meWQRlDTSOIV9jB8rFM4zL1JmYrILtJvBUDWOm01uWGRh2c93hc0TTP0GuVcH8hOx9qsgTAmae+cntxVkv8OUUVWJNSj/b9CSE7Xoa5g6sVU114BGQCK2I0Y6nr/30iUEIOxW812LRWavNSbfe+B6z19ZeAMVlforv2r89tq6dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTMdpm8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTMdpm8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDCFC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759420793;
	bh=UhokShtFlLhaaJVWtLSAgC5893dX6PwoINp9e6dzas4=;
	h=To:Subject:From:Date:From;
	b=cTMdpm8QLXfV58bI3a/DTE0VSxSjhCuLuxbyQCmzgNFFJTEzsqa7SExVpNgeuKOfG
	 jPFxyfPlkGs725Z/PG5ymsIkKWqPfpklJTMg9o15DTGROzpHo0f5U34dR/+UcMkLMY
	 H24zh5UivzAWdeN2NGHgCqL47VKeU79wSEbiC5INRyXANEPEhJiQ3pQsway58ZPn7y
	 w6msD9aVIlACAMGkpHUZxWHScd9r6QOXYqEfBESjGpDE8CcdzekjxqI532PmKEPBf+
	 sRUvxivyJiqaplH0yTeC4mFr0tUY9Lnsv9qt8vSPsaYbsA3Cwg0k9gsB3Yhr0Qbvmf
	 DiOujO9ToC2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942079357.17150.16911006481411545343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6583827b27d511b6ea8aba0733d2f738064764a5f4588345dddd6421e5089c9
Date: Thu, 02 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759420793

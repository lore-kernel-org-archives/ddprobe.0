Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEFB223714
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745001595; cv=none; b=W4wUEpjkKVosyL5WXPFe3kRHv0OhNG4QHe/3KMssTVHlOqOKPfR22zCb3R7vVNJOEwIZkluGGKQrc6zk96IkxYD+ZvYKdBcA0lZctcZ11KDeQhdBg9i29gU1BeU8fOt3yCUhrbeRVSJwcNrnK9LYyM06pCMs5XeStFPhBMD5cL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745001595; c=relaxed/simple;
	bh=s8udfO8JGc5ihKkZmGSDND1xG6WKcTMPry0sl6/dr0g=;
	h=To:Subject:From:Message-Id:Date; b=eMdABxzkUxtJM1sjPjbmOr7LgO9w7VyCrgmnNuVv+xfbudgRLe1Sr5qEixxgyzTlWrnL3CBML93qCbTDgmL6xOPK7n7DXk2Zg5jNC3yXneQ5Lkoen7In1m+fT/gDzCL/LjRq+CYOkldf2+f3hXpRebpm2yinxopBLNj4jSSEEhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXTffBGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXTffBGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B321AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745001593;
	bh=s8udfO8JGc5ihKkZmGSDND1xG6WKcTMPry0sl6/dr0g=;
	h=To:Subject:From:Date:From;
	b=MXTffBGz8g4qN8ErSpEYDZ7vGYBozcHQoXKv8V0szzaHp8b7r2JtehT47HFDSlgkt
	 xmzno0Po5/pqEHsFd9F14xTGFvNSMY4pyUPt1DJZBGb/xpNBFtOwvy07/nj/UxXAaK
	 ZM2nAFheya4v2dJRQ7dAGjeU7BcVQ0Hnr5z4ICrwsKEpHqat9u9PxcJPQDcnlYM55Y
	 mnyAZrHrMUSl/P0YVebMUPm7vJrJoo93+Kj+Voz3757HdLBclv5dBPx5t3/rjEsMMm
	 6gnLoViP9eFb7qDMVYjV/bD9FDER+kkQbgo428AHes97lbPL3EOD/KZHwT1UKs6Gnm
	 2yeYunpWTjWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A237AC369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500159365.2875.14395234444458702625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79507365d4ef31276e688464d63f81942b8a31d0c81f0c9e30afe4da430942db
Date: Fri, 18 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745001593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8855321CC59
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786335034; cv=none; b=Yj85w0GF7pcqzkdCKNFt5Qul17mwAdEKZVl1anbG+iGdIgI3ftP6ozN4CxMrw77WzbeARl9aRH/D0INKGJ/61A+xzofAdmFRU8SOzBCfQKypuOMjdt2sT/RUmmBtN1VfaBMiXjN+8c0GaT0szqm1pUVJtOVblRnalEmoY5Ktrfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786335034; c=relaxed/simple;
	bh=LszasvfSpuUUYfAh8XX5DQ1o007JLyBxulbObO1fepI=;
	h=To:Subject:From:Message-Id:Date; b=rrtrAlk3yVv4/335JKIv3bWeItjd5gQqq5LYVPKnIdd4u9fPX8gjPRTcqK4Om780nAMuSUzXyYrr6xFvf4lWIeEnmAjcXfZ37/vIm5i6ehqUxyv6oqxAPulzMf2tfSHwCGwhGqHoW2DdoMkOpPXzRi6KffipvyX2p3BYS+ZdWQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giUZ+z0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giUZ+z0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA039C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786335033;
	bh=LszasvfSpuUUYfAh8XX5DQ1o007JLyBxulbObO1fepI=;
	h=To:Subject:From:Date:From;
	b=giUZ+z0V+buSkHj3e+sjIiC59pZ4WbGYDrQGfnYMevSHHiS82c6iiU17mUlSOrg/i
	 cbfcbMg0D4SaYJIWEBfkX+a0w+jrHuLMFaBrCzclAxxo4taKRWL8XnhcEYgvucBelc
	 tyR5V6x2YDVAgBQPu8Zy4snK0iJqonZWq2c/1zXg13j1BZK2fDpfjxS3x/LD40GheT
	 w+Q6xSgcwLkgntiduyAA4XcT1jgcK8RRb/Xn4QUvf9f/+qsf021NNI16zEyxJXpTjY
	 py+hmlKMY2KJ6DFQw4VX3Tra4oBHc3zPVmxLq5dBjaSTevLGbo0SOYFG+94jfwyUTz
	 atr/6f+dCyCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C45C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633503369.5161.3831917076024422015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2101ed528ce70c9e200fc853cd491ef23ffc8574c6aa28a9e95bc0e7e34a4f49
Date: Mon, 10 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786335033

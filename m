Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369D1C6A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724906754; cv=none; b=A9mRYpbDisQKhDioaeycKOw2nZrsdn7HiwnHQ9h91KVJDyZlEQ009IilcS2DbdyymltnWKZPK3gd4WfIxk/LOGDd+De6/TtP+pPTbnto32Zv43jBD9bYEQsSxXB/cvYeLTgyfyfrPc6A7lrWj0+ETUH97f4+fqiqtyjDIaQLKLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724906754; c=relaxed/simple;
	bh=fyij/BEDYuUcJ8OcWfUFiy1VMaqsG96+yc5ME+Qd2Zs=;
	h=To:Subject:From:Message-Id:Date; b=qfdu9TXdU7e8bbtj5dEinaFlg2sg7542KMP3LXHeVCg/HnMkDOed7n+XVl/oJJRVXKQ6IIc3bf8zeK6jrpicuoGSTb8tGsUBtC2JsTaSqovGj4rrueRqRApWHVDwdtX+7qu0s8yrmQ2/XOU54mPBDnqZFDZfYqC9hPSW9lIuRd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksJSyofz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksJSyofz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A24C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724906753;
	bh=fyij/BEDYuUcJ8OcWfUFiy1VMaqsG96+yc5ME+Qd2Zs=;
	h=To:Subject:From:Date:From;
	b=ksJSyofzAbpsYsRc+/+QDLwZaOYixqnhmr16cG8W0F9a/Ltfo5K8kd05qcvtMweyl
	 BfMsoXU7yoCiF81UsqXqbkZ7rYjZuB2en1/eJEs8vEuTzPIuzfdZkJ6Gtl+Grk4l3X
	 KIcxaPSv9NfCnAkWz4EjmCaifqN1akXU0YsViAZRcevI8kcGInT960bSstDsQjriLg
	 V7NZ1FmjgjDHzK0YTobDLJkKKgv+Y5TQdyeTcOUa12POgreX3g5r/V64xL7E0lsV7o
	 8lT4P1pAqCLM8p0jJaFmCp6WRwawQEYj0lUByhEV+TnMVOTzRCW9o3/pPW3Qy8Oq4C
	 lGOTfX7xzywMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFE0C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490675362.8114.8640795247371466557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963ecca6d74146be97f6beaf5fa90289a971ad979f00ec466f33c279f3deca1e
Date: Thu, 29 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724906753

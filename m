Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599972F619D
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790599834; cv=none; b=FEHfICkSFV0umU/2WzScumK9jQHW6/duT+AXdY4uAICGh/IWmyXt+jwPCz66sKqZAOLleuJhZkdZC0MgqZkT17O/o64kuPfUTgHELUVyFKIchXNH52ZGsrg8X36Qibvxa8xgJSMjMxYQhOkyVl9k9E5TyKO7SyEuF1bW4I460PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790599834; c=relaxed/simple;
	bh=J9BxvjQM7XV9v9RFbA/LXsMix8I2RX4YJ2ErvFce2GU=;
	h=To:Subject:From:Message-Id:Date; b=OqasQEAhz0pOxU5iPzGp0439E3n0z9LEn2p3nskKJf748DmQC6NhePjaNG7sILk2R/54XP3fQo/hm7Xp4hzhdU1tAMLU9FoOSAT6SLofhhJ5UV3DjSckJZdJ8GzZCkr+lGIFu0Yeg1Zt57AnZPGH39AMYP2yVqWMy38tr0zP8cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duH4xfjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duH4xfjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6CCC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790599833;
	bh=J9BxvjQM7XV9v9RFbA/LXsMix8I2RX4YJ2ErvFce2GU=;
	h=To:Subject:From:Date:From;
	b=duH4xfjIjyPn1ATOqkQtkYgchelEXChd/i7APrZzQr8YBL5LsL2fzWfN5Uf/w2bjF
	 XwnFsGfdzHNEfOFB0V683fvlwHVn9ZgS2CHG4tSEMMMJz/hJX9X351WMtmQynfZUc6
	 tkD8gtUKzMD3GXGOMb6hmQaDSdgQsWGo3kTKggFRoS15yFVbse6LrlZhQ0biis1znN
	 hyVf8giH5LfpV2n+lLvO2G52H2+PrirTp87XKs6hzl91Wf9bzZJNkQgi27amD9K+xq
	 QvJhhhGQkk1Ne0aK4cowBH+mMDdtBYlhpZrJbpzHadrc5yUgfqfyDzx18TftyV6xzx
	 rYtMGETsKlIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07DCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059983369.4089.2442217417694560754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3700882f48c741b13d87f89e67952c8e7678b0ebd5ec1f4fe02674832dd52d7d
Date: Mon, 28 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790599833

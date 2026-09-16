Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419784B0C88
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789552836; cv=none; b=ofvDUu6s3hd7Iyx7dyNwrWvWEA5boYjT1fckBs4OlT2s3yIPV3SDXr1NOOy1g63UCY+dBXMX+nzAEOAgYViX+DBHnQlruaB8Je90FVCAL2hOWhspHMgPCd+z1AwB+1pKpZ3/jx2tipwxvWSP3lUPWg5sCsaPU51wn0kc1ivFEb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789552836; c=relaxed/simple;
	bh=uNHOnBMAtGrQ2T0lWsvYIWWcHH3lb7oaK3w1itTDXWA=;
	h=To:Subject:From:Message-Id:Date; b=MPIQCqqZy1vXpLh+AaW3iikkskO+Ct+8eX7FsgIxHFM/e1o4KPD7OXHG59iy/qxfAmNHD/FBH7Ayij/qkNV7DAsf0MK/kJE2w/6fSC63Wg3rahk99ubMYIFG35TDkXJmAGQtmz47RvoNWypijOq8b0I2bFMf87pPWx+FYRnftJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/gNis1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/gNis1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3243C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789552833;
	bh=uNHOnBMAtGrQ2T0lWsvYIWWcHH3lb7oaK3w1itTDXWA=;
	h=To:Subject:From:Date:From;
	b=E/gNis1wN7XmP+IIZW7/rpMaj1rqLVR3jEE11Ty44egbM1ukS+4eodZYq6SRvsnUl
	 2c+8sUtOWd2N3koR6GtiVLNn56I+MNd6gD/JXVmFjlS24LinN4Yz1gtpk+fs3PnCE2
	 uAYsv2njQ0bbxDyi//xlS0WflGj+xQ3Ohsq42+Gr60Koc9l0ctI+6+cTl2r+smCGtV
	 PtOpUjR5Tt8SpmaKJGohPExE574nyOEgRIJhf2M8FGbuEOG03cmk+wPVs9Vqqj/fHU
	 V1XYxk6ap+f1L6dRv1fpipXE/eB3IcvWJ8xoILeBCmBIgyeTj2V+T9tBzgPcENQSqT
	 aqdfF7dRT5Dcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE743C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955283370.14253.14733431452542232130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41336cd198083dc989ab1ce59ce75db46fc383b86189d9e228fd73493a4a5c3b
Date: Wed, 16 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789552833

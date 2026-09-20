Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8461C47668E
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789941034; cv=none; b=dlI0tKgCHM4AVGwFRXJ+WfafuPXQOseshvBPhSvjLe8Hy3HDd85+bl82so6jPOnX8GOCdWuAIMTWJLd2yilLjcYRKwELGYAcI43N31uaAa47bJ8H9UgN1WMWF9vIhPOsecpRwxiLnAwOahSv3wXv/dXP8KLEavtmvT7Ib0AUJNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789941034; c=relaxed/simple;
	bh=3yGX6ywBMVkPpAdRPScGcPxm6PQrHVXGyXQF3ORv7NY=;
	h=To:Subject:From:Message-Id:Date; b=oaTGwa4WeY0FUsmNyaBDzb70dT9B5HDmXc7zqICqwPU6BWJjBzPPrOtuqtteZT01RfWzk2UfCU3UDOP9g6SAjQ3XGtvkvvOOyvImqpHCeK1jEvl3Ni8RhD2OBlkG75fATAem5FSAORx7vyzAY81TKOsmyeurfRCBILCbvaC6gYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzQa48JY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzQa48JY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE9FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789941033;
	bh=3yGX6ywBMVkPpAdRPScGcPxm6PQrHVXGyXQF3ORv7NY=;
	h=To:Subject:From:Date:From;
	b=HzQa48JY6gltth2MaYCIONFSPqZoq7Qp/UREDZEpgSjDTdGg8WyQykkkQI2RFclGS
	 xvp7yfoI4EebggxwkXF0h1kGwnsn3qrfvdXY0J9szJdR+GR4YX2CJWrjzVu+db9ldd
	 EhxmPklxU7FkqyWinCts1jt+52U/QmuXUvI46pWq+p311xJQdpYEA06uv/HvcPKtyh
	 9qbqGee5H36vmbRTMNGe4nf/+Aq5GCiMQAopLDGKPOvp8lquux2AbKQSKk2IV8Hyza
	 VZfXuhdQGvQrcNOcbNoo5mSHMGsKlahGJtbo9NB2AJyL/ZEqSyMIfZ9dyLytj7HjDL
	 R2cacMM2imsgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BCC982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994103368.2017.17884700600766290502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c706a8d05e429ec471daaffa6ff49af1545c6c3392d454e3a16761d3a7d80d9
Date: Sun, 20 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789941033

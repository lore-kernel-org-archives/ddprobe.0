Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE00428315D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758106194; cv=none; b=ojjszrao66ljIA5HkuDLkpyLnP+YIp87N4334pZfmUTzYyKb5CpceEa1OyBuVa5i2MGqGThOCrTYwt8iElEvv0Kz7Q1bvPhQ9Fd7J7X5Txi8IDoekdJ3cENyJpM0aidFWpwlU4/9jB270b38zZ/L/H19l15gux0orDq/09Uayc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758106194; c=relaxed/simple;
	bh=Mx67akEv1Pn5ZiUQxqZFXFF/ZEIg7S2suOpBc4onPFQ=;
	h=To:Subject:From:Message-Id:Date; b=dIAWh3ElpJI6fseC0J+8sQct2T0BHUvjofvox2Z1rB255bUUYr8LG6N+wDxKhtFi2AIMG4n2qncSQ4hDKOxbLbTPnWD4HpWSGWsvNojSwpxsbNHtlrXLeGDPBW2jr41E23LLVGPpm3a5tU639LKJdh9PZZSmSJwD6J956bk8wog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8I8Qdop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8I8Qdop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0042C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758106193;
	bh=Mx67akEv1Pn5ZiUQxqZFXFF/ZEIg7S2suOpBc4onPFQ=;
	h=To:Subject:From:Date:From;
	b=g8I8QdopKfeuj7Va7KYAsUgPpxR5hhGtksqlL9DlxOE5M0bAYemayBICozklgdnGT
	 xQWa5plj68znnNdPo7DXAjEMFl9H9+bybXtXaFshQJ4D1bcxw9GCbA/mfX4O22kANH
	 KK9NOkZDZHsvx4O3Yw1aRYdl9iHEaQCdpxu9i/Ya4mwVhyK/yqA46oSbuTUYMni2pZ
	 PLLJHswsfi5Ai5NuaHjCpkYAEFpi6ZKKDHGODC9WCXwA1LWA2q0SRaRVeFsq6gofj6
	 7kaPNDuSCqiRNb/Yc1LNmB/XxB8CSqAxqo+zw16XE4TCsJo0gU6O6sBgKPDmWJMrgQ
	 o69gShNNWPtKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85CCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810619358.24257.17326402686959166584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48514c1687f82c27dfb6d7e45c1f7a503bc4a8d107b30b607429eff0e1b7797c
Date: Wed, 17 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758106193

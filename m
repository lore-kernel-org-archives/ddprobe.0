Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5837DA79
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726064154; cv=none; b=CaVPCj2/h/gU6J+wWDwE++qfnunAbZIkg9etz/zH7clw0joa+hFWNkk2YIslQc0cWQYnyu8GyDPcQDNrKRU5gryp2bJfJe89vQzaLxBxo9FamOTV8vUfxw0c+SoGS6w01CSX1qoLjQ2VARbjvwgFGJaunNE2HoZtVCLROaXAaqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726064154; c=relaxed/simple;
	bh=gg0OAuCxb/oOWM8CTSICjDtVLOgLb32DK30fsDsvWEA=;
	h=To:Subject:From:Message-Id:Date; b=JiRGLsImSTR0NfYZfpHq2Cq12NMP1LixpOgweZDeiEnUeckDIDkOgImA9x/9rPXyzY5h0gK3VP58EryU394JxaEbKa6IA1DbxmwpZcYeSp6isnl94QMCFobcEcnhL7HMvcR06YPK8GvW61Su7EcFnogFiJb18tURExd/t4gm6Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SosrnJnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SosrnJnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE5C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726064153;
	bh=gg0OAuCxb/oOWM8CTSICjDtVLOgLb32DK30fsDsvWEA=;
	h=To:Subject:From:Date:From;
	b=SosrnJnK5CuBN6gtoAwekBTk9z4sF8jNQnntQPskfTnMB34VCnmPVc0jEvTzkmwv8
	 YTMx5PKN7BljLTR3wd1h353GpD0Zx6U63Vrnhs+hRnqC3xjDS6Foz7Nx/w62dWI2ZJ
	 ROyCiAGoH5gt0PuVpnqWBifEdKRBH2uQfYag/B8vfJtIoZfwo1SU0xC5tIdHVWYt0n
	 klEXJzXCpsgKqn2cnO4giMCkWR40XC65PgIq6wRCZIHJsMYffpspW32rliCdt5UOIs
	 OpCs9AKBWfE8ngCG1DMQX+5OVhhrP/m8MVOZCETcWRUZm5u7lDNcAvET+xnhUDhnq8
	 w7hSJeB6SBVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F3EE49B3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606415359.29117.2761633976612685459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b519696b778fed856e23b3c4b5d38da9c7465bf92fb63faabe426cc5b9e49d4f
Date: Wed, 11 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726064153

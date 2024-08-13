Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E428433BC
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723562154; cv=none; b=D78mtadMvrwzyMLn8GpGhErcp8P9zQQEwcmfcODNzeQTrVtMpUuUv0S/IpvrLWvjO+/KA4LBfa1rS3A3/Z4MK8zZkemOf9UHGSUY44h/YUULWrKtakAFzleRla74gW0mzxUQ5uHkhxcOsEEQisgZZM9Rao3JXH94lmLcgBa8xmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723562154; c=relaxed/simple;
	bh=5q7GEdY6bFoOMweSsYAvf3lE6XsvQryfYEPS+qSdpqc=;
	h=To:Subject:From:Message-Id:Date; b=MYXJhHLTvTxkKQhoF0twxw2sMthwllOU3a/K52EkhLJkpusQ2o2rSs0VgQBB2tCm2R2vF5PDZ2LZfulSIPJeSoica1sPv1nFHdTuxuNXA9YpGSmm2S433C8JYYYRnbJOMVT64DHmWyo3NONdyJHs3mCbrB5eriMRO6ZdAxrFgiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuDa5cFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuDa5cFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32D7C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723562153;
	bh=5q7GEdY6bFoOMweSsYAvf3lE6XsvQryfYEPS+qSdpqc=;
	h=To:Subject:From:Date:From;
	b=nuDa5cFN9+wSb856eLeBbSTMbsmYRz81J0kXO+njgiOvnzgSMvWp9yU6SB6bw8iFs
	 mWm58RV/Wx4HsRAlNDQpHyCevzxVfEt4SCAZsw/LyfYbyz9Co0XQqLyGVSR0wz6ZSX
	 riB9YJC+ftHMOml8HUaJwWLc0UOHq2f3qyUHLH3E/fp0UWgtoGLL9Fs03OyFWUb0Vz
	 WB7Iol/8HtdJ1XuQjGc16qKwS0uFaCbiAzT6MS7HScE3o4yVq6VAhmk0B4z+vEZTsA
	 XdF6qcX0ODiqMqh2YY3NXdfIr8RsiBxbum1VsTEeClmxPICmPOwDeCLyezb3TJKS6o
	 La4/XNKLwKdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B39C52D7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172356215360.19895.1070461571303653740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3189496bc7011e5d28860be51d4adce6ea551fa301b2ad0977ad3a7d2d3e913d
Date: Tue, 13 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723562153

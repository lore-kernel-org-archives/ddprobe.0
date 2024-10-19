Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC9F1CF29D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729306554; cv=none; b=BAZYL15w2NNfVIqFNOQqcREoF9Zv8uHbetnlesnFsCEWrQbVn4pp2gTmKeHnTpURpRFSYH9ULeqNlc2CZkPZX1h2SGxgstVUMElQNQqhIT9tMLe5Sfy3lnj1yKXRrT3XJyd+TUxSbuNY2ADkVfK9dpZIOKNyk33c4cdm1Hy65wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729306554; c=relaxed/simple;
	bh=ROiOz+KDH0ypa/9Ssxn7nJi0aWJbH8frfhWHBhnO8ec=;
	h=To:Subject:From:Message-Id:Date; b=Wa771GtMma9/Nr/FT+5EvfPlU+cekKBc27H+q5J0lSbmzdhxnMi+rHBwsQ/mbv40V4bx9THk7Y6xJ+fIIO7FWueRCKTqwBkGsPMMcY36nTDskyjhNzTQSmbsYknlJauQr75OpnXlLuHre95hSj6BH5DAQ/v/gRSgjTMiG4rWlYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dufgBoPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dufgBoPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA0EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729306553;
	bh=ROiOz+KDH0ypa/9Ssxn7nJi0aWJbH8frfhWHBhnO8ec=;
	h=To:Subject:From:Date:From;
	b=dufgBoPqt4r1C7I3IalURoG0V96riy8eMlYNZ4IPZbZL2GfA1oDbhJqVOc8KiDYfq
	 dLA8pyELVQRDifmZeftewlXOdcbdBGCFBzdXp26ZZmxPpHkwtGN8ESi5OXt23fRnLb
	 RxU6BuHvpj+glN7FQsd66nB9URhEBgYfiQRWHsPXzzA0dCfo/2jgPkH+QXidJdJ8xT
	 uiMQajqnIh+MmRntE7eU70/K3DfcKFLKZzrEIz3NXHfJDF1g7KlxqFTzR6EbcUrK1n
	 kDMAYoVMiXl3NhWTFlisSC947Mh5Gq29S9v1S7bQT2N4CK1jfeKuFKVIckTaDY6Yxh
	 Z6dxZwJK8rJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB0D3E1AC
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930655358.2249.12750505706444370830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3e574f38fc172055e6f65028745737758fbcce411eadde4e657798501d1937
Date: Sat, 19 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729306553

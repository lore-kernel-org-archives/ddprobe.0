Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC533A05F2
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790466634; cv=none; b=tk2+m5xRRINi4Q6sPS97cLZ993oYK7XIOklzUzJkfX91zcHAbEQONZ78my/iFYutKZqzGmEMPmG51cJatpjeW2d4HgGt3X5RhU8U2lfby/Pzhxo8uvajmivVQELQZCELJyYCRtbq4xLAu9JqpoUj/26NuRJidiGPMXKUOo37jNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790466634; c=relaxed/simple;
	bh=W+Q1H144Z858lTP9lVRaSdLmKrx6FElyKH+7L2xDDTQ=;
	h=To:Subject:From:Message-Id:Date; b=cDzstjmTYiqyKJV6QIpBtDLZNjT9MLNXDYnCTKpF7uyzsnWaH2RnweCwcopym/I8M7OSrFCv8KBJbqJDvP2o5EPy4I1WyiMy2cVqXrx4z9rkCo8I/kD1nU0xF2DwvvjbPln7TAO3k3SNmk7NHlaJPs6c7ZkO1NnD7dIC5AbT+ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxnvFcux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxnvFcux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7E1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790466633;
	bh=W+Q1H144Z858lTP9lVRaSdLmKrx6FElyKH+7L2xDDTQ=;
	h=To:Subject:From:Date:From;
	b=HxnvFcuxUSw24HieiMoDwCCWp6/RwgluA1TZkiksQDn5jWWavH+dIE7H/j30aQ0jT
	 rZ9pVCa6jMW8pgqkV9cidRVcmqnI/4PaGTKVSHM4p6CztNeLfQVTFg6Rj+/eYz9ob9
	 Eaey0vuwFBmmIxnAJKlHI6GQcnXzcEvFR04ibmWlmxsu7ulSyzgDA3/CsQpQ+Om3cK
	 getiqOlgVBiQ4F5zmhesUoUPitTecye2iWljgzKeKtGZqQoc/AmkUKkcbpMxw0hC9D
	 vOwumYHkA4NS15c9IUMtTACXGBWT/efnuAlkqaT+6l5rJmaSlWFyyDSAuimQHdmM9t
	 daiH9z41S0a8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EBC98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046663368.31207.18172321821326980626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba6a580a35a1fd7f854ed87220548d60f1aaf94a922d4f83b13ee8064fad268
Date: Sat, 26 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790466633

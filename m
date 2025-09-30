Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDAF14D283
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759250394; cv=none; b=OYPQ2/q8jZDHqPqny22S8G/4qUgXXXKvRKHsDLFhN3G8sSrBDkUjoVm+qgVIir5MhRiqirj7a448pc79X0gjbBIt/AQU4XKpxHmdNA1SZgS6x5P1aHZz6Kv6wy/GyLSXgBGnDuGs+uixAfvZGqk+Cwhl6HqOoLSo/jiByAAWDf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759250394; c=relaxed/simple;
	bh=nnlfbTLF5ZSyLiL7gL2kdLc4MVf+BtPVSah7ECYTydY=;
	h=To:Subject:From:Message-Id:Date; b=hTgskJR03snW7EHk0M9VM6FTQHtN6xLKYmU7SCzurhPutOE0k+3pDCrjPD3u3Y69iUInh0Apio1xDO+BnJws71R1xTGNm4Tuta21eC2vyVMHriyMnTYu/dUSYrpG5t9vO7pkGAHVg0LcDsNAgwAyacIipr7p6Ln/2P6lXhbwNbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLLCq939; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLLCq939"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDF5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759250393;
	bh=nnlfbTLF5ZSyLiL7gL2kdLc4MVf+BtPVSah7ECYTydY=;
	h=To:Subject:From:Date:From;
	b=fLLCq939rVuXa0T+0mgwlGqxyKnzIu6z6Js0QgjAlcLc6d+SlfhLog4ZXfqjZCmyf
	 tty39ZHMV4/rs8KYcaAwReB7SWvvyqwpzP9w3gigooXCDZuKCgTxrpUVIJ4oMQZTh1
	 gD43MYORE1+nQx8pYKSXETGOiJEm7T8FrhF4bv+nIVeItU8aIBb8drebc4APPmK5BO
	 rce/UVaUOsSLTp7KigzBtHfTaLe3lfWOjbRS9pTmWxGlU2zvibo8G5qQ6bpeg4u0Xf
	 ji2kgPzzsKh2e4FSgS2Fyx1n3Zpe7qEOmu0kARTDE9xtQFdiW/22M0gISgIH7Xy6Wn
	 fn5e1bN5zCAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98906CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925039358.25018.13867287370261649592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b09125e3c8d74fba5361d9a238d277598afb30844bef5df119554bb98476a1
Date: Tue, 30 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759250393

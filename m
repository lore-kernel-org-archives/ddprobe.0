Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D52111
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735398354; cv=none; b=W3omZjigx1FBX6G72kqcBL9a52a2RFM5g7keBOrBOVMtxychfPr/NU7k+zbULWT8SqVU+NCyH8H5qmtFf8usfW40/V3odx55ck7RowXJyeKof4VxiJP26Ui84PcWTikSCw9/Mc0Rky4ws3bIFPNAPFGLAwcckqrIGlu4xVRgnL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735398354; c=relaxed/simple;
	bh=fSjy2UsR7HGreOjWue7oypGerlixgv8jYkFoverU5pA=;
	h=To:Subject:From:Message-Id:Date; b=HLmz3wUeEwxVN/SbsFUrQ9grych3v7525M0IWaidBGd2h8EEpHRF7GaaOPMaWqys1GCdKJ3kAtnP/yMfQ4ZUevV74+5P9K7WwvMlMHFy9AxPetBZfl1LWiDj6WflgyTo9bUQ77JSy6OhY9VM3u2rcZ0x7oUEEsqlgGWThcOmhvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgKe/HCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgKe/HCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735398353;
	bh=fSjy2UsR7HGreOjWue7oypGerlixgv8jYkFoverU5pA=;
	h=To:Subject:From:Date:From;
	b=OgKe/HCNZziuG4LyF0yDUO5hmB2LwdLw9OjVXMcv83seAIs5pM9PQxI59SsY6wKlA
	 hbr0Nr0xUCcuFyzPv/9I9hT57p5MvMr/q9LASbHL8br+N7cFBDCQlI1DxTQ+SrpElf
	 d+CNkuSi64P76Q2ZGqkrJWqCQ28A+hf2J+AokuHzlpD9NywXksS9lFaumxMklscI9V
	 kzc4nCRf94jk3EohmhlWGGuzqRMQ04gP2Xk1JVCJHasVwHVDsgdCD0zet7PUYQ0+xJ
	 5EgSstUXuPg82kh8/9HPGLfzPwBPR/HtVJBfdAr23w7niIJlaFkPulD4RkK8mH11Id
	 FxIeodFXtgbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96334E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539835360.15943.10151169835203578157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16f6a044f347c718d01ec49a6f16416831aa64a79be895770f7abdf5705b2d9
Date: Sat, 28 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735398353

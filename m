Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118711A76DE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770949494; cv=none; b=qtfhmWh3gJ800dRRlcDeEBs4eO62VPr3+nMRtgm34UwInUZW049zNM9I3syvH8NaKPpjodeIAPmRNqnQPZdk9gZ4edl35GgkD3VNbfyn2euF5ZloOm+ISdSz40euxk7wMAxA1Pk0+7VUA1e8JuYjYAfh53MHxOFTxmFfH08hIQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770949494; c=relaxed/simple;
	bh=W/UnMAz9q6YBt0hJn02ZZrNXVGOotnHaGpe9D2hE4vo=;
	h=To:Subject:From:Message-Id:Date; b=BOcHUD8AVlFFYarS7q5pDA4cQZ0wVBhOLDAvuQ3rfi3ynxbxJxFKQuFS/k3slhduWCSH1sQiIUi82ypSQuGfqsjjA33HGuVXOi9+VsYvQPPQgSWVTTZe9moJMBLVzdLkyBnESrLuXdw9UOU92eAPmwntJJMcxkE71ScJZYxBJNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZK7sB7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZK7sB7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7BCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770949493;
	bh=W/UnMAz9q6YBt0hJn02ZZrNXVGOotnHaGpe9D2hE4vo=;
	h=To:Subject:From:Date:From;
	b=TZK7sB7ymqiccpy985EYOS8w50geBGPzorf1PtrM58/VzSVyTeWLw9gdDLlt6TVI0
	 l1jTWW20DFbuqlXu73uf0LupHUBVUtR6lTKNIbjUPe7vSovuckZFHvaEWzcLYHajc4
	 ynDzAOhJTpPxmPD2VYyQ/bNdjrjPB9bh5S3EAQIhWnSQ1A3Tkrvw2TpA7XRXBEK/u+
	 M93FfD64VVznR96Hvf5E24twUW0ry/ZDRwL96w0C+APY7QlG/XhjpFNIH3xWol4PYR
	 e/SMSP9ZHLDIaQFpcny48kHe4nWnm9IKmfhNWRljZTF1doZ/34Wq+poiZuRpx2rLO2
	 k7Ft8Ajs9U1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4EBEEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094949359.24245.9057040131084791144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03d45555cd6f6d83fd71c15ae6e97ee67d6eb58467c1d5787998034a5bbe5e1
Date: Fri, 13 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770949493

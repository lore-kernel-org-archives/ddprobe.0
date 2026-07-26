Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633CA81AA8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785036034; cv=none; b=qLw4uk/NvWAhy2N7yzrbdFWLATBQNcwdkz1nAepPaSuvl0jDrzE/CTtZIh3LEDlLd96DOr52lp96M5ObpYN1hTp8vep1FxytRVZ+sV+4YvGr3PnHBmpbGuTSsy3MynFfyHFkVXBXO7yrm3HQ6quxgj75ttq64qAGHgDiYFCr+So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785036034; c=relaxed/simple;
	bh=+U07+YXxqNDkfFTncbeJLW+OInZ5b2duFrG4lAeI5aU=;
	h=To:Subject:From:Message-Id:Date; b=EyeBNbJ/knqTJNl6HGiZFhbfhNQJc2f427WBSrHjWO4n/gvsfqBI6+DiGGUtdWVkEmDKVRtda3sGNbCYTaTPZV7ZbP8qVtMORjGGXCqmNMCDAWqsdiV2IWKLsCtU4k/ruHO+wLi2/YB7zgpM7OfGBxBl28lsCTKaSCLNf5EpoDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHoxIn50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHoxIn50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5495C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785036033;
	bh=+U07+YXxqNDkfFTncbeJLW+OInZ5b2duFrG4lAeI5aU=;
	h=To:Subject:From:Date:From;
	b=oHoxIn50sBBuIoHp+/lXxXn4ws69SMVDFVQd3/wkMuA+Y5Y+/Cd04ewGVWZ2RJ8Gr
	 0HR4VObBT/H8fMM/Tswvz1FvCbLHmL6vR5g+JVH3V5oniFmDbNV6jYgQfGpTiXEFZk
	 je7pkht4Mthpwn7k7pC1h7JL6sz51VVAchfsI+GgfTrR62kTQNz3W4cjLGY/i8xOGI
	 zK7N/I6QqNZs4EF+hIjOXn8FgfEbOpn/M+Mbswf1eUBOYnWhGNlQc9NYJERMyOHgE4
	 Z/esslXa+ZLUOXgOZDPx8BGzPUdPLnfUR+9jX+0ZH/aCgmIm3v0W48s9rY0U/TE+Jg
	 GBCcWyItHvmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF36C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503603368.22633.321282231053175352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed2473c9be8334bbbe2fe6aeea76c44a2442bbda13c6b656b6c220979e081a2
Date: Sun, 26 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785036033

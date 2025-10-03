Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4960B285075
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759460394; cv=none; b=LCi18MxXMN6+roe2XsbPOwBI9Y/hy1JdgjSAt99Y/fa9MRZ1w/U3b87a4wm0u55TfUVOgHP16e8jlFTakuExllfpt3m0H/6Iq3yq2ZUDFORvIR3YgrmDVqkKHfES8vaFDGMqDC7N4JakAPEMGDntBICVVzaSDk/2TtWLFTw4Pr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759460394; c=relaxed/simple;
	bh=qaoZMYQbd31fwh5gcQvFPh313ICLjta+MSHBNOmqOSs=;
	h=To:Subject:From:Message-Id:Date; b=YmVXH2uO1ba4iNTl5kGOVoyQS7ncWKNFtNAfYSnwTOkr4S0aibNsJHlmhMpt9FUz+MP1TCBru5r6MPVw1lQizWcoB9e19NpyVrajm4lsM4cWIr7z2FFoCKlv2OPwQl9FM6jMiISC/hI3a60YHKDqUhOJ3rHK8zCWrd9KQPjVBxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVT2cwnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVT2cwnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4CEC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759460393;
	bh=qaoZMYQbd31fwh5gcQvFPh313ICLjta+MSHBNOmqOSs=;
	h=To:Subject:From:Date:From;
	b=QVT2cwnbCPPGMcHvsba4+YopLiqvdNOJtwr3scIREUtxQIlO6A8WAs2L1WHunzpqX
	 4NroTQKX6GS2j7RJX1i+6MeHlQAGjSALy4KHHBHxA4CAyCj9LP3J5wHW0sqApuU4yV
	 UiGFq/MMzvzr39ZohqWcHQIalBQXN9rQT27AfKdf3bH9p5tyjlGzyx/d3hhL9SN3r3
	 wCdc9GJruvO8+RpfIdk2n3dQSO/PhNbg6/GGgrnB8oM5myf9pO/3ZeEL8+iCALadxm
	 ecTfb+T1vlgQC5sTuFbmP25DxyGa21qFs5Q2wsU9e625aq9MnftvePx2iu4vRQsqFN
	 6YNUT6p3mlSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1CCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946039357.17432.7828713677726100823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e0da3ed80dd8e9da6c073206aba71adda4b50bc861c02a52445bf4e8c9f88f
Date: Fri, 03 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759460393

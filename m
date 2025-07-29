Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3BB27A928
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753789194; cv=none; b=PvWOd+bDSRxrP1zygH7+Q+jKXiuPuYilbmFNfjfG2B+NOidTTv4egkuoxgljPtXM0GEMHZVKM6+woEbw3aYgXpamonHyydY9ecwI+dWi7CaEneufu9pdlUN1qah2aqaUPstyPB8I/s50MbIuHp+HjFVqwdetM5WrGPgi4Zmr9rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753789194; c=relaxed/simple;
	bh=izZpr9yT4JRiRGzbHEZF2CI7JZHsyzFmep1HX4yDxcA=;
	h=To:Subject:From:Message-Id:Date; b=gUkst0RgjRdU/gtkvEV3d1dRBBYvlwb2TfZmOoM3i0UrE5EXvYNvaXyLoCud2ILZ6wSeIf4kCbduEzAY6w01nTSIk8OfWR2xfPDISIwqRCpFsXTwjgwEPMYZMSrsjorDUvNjL3SkKeAS92LrPJ3hOvA6totVkStaXs6oKYQ6A+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rx5RW7hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rx5RW7hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C78FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753789193;
	bh=izZpr9yT4JRiRGzbHEZF2CI7JZHsyzFmep1HX4yDxcA=;
	h=To:Subject:From:Date:From;
	b=Rx5RW7hq6oiu8J8kqsXpUr38q+s8oVZLRW5nuL5O8FLfs8Z8AtrGsp8GtacehHxhi
	 yph4Uf7JD/wdKbT1dWzbsX8iZfz1N6DbkEX+rlNLwBxDIlrWbS2lOrnY1eLLVqAvZU
	 8rMmOGUAxKyrEf7+HItA7xVj7wtrpo6kCTMPtCMkmHTCZ7UASWsNQKKq4XENK1C712
	 YS04wt5NAm9Ed86BM02752PbHI4xiXvLeSSkJ/PvU5GmUv4s6ei67yOpQcnfVA8Cg5
	 bl5sRsNxXLz4qOIzGdsGE/omiwFXFm6MvLbEG5uwA/TAUgFyRuWAws4piHfN26995q
	 nh9452XS/zQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FAC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378919357.21858.11016449366879644455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d434c4c8bd06a21fc0a55dc6d86974f6f9086ec0e6dd47d500f976cc97b94456
Date: Tue, 29 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753789193

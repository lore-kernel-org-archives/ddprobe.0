Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189E21CBEB9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770518634; cv=none; b=dVqFoXH4lg1UtbtmsBqfIYzPdKymmSBm3VEnsmNJuO0AvmbMLEUbwlaxlPI5ukhy9VemOMNsmrUFdBGFIF+lFZAY7yxf1uj7SOJboirphrdjbv097Y6uzI1M/sdwsEzYRyLuvpUDxDI572OTtA383yQCGiQSzF/OcvvRzqBX8IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770518634; c=relaxed/simple;
	bh=fTP0opeQOXbGyHfIVYwAdRn3wjYPL0QCD3TwVoWSIAQ=;
	h=To:Subject:From:Message-Id:Date; b=rw+341QPiAxM/i7TUvoWp4ipRMahHMIkKkdRiuOoY/csF1w3MjdTRC0OldY/Il1Iowq4lvVV19Mtt3COsYvMorpUNMf3/m+AvzzkZ8tdIn2My2m3H8CWeXs/D0dZWd28YrTAkawwxwUhyPeF4rzYuahqZDQCyNMFHM+VkNO5saQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxT6Aafw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxT6Aafw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5EEC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770518633;
	bh=fTP0opeQOXbGyHfIVYwAdRn3wjYPL0QCD3TwVoWSIAQ=;
	h=To:Subject:From:Date:From;
	b=LxT6AafwGLiQVdZM/O9fVgoeoL+iea+Jj1T60FSC3sENFBg73OhXkvPmZIa2DBbiW
	 M/otQyjkfyuCXtzuIVy9dzlGkTBYxkkpavjgUJ48JZ+hGCyRlHEjtBQUcOU3v2EoAZ
	 mJNEFBW1ixhcvTvKJMBdUhPkv8cxlDbsGKdcwTYCe87nM4/kxf3zQkxFjN/6Lwz5EC
	 oiNdB7jOtmS0wolpnk6hgwY4HpyVc1MhxxtDClGM3H0weWd1ndgFuRmiL2v4mf40Eb
	 scy7efSQWNwFCY80C73gk2Y+sohQ3Lu2Uyk8Ch7v9T4WSDP0PwyWNqJd8cY6VjhWeB
	 t0OA97W6J87nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC8EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051863358.32513.5123478194088569359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2039a368f1fccb79db43ca26d002d67c1a5570e18eb64d4bea4ce96ebf138723
Date: Sun, 08 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770518633

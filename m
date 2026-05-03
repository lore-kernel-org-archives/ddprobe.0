Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F644274652
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777787854; cv=none; b=flRlxW5oP7aVsgqFtUjM5940Xs9qbZM2VW1xPU4ZdWfX6TVUTaTnCZe2GQOhbNgo14me/vs+TEEHBY9qlkvtyssnyr7cNh7UOciIYXjth1x2PzyndoiXLyZZrNi9sne8f3h0j93NtDVPMHS5M8LifzvqCH+kcFayWpgx1lnKWWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777787854; c=relaxed/simple;
	bh=dvVwb3Gdhem9RX46YDXjuJG6azjyKdPdGBMsGAoUd7E=;
	h=To:Subject:From:Message-Id:Date; b=WSEBNRy+nyhiPpH/4HT+OfvBdZvwZQI9FSs/Ed8B+lSG1eLI8lHCDZUzasLAGb4RTkp1bsXkid2ZkxvLMnStQIU9zuCQMV3t1yCHvSRZqjdIhsSFC2JrjI+TmhAyplkgsPdU/76cIy2MFeXtbfguehTxcTyI6mVhmVPP8cSEmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLsglFqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLsglFqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF67C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777787853;
	bh=dvVwb3Gdhem9RX46YDXjuJG6azjyKdPdGBMsGAoUd7E=;
	h=To:Subject:From:Date:From;
	b=rLsglFqZDck0fnkmgq0uJD2gTd9DVdTcCXd/TQDKZVbJM1eN5XgMqUqM/FDLeW1RE
	 RYnDJW6EfQP3oHKKB2cJ7aaQQhon8Srb2OLRKE5yhoief1BvImi3mhmuu+/O//AhHE
	 u3t7Ow10aqMZSNrObEu42lW/FG04ATqB9ndB7E82oskQcO6iFq63ad1VvOI+sTIznU
	 I8T1uBxZY3+yexg7uzvG0RAbU+KyrjAaaToFDbmT06Rap86KcccoW9Ix6Zlb2YRWnd
	 jZaSjZZUIk5XS4jcqSPa+pkjUCbHlCvn1S//QlQsT8yNbselid2IQRpyCZdTNogw7V
	 yIQWczMiPKKVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED6BFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778785368.14779.457602490265582786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1925741e4f506599cdf18983bbf1e461a1a79a7e2ab054e82603379ef5a966b
Date: Sun, 03 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777787853

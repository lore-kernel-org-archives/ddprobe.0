Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ECF372674
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772619894; cv=none; b=fQwBxUedGmS9oUYVVXI5ZBWidBjlo9UoT01CCdH5QPxuupsP6FmBQm6r/MDE9+7xrbOSlK9YTn+LdfsksxO6Cs8Coy7m9cRYOO1llT3+oN9Tg5nQlW1Y/R/M69+rws1NG0XaVpiDVtTR9N8hWw+mivG8lFav3b33J43Kr2HYvbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772619894; c=relaxed/simple;
	bh=01DESPBaggcsUspfeWVAZWndGRxGQwsklKOAkLLumJw=;
	h=To:Subject:From:Message-Id:Date; b=Rl8BUVhv5DX9eaItkLajTJJruzYRLcWbC+YGhxR77960ijmYwwgrC7zMTX4lXlnE7iCUNkrlalxBAOEA6wiSa3R6rZxiy+57FKEYj90PAg4rdQy3H0UgIc+cb8k2Itl5LPMAst6KoKYy9RMMfdcfvoDoB6wrmQXgJx4UNsJT9hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcWVFv7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcWVFv7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6DAC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772619893;
	bh=01DESPBaggcsUspfeWVAZWndGRxGQwsklKOAkLLumJw=;
	h=To:Subject:From:Date:From;
	b=FcWVFv7NxzfthimGMYu1ruEzOoIqU2CMjkESIHBejBcJB+wcLTrttJgZS1GUPO/Ku
	 jA+Ds1+mfm2kD8TgVZ6Obpkbaf92mvAyiA5+hupxcPz79O0KwHVHewbzTXoCVwkm/Z
	 Is5PmbSgDAm2RbFQxl0Q91dKv/SRexn3OJc7Bgb5Up/MKmShqm9RgEn1E79DTvT6rA
	 Qe1GH6wq2r1phsXViJNDjIUb2uYD8AH9D4nTCM0LKclyeYXng6zPa/SeAvZvGo5xOB
	 F+i2V+BWdtHkRqft1e+czdAgrm9Cbx/FvbrH09W30mzjWa8rQXBRSwBa3MqI9d6/O+
	 98o3nZgkQNYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98546EB7EB6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261989360.16380.1695789829913238894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d9ba12d049cb3f31088e5e3cf5a376b7c702f1aa66a463efd46c761a1e2e65
Date: Wed, 04 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772619893

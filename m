Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD881732
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766015034; cv=none; b=oqmnTwP8RXHE6IJIKjmYCzB0TEloMnWnue2ks9JR9cFJdSYe+bCvJ16gUWgC09JTJ089frcWCVlEFWIxx5cartQ5XYl8w7JPE+WwSTbnjUdRZcZ4wlugMV5Zd/KIzWni1rlbcYAbsgQQFdlrB/7Xgz+PdNBUiUcl4TTE3O3XEFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766015034; c=relaxed/simple;
	bh=AHD6F7CTeND6r0OHdVlGi2awlJirJt3m0AE6AIh0mgw=;
	h=To:Subject:From:Message-Id:Date; b=tVTxl6z17Nkxvj0kU1W6edcGUnr/n7dFsFLszctHO2dcU+hrHll4atsP1fj8aGbA8arwyHwvsAxS17ObIErlAe+LZrxSFRnrgXT7DOXlmf7EZkgSxfuqcrEl/FoZfjsB679g/vsKKfMvLhYftgt71tj9KudJ54b/YSZMjz7lPsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA0IbP8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA0IbP8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766015033;
	bh=AHD6F7CTeND6r0OHdVlGi2awlJirJt3m0AE6AIh0mgw=;
	h=To:Subject:From:Date:From;
	b=aA0IbP8CUaqYyYYljTIu6Or/4GCj9iVlqfa6Oc1IJq0H2xF6Rq8Y0btEEATXisL4u
	 +VAifbg24HSf7hY03o2bmYFrfr+3wK+5VDFdMKbmY6rHjSYGkYZgwOoQZHpSzXdAdJ
	 P3TLPFZkRtdH4g210NOyS5m1k+8GvDdw8YHA7WlxKsecDpfAptCdNbSncn4QRVewPy
	 Bepay7CZG6aAn88fMqAP6UfVkYvaUkUgDtevwoV9nvnNAdDPFofS9WPMHYKJsRILx4
	 JOaFs4M0lPQlau5ynsgq3bmD2bs4ZOYmQ+sB+EfibSKggzH0RWfxZKv1efVFTNA26o
	 AG/SZiM7XYkVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96023D66BBB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601503358.30335.7706222709180504501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db1f5aaad76c66c8e7414c9af8c7a36e15689a6959d3649922d351c967709a9
Date: Wed, 17 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766015033

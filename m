Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D998F4E
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715133743; cv=none; b=YSR2A2Nn4eWtBxdPfMPN0crkTrZfCn3pNetc3air9uYwpCeGNpK4rkKhVlPFnr9pXSNXIUQ03wBmsvM3gr0YlwDWBM0HtUFZ3SQ4rm6lcUfl8RwEKFE/HkLd+621rTmy2Dlp2XC5SvGrmDkGtijRyvOCayN2uDNGsTp3TosXjgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715133743; c=relaxed/simple;
	bh=H8H5Kgu365bo3/K9mEZIuvCk32RqAfEqKCZ39AZv0YI=;
	h=To:Subject:From:Message-Id:Date; b=B7/WY3YZMZrLuiMb5R3aK3IbHd+Uuv0K+3Ujt98jfGJvHki7s+N7YMzagqMoPOJCimcXp+kQT2hHruHLxT6p9GPBRXO+oQRGxobdMxfjsQfCMPd9/gjm+Go+Gyj9VOFcrKWUcA9f4G4Dk2XjmSPNPlr3xIQXiD1e8+9XjTX8wtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPdpZ6AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPdpZ6AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D671DC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715133742;
	bh=H8H5Kgu365bo3/K9mEZIuvCk32RqAfEqKCZ39AZv0YI=;
	h=To:Subject:From:Date:From;
	b=JPdpZ6AFe4Czvx37Xias7c0YqPtGrW4Z7ZfhOU+02Lt94or+HOax9/XHETUTcdrFk
	 EdMtNSPpufbElo2AeYDB2cTZBIQpAuEVwDMBsZNDAE+lakM4DpJE6A0V3NnTIMTtzG
	 uI0rCZ0Xsaqt7MRYiN1c1bW7OeRNdHrsVMRswOkPvmjEg/HlRJH53v/2XLDLxTb7XY
	 aMjOKaIRxy/0g2iXNRtA/SGT2xqfwVI5lJJX50oA4vqeAxAc0u09mH4ZbNnxfVOL3C
	 vDqChIzPKl2pYXdVmqrWS6P/hUb524LUEjySzjot+hAhdsz/SoUNlAyJgUWZNPGtGG
	 FGDXwcgVJSj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3134C25B74
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513374276.17585.7962931171639387488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376f1d514146e53fc3a33a6fac27e2d2427505b19948798dea538cd60ceced23
Date: Wed, 08 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715133742

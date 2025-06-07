Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55603145B25
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749328194; cv=none; b=sYaS+BNBfPKieRQdrwUxgeTndjsn5L/IsAJrM83NL00Z74ro3rlF6N4ctu5PXfFNYqoX30qRiMYO0F1WK470QICwtcyaJRCF684eUvSR2vanRrc5bdCtEbfbgbbQTtfafhuoZdnPKg8wRn1AmNHivKK5Y7FHhSJuzpG7pmxIprE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749328194; c=relaxed/simple;
	bh=oJ2wbT+X+X72tb1sbVTFkwTTKjE8Yt26vTZAZD33sTg=;
	h=To:Subject:From:Message-Id:Date; b=sC1VO49d4yURw0RK0BqF3ccIaBz+vCBNBVUb/lDYTUyTaU5NfAG0fhsn1INy7WJCulJ9pCb3eie9p3zUuLlqI2CKI1BNR/r0JVIiA6gyTuiCeVvcOGwxKtJNOw1df5zij6RwtUG2IQEg++oAC9H3j7PI6YKg+WowX0DXgyim0nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eakmszLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eakmszLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749328193;
	bh=oJ2wbT+X+X72tb1sbVTFkwTTKjE8Yt26vTZAZD33sTg=;
	h=To:Subject:From:Date:From;
	b=eakmszLlpx0DZ1XQrSNDY/KoifM29MMNNXTfWEmWLohKondcznlBiFm/n3yiKqzlJ
	 txV0yQxeZptuTHaZC32uvrOz33GFjaH8unXNDslpjk8TKDWl2i1BnEIkI8PcWt+/2f
	 P/y0cp8hEuPjb2LDQi6BUiSmMlgls46h5Xx8Fh+gR5XiULug3R3A5gH9YgeEG4aCXR
	 W6Nii9zqQyfGE9YwLyEw+P5yr2JFExq215FndHRx/VfPhKJuIdCWqDlIwP8WBWoTwT
	 L+OWEQPQucJfLwORammlQ452fmo8t5zKJiFds0yHsAR0eyffOqwq1MyKrxTwXQVz4G
	 /CTcs0vm1uM+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE68C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932819358.22958.13596362644983219669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd03419bb0801eac3bcf8a4ae7ed56ab264f4698bbabfd7d51dbca67c4e5dfb0
Date: Sat, 07 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749328193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780D1D63E4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769475234; cv=none; b=qe8bE1pohkruZuE0G1LtCqeIU6jBTZJHD4czlGvJ7rClhChzCfXDGdxAAnnA2ICOKwGsL4W/1g7AprKBDBHSqZY6fTCTAzhOk3hfKMTrd0Cq2eB85EG5ND7eJKG4I8bKI7pxcn1hvyi5nUZpAqT0jMj1HjFWk7AvnOS1CX6n3aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769475234; c=relaxed/simple;
	bh=t1P3hAzgd1mEjfeMY5RjQILJAm/1czGlpNCSOtSibIM=;
	h=To:Subject:From:Message-Id:Date; b=T7IgqgVf9Iyx6Oz/TQj0EjmURBgjbewytdBRlnlPVFyUJ0f/aySDBYbmEiue8dFb0KEsMOfIUffjxjXqJJN8Y2U34BWFE2NdcN+XT5EEtygp8CzSv4Qjf+kSpVdMtA2NYPS9i4lkT4A/gSIU3T+XxinEoS2ofqJA8rBOmxe8M24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZo700Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZo700Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FBCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769475233;
	bh=t1P3hAzgd1mEjfeMY5RjQILJAm/1czGlpNCSOtSibIM=;
	h=To:Subject:From:Date:From;
	b=QZo700BbL0t5x6RfUIOBtEg43O5Pjw0APl2qZHh+DYeKYoXhyogpmCFfQOz3JL3sl
	 Ov/fl92WZ8MYZGZSXLlUt/9vQFuEnqUN7RyDzhbxvjU09iTVskzIxyqRo+k9MSxX7P
	 QztdE/xKepcdg3p/Rtl07N++Zur7LxN9obljFHQwbpdAqDnpKD+7pPsIgNoiy2D2kM
	 ydmou75vF8IMACtj1txJIQjLBe9H4i9AR+xFPwhpZHG1pGIubGiqbXKPyXBveMm3+T
	 GiQ7BGsN8dVHOlxsNXrPGuUmO4lK7MSS203W6cdhMX2RlJbOCsJGijxEebdy0j1D6/
	 Zg6tgYqgANb5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45DD1951B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947523357.32095.14774967457986163449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df27ddb0e2028de2fd37041c31763a4d8223fd3aa7df6a4457ea988f72a81a2
Date: Tue, 27 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769475233

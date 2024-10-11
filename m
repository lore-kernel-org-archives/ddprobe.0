Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C9A1D175B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728690354; cv=none; b=EfxWY45c+QSEVoC1o9N5xjCmR1yrB3pjbqWsX7+NCjfxOeJDpH+isWUaB1WcgYyM0uBop9OLyoYSpE4exJ6+XWZoNRKo3pksx0eKOwDCjOnjdhvWlPcRJm659qjnhARdjxGhD2oHZ8onaliMRvThsaZStpoh2og6YPDOkjKCU5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728690354; c=relaxed/simple;
	bh=P7EVFrWcAsaVU+rqB1kf46DYQm2KbWr+/LVK4J9Mt98=;
	h=To:Subject:From:Message-Id:Date; b=f+zE1YodhglGT2mOhIjNi+aFM0RkWxklIBCi+j/GBG8O/+TENBkwDV2iglfkTZDxGfHhyY45iozYtznMCk80dB0brv+FjWiLky4mhvkLt5nTKgJMJLANdtwiJDWrzorNnyfwqIGvXLGC6RzYWhvZkWrUUT3LAygax/bI0lic6sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAGudG2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAGudG2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B054FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728690353;
	bh=P7EVFrWcAsaVU+rqB1kf46DYQm2KbWr+/LVK4J9Mt98=;
	h=To:Subject:From:Date:From;
	b=WAGudG2XuztdHd3h5W1iatCH/rgRFmCtSFnMpRlgdrEOHrGAGuLiQ8O3O6NKLt8NQ
	 3STGLpt0amLer1uSS1GxGuCk/vSYmosH3esSssw8Trds6NG0SNQ2zeH0x/QZovFIEb
	 zp/949aoQVOFrBaqI8Ks/Unijuf54vl/XKWvgAJyOZ0pjSLisKhRQ5iCrWK3UnUW6u
	 ItbRfDPTU3Plml4H6B7OpfphMdyCdsxTs1kwHXJGTU/OsvrNPoWqQy3SM4gVauoa28
	 I3xGv9BEBQDHnHnfu7D4wZqQTeteKClIc10AhCsbDzklDwDzqhJcWkflM3Cl7GzQg+
	 rWg7h2C5pYofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994F1D0EE1C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869035358.24537.7199045111171741252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01640135e180b791b49c8b8b283fe09e4705b9d8028aff4af710b14562a5588
Date: Fri, 11 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728690353

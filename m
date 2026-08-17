Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C5422A7F0
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786932634; cv=none; b=oqHJdcSLgmHTvripUS9Kih5TSsnxzFDuENNBKd5l7ORA82iHf4aVKDxA/jWb4UR9Fqg/iCWgi+uX3WJRZzGZgiVepK+oaGUokUzbkkLWp6fwAw/vM6ANJ1kBQRC4IaOu1uh9pNTudj+ARyFp08oSPPn7iM2nLDzgcvac2s3fosI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786932634; c=relaxed/simple;
	bh=UHrdG8pxBzlVdlIzywGGPHHWk3CNAW2aLQV0AyRbhoY=;
	h=To:Subject:From:Message-Id:Date; b=cq4IvUtFsk1IbEWIk/W04nkcVpOae1/gj215q/BuRseSDH5tAZY4C1HWlqhngS/RiBwjMcJ3daLE9r5HD6LM4A0UENfslBGImV1NMQIkVTRoC/w9/cIcu1J7phgLVYhhnuv9qIHo/VeytXxKsoO872xZwQIADqObF4TBOeZrRM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTajgFyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTajgFyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5933C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786932633;
	bh=UHrdG8pxBzlVdlIzywGGPHHWk3CNAW2aLQV0AyRbhoY=;
	h=To:Subject:From:Date:From;
	b=OTajgFyuKh/o8RVJ+BgB6PRfRtgPV2c6VeaHcxaJE70+VCxlxGdSsXGCA5K1QWrt8
	 mgGIR65TPMC+8FUsMKrgALT7iYamQfihJ9tCxf7LehJJ+Mr/UV6XGTGJ+7WcjMrlCg
	 vocRXjE42tHI8CaRUNztjtuoAIPekBJTw++34tO1FY7Sl9TJzlIfBnFrri+C6KwMWJ
	 Rdc9wVj6a5uOlj2hcDu4JtOSH0u18L4vRZJQC1AUPmS2W6zNygWAJ7vQTCv0NbOXs2
	 Efklz51AumZsC1B7+/kgNUVg/ypT0mQVWHLOVJHsju3EIKoxw6XSKEj1ueWMU4bW7e
	 XwZkxLkVSoKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B9C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693263369.6348.1344580995366254648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eea8e15fd79f59dfa52c6e19169c9b5f2b70a83968d7dc74edc3e74799d8b2b
Date: Mon, 17 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786932633

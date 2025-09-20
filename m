Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6678C9C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758360594; cv=none; b=ktyyS+ev9cSC4gVoJZfBNM3qNSPpkJuXJBwsDQzleGl9ZpuRku3Wy14tm3s8s0QdjrB0fKdXwSXprRDeOny/jONTTLLsPp4koeL71TpaRwrd8S8kY6TRW/Sd0bHmgUUqjV07hFisDvtwCrWxSMFEhxpljSo6yLTR0ciAZX8i/qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758360594; c=relaxed/simple;
	bh=0RuqDHh8h9NbEg+gt7jJWgNQcustqwamSujrAFu9xFU=;
	h=To:Subject:From:Message-Id:Date; b=E4Yj6cAcCkEXkot4Wj/pHnoavFZVfV0GjyOW9I5egcQCEDKdHKQakS63Cu45esbDtrRsihPhE444lwshfmRv5toOIj95u8fQSTAKOK0VZRvZVpxi/nBbJPI9rgM8jQpjOmQkKrLG/K+d5AHHXGxNwrAGIHNPtVUyWe6IyKNxi9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNi/gygX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNi/gygX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3C2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758360593;
	bh=0RuqDHh8h9NbEg+gt7jJWgNQcustqwamSujrAFu9xFU=;
	h=To:Subject:From:Date:From;
	b=mNi/gygXskPFBta+48NRdtMDQjslZ81cLZEeVCT74nXznT1JU7Y1EUYLrWFc7bAqk
	 dzjErsoU/lSbvVAo2oPrlzJPTZaux+G8DKNv+5/C8mKF2WLucgiECm+X0IYmxAJ3d5
	 cgUZ8dNWmX69+9d9YTkb2eeicQAiY9kyJNen/mX8S7MFdjOaFnMaJZUmZ59YB2ik4u
	 VmBJ/67TiEwHepqq7Ok4KPYpNVw2OjfXwb5LcVmQjM5rfmt/VnsX/QhvxXYnTAwbIz
	 Hjf8WcQAJvX3vyXY1m16Djv+9c0qA2XhsOHN/1BFz5GlfDZ0okh9m78CUJG8wKWPAN
	 cUGIAn3wD65qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A568BCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836059362.29864.3920131874340494558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e42839279edc1c3134fb52979a3a03b499219630d98ea83c7145717b1b13ced
Date: Sat, 20 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758360593

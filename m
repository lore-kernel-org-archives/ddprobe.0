Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED12E2EF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757316594; cv=none; b=P+P+8Ft9nhP/S4jms5DjkOOSBZg8Ldb1L89HQaNpQ23jbRnykH+nRxVwZfoGyxXfR46p1rPBuqUskljDZ/xVVvUYrZ0hVWjH4oJThT0WIYE1rZ+9lTGUthZuD5FNdxB420CbidWs/qB3CsZq4DWRurebW3EZJKNP8m2ELIqmOl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757316594; c=relaxed/simple;
	bh=fZQ1SiPPXjGrkXiSHZyUux/gIah2iEo/RGU81FDfBAg=;
	h=To:Subject:From:Message-Id:Date; b=Ga/y16kS2xtyqMGlpn4Gl1FYamcgs2NtI09KhPL4lEYjcwCdyi8KuLuSSwmy25mulP43VW28gO1plFnT95dY9cpwkdo5hpnnhLToKchiRQSo+JdYqz8188eMf+ohRJX9xgbaX72fIqGbN6nVAf4atyzCgpIFBlQrvF55o2cPbs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7rHLPrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7rHLPrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757316593;
	bh=fZQ1SiPPXjGrkXiSHZyUux/gIah2iEo/RGU81FDfBAg=;
	h=To:Subject:From:Date:From;
	b=J7rHLPrMmxhu7MDU3gSgEHPXJfz8gWL3VRe/7brxJJJmVjHrnBZLyQM+8L9qFVRCS
	 HUmJaAbzLax0fD/AZ3nFRXm9SdeEfdaVuNKQUslhNy5dru8ElxuBmM01u6srT483GE
	 +nF2Poe6I4HXIKymvyF3C6mkNcHUILdLaFoeRl9yT0dL7cKINc5whTaHrph5n3P8Uo
	 BIS1NT8J4vHOC9DRcuV1A3IaCDCRCj4lw+pcvpNQvKFiMMfOdiSBhL1lVdjUq5EwmZ
	 jitvCaBskVFPT/WDS/v6X1HaWKvQjC8eq7nBUIOxGX57DsKTK+TRhlSuIC67H8UAD6
	 Zn60KJgp4fLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193BCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731659358.14428.16063839604495097013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0d9073e3f1c9b7a188edc5812a6dfe2a18a0b3774bfdd5d6d9cc2e9513b107
Date: Mon, 08 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757316593

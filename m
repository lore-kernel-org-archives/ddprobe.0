Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23431283FE5
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770724434; cv=none; b=M5QPAoZjmEdAUmnJFHwEXYPLUJltlzbIlYKJ5fb3uh7Xnzd3Xb6czZDYw+5OhL/t0EvxSNla7quAeRTgINBNu+HLtlPrso75HHrtOPkjpkS6MCl+ONiYldKtzW7q/13HPq6G9n2Pu+4m7iBLoDS4VwAky1ltE/47jKP8GZX7JXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770724434; c=relaxed/simple;
	bh=hYqxxbNpM5cXBpqYVf+H/+LcE0qvLfw5QRFbxD5jzj4=;
	h=To:Subject:From:Message-Id:Date; b=ETmRz8AvKlHB968x/oet/T13h37Q99njcZ6MnibXxuR2aIqmFBeTCQXQRa4iLD3nOr1tBrmyusjugnzCczeaEAxaOVIpNJJ0LqITmbf8tHwgymUYO+QfAe7nmjRdZ0NUmQmZbd8jFrcXGDmWXHE74A6+Vh7U8cLvDeWeKGt+EoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZQrRzqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZQrRzqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83ACC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770724433;
	bh=hYqxxbNpM5cXBpqYVf+H/+LcE0qvLfw5QRFbxD5jzj4=;
	h=To:Subject:From:Date:From;
	b=TZQrRzqjtQ37TCGyZfCaRMKZczuVFwoZh8czDsKCzgq8t8uJF/OUVSE8QG9MH9iz/
	 rDrCdvFGeN2ErCZQ4yPkuEe4gR++ATxg0ibJXREaYO+AbC8xKAeJJM0owSO6W/UJX3
	 w3I9V+4WpJs/AzMPiBzSOOcpgJup0RbD7iQ6P0uErUSRPcmkEtA48VRO7PCHYX1pPW
	 1PmgKNPDO2grMvgfoaRhuiKrxhAsWoq4QNjlm5sVwZ1tdVtB3dLrxzvNfGCGi0Ctk3
	 wE6z3CJ81CBjZvBpBzSoz+rBlBVtbmfSWxXV9IBJP+D5zv3Dgso4HPKubyIXJJRlqk
	 CMd91p9PMPemg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD4EA8102
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072443358.27315.8869318874071664653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f5fd5e8f9c44ef57b9188cffac2f807a4a3ad787e19beea0490b07118f88a5
Date: Tue, 10 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770724433

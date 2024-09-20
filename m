Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2992ADF5C
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726800354; cv=none; b=cvhK30DGQl7mGoRdT/JznSYW6DfPekFVYr+I6j5n/0rb330XTF8ya+Oe7/oIcmxF6/ypjxqxQzxMu6hNCwdPsRvoNkKo11N/xErvoZDqFG+Vm7HVZNaErWZyt3Fl293NJ2redhj8HqH2Cd7y015IsWI6m2SedlPp1RZoN1yJSsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726800354; c=relaxed/simple;
	bh=bz8c9W4aK5B/MCV8heIuHezNu+/MH7/g41dIlG2KLuc=;
	h=To:Subject:From:Message-Id:Date; b=FwAdRgwh1Fi68ZtkXS4kUwCPY6wHbkcrueYZpQL+qQH18F/ru7/B7liW09SHTXk0s/n8grMuFVZXpL/rUqTa1Q2ITnia5sAP1dxzyNBGAkQnPioiEvNRVpixjaqWIk3VWS1k70SN6+NhSgE41zLOtLfllSd4zPg3sWlg1tGphmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4Nt8DoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4Nt8DoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB202C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726800353;
	bh=bz8c9W4aK5B/MCV8heIuHezNu+/MH7/g41dIlG2KLuc=;
	h=To:Subject:From:Date:From;
	b=M4Nt8DoRE7R+SGnQwVVQCW1jZtE/llCqEchSnREhleGMuUs0NGeDUDL4g4MdN/Dl3
	 dRp34KTSgI3IhZ9utzAybbCJu29w61AqICrHZnwPd+nKmMAsi9i49Wh7XuS7WC+rwW
	 Ztr8zAAW494NfvpTd5Qlq2EdPNhb5ORxPE3/L3g6Bc9Q54c8SZmxiRU3Okvc2LUIxF
	 5xU7Tew9hmi9YTHTvbOCKUpOBP9VLvO/f/eslc0j6vGb+Scqj3yQy3AbHQ/NuUDjRp
	 ceFyzmflnCdt2DAv87ZXmoZah9RAe1HQAE7MVYz4794KHgiin7dL4VMRhZMn00X4mQ
	 qjZViy6HZVgTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97406CF397F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680035361.26355.131287961949591315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f94ec66a2725eca93b8a1eb54dcb47b54bd7d1710020654a115dac437c8838f
Date: Fri, 20 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726800353

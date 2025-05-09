Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FB02609CF
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746829795; cv=none; b=sCSWGmQ7kusgky3TyHAKFRfneZIs6P/DT4C7c1UwC/MHcPjFoGJjUJ1h1pl7qcN92FunPBHl7X/k2/EVNqHmQRYqhgC6IUraxnqjaXnLcoyWzzWBNXAn3d4kWnqPAUYdlaBCnDAfYNTgfcYKpCzw/Vw2wV0PpRMyJqWolGtfs/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746829795; c=relaxed/simple;
	bh=0+wEaZUhwYaheBg+gbPZ7uPxgkURBhgXhFQjb5xc4dM=;
	h=To:Subject:From:Message-Id:Date; b=cM2xwaLTZP+hAOCb7UgSw1dcbaxg+eqzAzHT/4uIYeBW0/27j1QM6cr+Azb8Bie/kiEnFvptnRPmHaVxG7soULcAP28nabVaMP//svORw2ETN9rSi2vaKQTFgahNUYIFb7H6aiIKrCzxLim7X3jrYNSWzKDCTBQiTT527/xCwe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khMGJhuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khMGJhuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB3AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746829793;
	bh=0+wEaZUhwYaheBg+gbPZ7uPxgkURBhgXhFQjb5xc4dM=;
	h=To:Subject:From:Date:From;
	b=khMGJhuLEwfrIlkjJKcFJmY98vqsbau/G1RwpBmna7PpBww3io7wLI74KolbimnGU
	 6YWfTh0woUbY7QRrUUnsGIYyNzpBDKYjwjtTz+Fv34uHCb+sjilBEB8UOxOQgGzLGM
	 mR2Wp1rd1vEoU44pe28MxiPGR+ttBbjmEzyY2O+Rzk1bbVP8vRTaTkeN7RLKlI5LqF
	 k8xA11obtaTyB0jhEQytBAWprZHx89zHwShQXkFu3/xKKjL2Swo1Nv/aq7K6zd2zqj
	 2P1UvyBLx+JwkPJEHeaKWw7kX/5YIbBUNV4t1H/YArh7taON4+zJWZYtoG8STMAPl2
	 sIhL/iy+9VpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D2FC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682979361.22500.1027143978409766583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bca474f040007dafdfee7e066d52f9ac595a7fe1c3266f23f4c4d6932232c1
Date: Fri, 09 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746829793

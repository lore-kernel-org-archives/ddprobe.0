Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF194AD4A8
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791320434; cv=none; b=Oui4BIjSAip/kwk+nQxVoGBJSvp5oHbDjrDz3ul2At03VGQjtjaF1Cb8GCYUce7Od1wCJ9QKTpE8IRyal1oqw7AaXh0Saw+BY0g9IBEMGs71JBURQorfshYDpywVVJvvo7yD2SEdS1X+4n9qv5KnfFJr9qaDnCm6C4x3pjsAhZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791320434; c=relaxed/simple;
	bh=Nz0VTHf/ewkm9K2wCszPXvwe071UWe2vWgcJsKIo+rg=;
	h=To:Subject:From:Message-Id:Date; b=IVIewXRGzjdkT3qaYgFL6yIX9dUFUgKbAy6p7EuVrtTpe4zY0EXKdJyS8Nv9ZcQ05259hkWeKVWy5M5w0AdPsPFznD8FKVdPlHQKE6DcOMgWyyPXACwXAfX8Xf7tDWE5/24+rc9/qHhDxkw1WxikcqAnl3eqYZLCcr289TP6SHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8kX9rMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8kX9rMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD775C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791320433;
	bh=Nz0VTHf/ewkm9K2wCszPXvwe071UWe2vWgcJsKIo+rg=;
	h=To:Subject:From:Date:From;
	b=I8kX9rMD/Q9Bu0JIL2tsE0tXpTupuxhD3eV0QP40uzECiZpWqj2ZAHKdIweshvRBS
	 M/FyAUUYupDCT9Ne+Fhi55OedqwkETZZLsPDHDXX2dJv8zb7vRGjW8Hn2i881YjXxh
	 KdsgFMpW+/HokBQtrRNx91zm1aOIGkTbmvh2S0t+CeiY2BWXeYAS9AIaisZMfUKk+/
	 W+USemCs1NEGhcfB4ALBPf5jnH9Nv8roD5uRfDFGlQdyxa1i3ZqGmUz1CIq0zW2aER
	 f3kGJ54iJ1WipaSy4KGpD2TPEt9492439B62RCnjVx45A1SsRLgn9xe9IOUaOITIWe
	 Anmj+J9/LZGow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B22CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132043374.21013.4900967058745859383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191de90ef8afb907094c2261b75a91530ac245441712c390b499fca2dde4c669
Date: Tue, 06 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791320433

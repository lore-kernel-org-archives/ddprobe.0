Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32399230BC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753967394; cv=none; b=drxl2fBw1l7MfzOMBkxIzHitysCt6guc3X/EO1iijPJm9iSpSo94IfNVgqm1HZM1tdJBqXjxaOT4vaKe/nseHnNHh3aVwqRab6Kg/2FSAVah5b7N9DNbP3GTVVf/1InxjXZEtZFPDGbDINizXjKOXP1Ht+8r8sUREQpZ2TY4M8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753967394; c=relaxed/simple;
	bh=J3muGVt/M1LD8qlm6unmTN/NHfUv6fUK8kn24qjrAbs=;
	h=To:Subject:From:Message-Id:Date; b=Mp5VPmoi7hBJtQvwUJuAEUWKO7UJQH6Z13AuToWDIZCV9A4MvYEGYBt6NUjrVMpeI0KWNRdmgKeDNGFVN2cASRBXKASZ0Mvbz6U0Qpbwad9WuyBZKC1lAh9/c1iz3aZZons40Kljn8mDC+pKMPNd2m/sar5hABHdCwQEfwyIKkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhiZo8Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhiZo8Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4199C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753967393;
	bh=J3muGVt/M1LD8qlm6unmTN/NHfUv6fUK8kn24qjrAbs=;
	h=To:Subject:From:Date:From;
	b=fhiZo8EgB1JN8PfseKATAOPSMZYzOhctkdZb8yTOAfBR8bIPiLG/B1fAPjqBnr7kq
	 OS9OQeeXE6/+s+h2kXRDMPP/oCpsgj9ZGdGOFpvTYGN3+nMXTnugwBDneFI5m6Vg4k
	 5LAOlRRoJBGYCwowNRd77C6nGJQejslZ4g+rQ4pmbNlTeuvDSDS0RgQBOZ/ZorS469
	 M97MbuKzwGSCbAzxV8+cU9oVWHswtidXsiP7rQqurLpoJZuakQ5Pnuh7DGqMNsdO4a
	 E2wkBC2R3J1UXe4V7C1tUY0hp4qRDd8QvMjRIL/XBIoIiq/Kat7EFRCZL/B1VRuz4G
	 d9mTMdMbShW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037FC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396739358.1463.11822682557355788359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ed28b96922c5feed67cb6d2eb56d1dabd95c004b9fa175cfd7e5d742bd1606
Date: Thu, 31 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753967393

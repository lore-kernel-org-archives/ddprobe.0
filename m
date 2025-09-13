Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB2D2494ED
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757795394; cv=none; b=tUw3JY34NC7ldP3r6xBWu7EqbO0Z8/5MdZ3AcZRJFRZCSqo/0EIoTqJ8UdovPjGke2qDo/SsDAsMjAWobltAugVr76VqXO0oBEHOK0Bt7l4/xonPz2o3aT1+lexDESgjo7Ab2mOEDpQkRbNLisvVDlN98x/uWP9OySLsnoTvNr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757795394; c=relaxed/simple;
	bh=Ond9DhtDNMA/Iftyf3gyLxI9hNv7Y8xxVYBFmCY88Ps=;
	h=To:Subject:From:Message-Id:Date; b=FXR6UIj+c7OsqwT7QR57I5pcFF79Pn751kWt8wKMCbpaKn1bcinnK7eoGYbRrE4u16ODVUNNN3HqXve4wBurcBljQDVcz/t77pGPVybqPeHdbivRV6nW+oCeOPgr5INtc//7tF90o3VJtmt5DenfwdekTzPS0JHcFLn/Fe0kugU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caATRTis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caATRTis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757795393;
	bh=Ond9DhtDNMA/Iftyf3gyLxI9hNv7Y8xxVYBFmCY88Ps=;
	h=To:Subject:From:Date:From;
	b=caATRTis5gN5XPvkXgwosi3HJvhSDv/+uga0HOgk3myG4HN4VgAgQJ3cT8IhVQQn3
	 5KNL+qGc3kOSHDGxN6Eg8Hi00PX+s2cXVzsVdfTI6XqQqEsfKgyiSyHK9lb7Onaqgy
	 bz/ww7geI2DqGO8BQJRg9xB+BgAWKKtuzCHOBsIpNRIiAXUz4aOjv8R612PA5JyQa4
	 uGJATXkdFwEUaVqAI2K07XleK0WgF2WKi3Rz2S0hBXhunbJB+BawD+ga7gxmrij3O/
	 NFB+T8qp2Ol6uWRpHPbsb2re9YD2PQEbtqRuHPS27I6Hseu/PpM8lbAEXHpsJ4WBaP
	 C7JTGlvb+gwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BDCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779539357.23302.10175205626680918513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f8285685fbfd0351f4c73195cfbaf99694c25846df85238efdd576d33b40b6
Date: Sat, 13 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757795393

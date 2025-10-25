Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227B92DA76D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761383994; cv=none; b=Iwjas6tYT637JB64ZYCOrbjDFzcQlV2SXkQ+rqoRgxPGt3vx/eVQYlraX75C+7Q/Ay1yjC4gUcHEhz+ngHbYh7TDNlA0A/rR6YoHaBmVOae9V4sGVdevxkcaQcUub/3DASD8Nz6a8uFil+Sj/+3JrrPqBlA3qy1MQTpD1xf7wZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761383994; c=relaxed/simple;
	bh=3vHPH/+DbZl1D2/3q1kLfIPMv/SvzgWTVWI118RH4E0=;
	h=To:Subject:From:Message-Id:Date; b=VX6evR58hqN4sAsDu9ekaZk6rvJ4QscwSho85yPYOLdVLga0AuIUgbCzvwcnbelDkuopH7EKC95OHPlqKknq7HoXD3eQQiKtl9WAp3qdfot0tZhFWihr2ifiRo/T/68sBqE0od8xpYyaedz9n1LZVQK70daiH822qxyX68McwQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDi7O39G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDi7O39G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6568C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761383993;
	bh=3vHPH/+DbZl1D2/3q1kLfIPMv/SvzgWTVWI118RH4E0=;
	h=To:Subject:From:Date:From;
	b=pDi7O39GNQUrZspOdLXKqvsCJgGpaJX5pPsnm80rCgC0EanvxWf3Vv9/1i/i4u7qP
	 OLIpGcPKDyGkaizP5r+J2tXThLi0Lf2b1ah7ZcFOrhaPM2SwvS4SgPhf2FjMySDU4B
	 7hnzk+JysRqwasF5JHgbS50CGkrqUC54v6IoMwsS5I2kx2OXlBgbjV1j2XrFyYhRru
	 JbuMCw3AbgZN+z0hDeLgPJ6/be4biual/NYCjun1z/Y1ulUd2fchP6UdKgeeqAgeC2
	 heakZjTfYkWq3e0Bk28HP1zSi9u6C/EI7qTv6tzQaPpNO4xvYTgo8xoXIjtiymwLSy
	 tUqVNnM2z93rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B45CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138399359.17036.15290620940156441692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c48d2acc927d830c80242ba1eba9c1ec92b9459d43275452216dc92dc7e0830
Date: Sat, 25 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761383993

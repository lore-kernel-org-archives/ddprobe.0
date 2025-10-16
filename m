Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77DD1D432D
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760596194; cv=none; b=WwwxHZnwFuIDMxhVBKbA+w57tjSXe2qh3h3T8Qazuw+xyn70Jp6V519CBAJwBVNy2fZQjpWpDdR6IqYiuFA9RFq/iylAhC1EuNYGNfBCy+HkCMCAMps/u2ueog3Kc80XlBJP9SRej/GowrIRsZm2weZtfb+5AjQqW7WpPXazSAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760596194; c=relaxed/simple;
	bh=hNMzq3S6O9EwR532o3xLDmbCKtxl6tz9075xb1ms6Cc=;
	h=To:Subject:From:Message-Id:Date; b=WZMASsEQNX1BrY9/0Vh8CJV1GEi09xQROAWeuB91iFSV8eXC+N0Lf+TTgrbD8wqHYDPdZ5/r8OQCVlKTvSaHE6UoBVecypHNK8byxNa0qqEXHrnrqKR7JS8bn+eHYIBQIoRAS/NT4o713WIOJSGBnC20d/iTDp1Uy/dN4nH0E8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw05HSOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw05HSOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE4C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760596193;
	bh=hNMzq3S6O9EwR532o3xLDmbCKtxl6tz9075xb1ms6Cc=;
	h=To:Subject:From:Date:From;
	b=Tw05HSOJ3Dg6fQx2idLYiqgewo72AtICQBzHrrMkXAlVLf4eulTxeordEM+lc/+vv
	 6QjAwDrA/WKP3idOuoNMqQ0AZ7zzo0nMmXi6eHCEQsbcvdDFkPOcL+FIv9BvLOGV+m
	 1PzRdijKXUN6X15U/AfJU4GQfK5kw+ZM3uv8zySFMCO5j1E9mR4bIEjZlWtykiqb3W
	 UC/bYANuEtH3oYhcRE0ugUoZ5TKiPosomp5QgGl/tGa2LPeoMlUsRdR0HvXx0KN8QK
	 JgAHW9EmJ15ot9Ls8/W1rpq68IMR8mvUgDauxehkuSGR6+I6tHy8bQShgTxijR2+uZ
	 /rxux7zSAOr8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E3CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059619358.25540.16563440955769416880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fc45a54349fd8ac3069ebc2a21e8eb5a55046d1847e2491433d19509e198e0
Date: Thu, 16 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760596193

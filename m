Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B518BB8A
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729847154; cv=none; b=usq4MkFzJ2QBrbiF2RAfSZQh/YV9z6fcckF82DWEG79M5NPTqY7knEyh80OY7MHcDSt9xc3NckaSUzLHt2Qbl4eBVlwLB16bmRx5GJwf/iRygKiISr1QIicOfybEdVyI9CV7/qaOs0YBnZAxO8HzIFLPXlRXvLtz2ujyMEaCqf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729847154; c=relaxed/simple;
	bh=uDQCJx96yTMkWeQ7Scu82zKkVa+mFf0CGlsux0ou9ps=;
	h=To:Subject:From:Message-Id:Date; b=AbFyMacK3aCh1+OZFy2ogyIEwwNNxFX3T0rS6IPQay8Y+pJsgxqvz1tFKVGIV7E3pT92nFj2kMMGIDl98kcbnMWNBGyuhNHqXX/sugaco7KU7FrOMbAEzB3uFR6nfOSr9OLhVjfnO9vtOlyu84Eh8H/B8q/vd2zjAp/WnAB4PtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4+3PGLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4+3PGLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD608C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729847153;
	bh=uDQCJx96yTMkWeQ7Scu82zKkVa+mFf0CGlsux0ou9ps=;
	h=To:Subject:From:Date:From;
	b=s4+3PGLwAjjT0PGvqf51Gt1WboptmkyOSEvQdPIr20uNz9FSAMQ7Bmz18kx2B29Qp
	 e8gJ7ppZRuz7Hy9CMuy6qjw7sqJS2D8CS7xRN2kLCq5f0X3ftsAoiLpXSb51rPztig
	 WSv1Oitf6atj0j9JYQiDXhqDijvB7kj+OHIGkOGqe2eunpVYZFpcS4zTpQBx4JAjqj
	 voFFMAJpMSNCtZDMK9QuyXnt4lh/WyVeiaN1j+ac2+60fjp7XGnTpWaZEPU1xOFb+O
	 e/0rxrEbPKDTtWK6nkRh2gxMtXIGD87AQRl0DwqsWeJhJ0b0seTD+drIU545HZmRTf
	 e+TOlu/b4NUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C01D0C5E6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984715360.18050.13623874928968320615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875c1acf9fe30f90ceacd887c0caa504deb6412521517c8a2fba8d1b573a37f6
Date: Fri, 25 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729847153

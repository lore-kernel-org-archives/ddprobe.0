Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417B382
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733791554; cv=none; b=q7DjQg5B3BR3Xb8PL0AkacZo8/bokQFxhG6zgPvvA9ibvMW/zbjYJt1s5ONO0gwfgGpYxbC7Bs9JNoW2styhKVzr5e+VgirXlGeDF9NhQjx2iUIVi7vvGDkio7lYXPb2fRl/E6JDquFGTMxxpX9NXkwGY3OBOCXx6CRTMxmrvxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733791554; c=relaxed/simple;
	bh=kjGloU6c2Be3L3gxxDwvzkOBT8ohYRMIuoqQBOj2Bgw=;
	h=To:Subject:From:Message-Id:Date; b=Bp3rGX9LkWx5ffIiI2M1lEBUPYlZV/4bM0aK99oPNvUGwYyU9hWJW6Y/iwyS0vxcAZUopwnrCTRdK1YRdMc9rWnkZ2Vto0HPJtXUuGTpjdX68O/BeBxQO/T0iksfxUMVpcQWGap9x59mU0r0kbssS1equWgfcpv420UyURcUSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAGxY3ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAGxY3ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EE2C4CEDE
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733791553;
	bh=kjGloU6c2Be3L3gxxDwvzkOBT8ohYRMIuoqQBOj2Bgw=;
	h=To:Subject:From:Date:From;
	b=nAGxY3ixSuJNG7XOaMOlLO/L97pL8jdE6lOEjPIcoUL3Y5KujsU4kq7hcwwA+SvMZ
	 wEA4CqEJkYKU3qt6hi/66U9I6CKQWaixmJ5Xl5rrtzMLNTOA/nXFtUieFpSVL4sZNd
	 17qymNEx6VmYvCRWAw5A/XkhcFka0qudyMIXF4Ng304xLbpvh0Ma/3bkUENaaIosS9
	 Smv+pxhA2wGwSnlXvKzzCDs4iMJokRCAgz6esGayu71svfldmU0Cs0su4W9Jp3EizL
	 065WtEuzDQ+YSI6OEJVWsVKlqwn9wD7k5n4nl1WosJmYRSf6HseRFrYPfPUQXBHCIo
	 bAdpdleNi2fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96012E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379155360.19897.1565537844979208602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cb992f909bc008bc5bca519dd591a2aa2fb38e5d9adcf5456e44bdca1d3d8f
Date: Tue, 10 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733791553

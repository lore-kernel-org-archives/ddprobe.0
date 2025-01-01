Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C64C70
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735763154; cv=none; b=T5ulrWaMnuLtKo6g9jpSIXGA0qW+8GR758inu/K9txG4JJ765842KRTwm1uXZ12nQC+FA0R+JVEzuFMxuCcrPdcMocR4VsW7B1sPmqeEkEV01Nwyjmgy9Me6xWwCWv79tQzVVWfihHAlpO6wWf+SaMrEkKsEc1e8ZPZ1FxMdWe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735763154; c=relaxed/simple;
	bh=7MZOjV7jh9SYFUTLA0JIdeGgUguYvjtgGg9oCoPteXI=;
	h=To:Subject:From:Message-Id:Date; b=lKpUNXrMRrvW2t6XXyiuxaJrdw3+IyRM3G1JxPmVmANXqvsCw4zqA19GY+UDbqYLVFLP/qEvCw/XJ63/9yMSFm7GrYQOqw9tehfSAE7myXjaproewdkth2qrQalqGVRoxOIsQ4th/mfb1YCKQqHsxdSbFy2zgQj1FmerRIH+2eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg3+Wyrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg3+Wyrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE719C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735763153;
	bh=7MZOjV7jh9SYFUTLA0JIdeGgUguYvjtgGg9oCoPteXI=;
	h=To:Subject:From:Date:From;
	b=Pg3+WyrzFmCdYfk5wxiuxfBM6dKnttK/aEaZ9PTIGKmKXJgFlkDlClggbepJIiTbx
	 eOZhxbyQCkS7+w0tklCsGqJ1L+Ba0JI+DvsSxHzhhCDNrZqdDPNvDFP3RowlfJTMRI
	 sGYIBr9yvN8h/XFCbHGj4sWLxhnx0wVB3Y9ET62VGhaCIK0Se1KNehQgLGBTkUF86J
	 ykklb74AOceCo/Se8X/4GK1PpjgZu7ZObm1+bfOYADuGNkUeB+fs84Yc7K5esDDoUS
	 69HRBd19UBgKokQQBNS7bdl/PdFhxjqZ7W/1K4PiJTGqHS4KuYhuxz0IpOfwVVQ3nG
	 94f8RWlABdMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3DE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576315360.3649.10712637651598156905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe27d7586481668029c3a2b54579380aaab5fc73d553c3e98779185603d98e6
Date: Wed, 01 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735763153

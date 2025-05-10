Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282381EE7C6
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746838194; cv=none; b=R+FDMhZjh9W5tYH1huYtvQOZE1a5Rv7jpK4nrBsnREQF+vnIdq3QWsJO6ebcdqj9YwbCyVX6C2SZ9k9s2oblyMG22nY7UXi4WVVl2ralx/Apg4Mwy6ywSaPS6PtTBCSI/vOKacVBgm1F07NnlbOeqvsVBlKuQ26chcW9yFKP3wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746838194; c=relaxed/simple;
	bh=lxmi6KfS3KYho1rrv30+LaUWpvztpD1nri1wcBm+s8M=;
	h=To:Subject:From:Message-Id:Date; b=Alvksr+OFiYWlgQze4Y7hI2CjpI3pwMoSopDhx+VqTjv+1x6pXp4r6cftnsVzh0CiLv7yHmLAhD+G/VB+aqpBab8R/MKwA870cIYfTYUTmblwrQ3GWCt+12418xHH/eFPVRNuhOod92jEJlWkn5F8tpHvOPFdZIAdVzyLzjv+MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPZYXL2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPZYXL2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC09C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746838193;
	bh=lxmi6KfS3KYho1rrv30+LaUWpvztpD1nri1wcBm+s8M=;
	h=To:Subject:From:Date:From;
	b=qPZYXL2HGL16Br0w111WIXMY5Iic6QGR3Dk+8ZS1p6O/jVRQ7g0DZpEif3irs9oF7
	 WOXDZTrmf4AAImpK+CdwzHaHgPdt8FZ1ybpDb/klk5iaBZ9NCKll5Mb5yBMtCHV83W
	 kHEiIogQFIz3kqiSR8dDGX8ZenPgsCK/VHaFPY6Bgsoc6xjbze8fp8yc3/B8+qwFo4
	 dPFZfiZwt73cc5X4pA9nDYJBLqygAYZ2XEXVGZ49+zSopuS5a4MPd0dZVGi1DDJIZy
	 +hPGV7t1+w8nM9MXf69+vlUO5Ov5SgSQ4ddkPtcPxy/ijFWIWXdrL++fW5TV+UzX1c
	 eJbWYdfIftNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E765C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683819357.15169.11893833772298163007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885c45c70b5c22b8db000712e03ae98d38a6b286e6fbbd5e93abcede262021d0
Date: Sat, 10 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746838193

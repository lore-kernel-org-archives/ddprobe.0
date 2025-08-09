Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312391F1311
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754732994; cv=none; b=NR5S3CHrvkwssyiusdCxapF8rrmhMoBryWX8/HimJF3O/FHFr/8x5ZYO9CuXE9MSKb39gvbSuc1nRbME9IZMLYem2VEEkmsNbEUjWWyhmHliDzLAvv/l30O/f+/cMpR4/T9WliGP6WP1g7YDxdvdmyZHeSXbwMdtw3F2g8YvvyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754732994; c=relaxed/simple;
	bh=VczFNAspiNOIDcWADo3PicdzqM09cKH/pl8sP3r5EoU=;
	h=To:Subject:From:Message-Id:Date; b=siKS+1Bf4oZ7caVzNCkGY/heSPEbsscv1RnFm0Z/HTPYFtpAUOxoLmWZs8NQKY8tAt3s3pynIJOh7ZlQrGm49brf0o3oWoNktPEgpIZLxH49H3v3lcF7RasFpcdV35xXafd/hatbEOriyBaRm3JpeiwqaIuou7/7IUIbv5s+pcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm6gxMrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm6gxMrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A306CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754732993;
	bh=VczFNAspiNOIDcWADo3PicdzqM09cKH/pl8sP3r5EoU=;
	h=To:Subject:From:Date:From;
	b=fm6gxMrW41UPgMThctQONSSmnfp1t81dFOsE5mXBUJ7zS2HoczDqg7DPVgw2xlT6U
	 6oTlYw/u8ixNsliO2SAzq+2AxgCtOAPWb9ybRoLtO1FVp6GHlU7OOu5zucgMzZTU/e
	 +239myi5Qqn2w08fTAywPch1TI3l/iusagJeGU0xqBFVHOuqjtqnPod5ze1LzV8PzV
	 exUIeww/+pz2UXIcli2NgBhXLMgirXW8+3dQ+9lOJrLFZxvw8tJfz973pyWfVDZUGz
	 sArGQkrlA4g9UaUMWeGE0f4j0KwZ88QBa4EnwoQ9JWob7wEMuNQ14yWWKYy9u1nJ9t
	 3rdHCeFRlAf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B3C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473299357.8423.9845972704881998879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9e4fdc6efe4220e88a8637f023c5e5a7b898c01548c0e6cf175878f763056d
Date: Sat, 09 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754732993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246FC60B85
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707856697; cv=none; b=MVCWy/ArvGAKhRLij8yE58Mc2rKdhgtaDIkuzN8bbCY2TbNbd1DRTrQiW6kKtY/+2279xaU8c4jD9NcrJkGuPgaMtE+059bME4U96U9/MqwaQlTadpDaPPEAdCWyCUK8RZsBop/4qFu+Uv3Q/2xl+b1CcBRBT9URdt/2LXyiplo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707856697; c=relaxed/simple;
	bh=WNv1ApuTLDXHxKeVJqkHPHPqpmSqvXm0r/KbmEb1Br4=;
	h=To:Subject:From:Message-Id:Date; b=V9UtJuFIrijqBAVEoSi/2M5Y5T7Y7KdmVNE30rtTBXKce2v438ODdvISARcyezoZFFhmOtM7Eqezld6QMHWzCsQbM84fLeuWTZcMp/C0MK6mB8vdLN64oIwWZ+8UGK3XkjfmepGXh5pEDne3FksSDBmMrIe1HBnoEQV7b93UGMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uer9g3Ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uer9g3Ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AACC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707856696;
	bh=WNv1ApuTLDXHxKeVJqkHPHPqpmSqvXm0r/KbmEb1Br4=;
	h=To:Subject:From:Date:From;
	b=Uer9g3Ty09Fohs/r72lMeulLccv2d9K+JuZSQ42p9AYKcay3X7771acCzNQY38/Jy
	 9z+8KUCX5Cv/hqg188YYFVnQxeuXgNjypgz+9BTwcZGhwLktLYhFuSY8tlTdfiiJxD
	 Ijx83O5NCiIpkj1Dmr1OQzxeKNkbuv5b6+87yHkYLln4By7EWBViSC5JCAd57Tnb1f
	 xUfejESGJCUeJs1ZQc40wSFfZMfS2K22XqGzxYBA0UHtT4vqntKsKm8GrQ7MHUU0Aj
	 lx9cjtZkl5rf2A1TtIlFmixIp+0e5KqmUUG22JcptCZ61GIDOX3skY00icoSsIpksf
	 wLvt4EDZNEEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F2AEC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170785669636.2813.17123065110739177195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2678e2f94ed258a5c55227ca29f224431cc9df173501a83943cd15bf120cdf
Date: Tue, 13 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707856696

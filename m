Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759D043ADA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713643823; cv=none; b=g0cjB/nLYxBgJcawiNtktJ1xQZ8JIXJUHL21ABurPeRFPPFI4KycSf85VMu7rImUYV/Tu6b0NdMkLWU2/xy8dGEY/5jYxHTPNAR5pvixz2WMqwkzTRNJKKLVbc+CCSvjVdwMF4ln0reFvuK/7IS3fHIp/3VV6OkjvcDNCnp55Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713643823; c=relaxed/simple;
	bh=ZhS6Jq0jcZxdWycwhamiqJ6eZiPBT2FNxgTHICvLdEo=;
	h=To:Subject:From:Message-Id:Date; b=KTJZl8GnvJegEX5XphwXNS3W6jNPZiPhQINLPTmgLpJ/0RIdIVukLBlZg9/0yUU8EeKZl9u3mlHGZDn/oXR6pqkvx8S226sTSzu/yKHDalOtIMs5ixuLIfv9V1u8/Ymr5bwrlmcrD7Qv3zgdmhFerYOTb99h5TtNVUbM+I8Q4+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC3Elk8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC3Elk8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC46BC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713643822;
	bh=ZhS6Jq0jcZxdWycwhamiqJ6eZiPBT2FNxgTHICvLdEo=;
	h=To:Subject:From:Date:From;
	b=hC3Elk8Y4Eq/drnhcEL/uIFb7oBqeIOQmBOZ442XpfXXv2HoXxYB6pX+GMy+MrxYg
	 zHPNdDnAxrnohqG9x21+Rfa9w8TywkjFTheor2ZYJ26RbHJA4BIv1DSK2hsGOgViPz
	 y4w1t0XJc48RaK5yCciNHICr6CYZiFjUAkUbC63n3MGX8xcxjKVVRLE2iXMrBG4i7E
	 YiEjnqbXnvHFbYASPXW8G4XemGHdV8UO5sCaiWvegHo4lWPr33Rxk+gRou5Kh82590
	 LAeHfjUmpHI4dYRI70eNgcHnoSTkJVSAJCahgx3uwY6np9Pdmp4Up5NjwmysiJGZE8
	 z1lNu5Z2rKAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A18C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364382276.22310.10793494461565414460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7097e7f8e5ec1a21f7e08b068c2c4f1024d4e89811d5ca51b8f59e2841ae4fc0
Date: Sat, 20 Apr 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713643822

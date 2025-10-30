Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B85307AD0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761860394; cv=none; b=ruUrHJCpVMP0PH1A6hrZCL3kkKbN9TjroUG+JaK5ZPiwlTNsXq2ZIWgu4UVd+vOvVv6PrRIZaZJ51+sN6ZutG6vz/7S6Jp1lYgaL5jQeNVVHFMHkzKZlexob0C0JH8GsTJXnxw4WztViCVMlIukkeOw9Yh3Hhf8l8EpVrgyzOpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761860394; c=relaxed/simple;
	bh=BM9GfhHApyF9Dmsr/62o2i3K1EwJrezJG+LLGRNUiRs=;
	h=To:Subject:From:Message-Id:Date; b=Lrm+S/gCLWuUYEJnwBhfg30zOXBiyjvna8U7rwGmYmakyIJwG5Ixgf5fIzdUGqM8Jb9ysl9ZR7f5p8XIefDBpnM7wgcA4J6U9WvbG9gn8A9YgF5hMhpjNPueg2e+42cVgqUCHDbLyJySJ217015s+YLudYkVbUjIA1t8fVfw1do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWvXKOI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWvXKOI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DFC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761860393;
	bh=BM9GfhHApyF9Dmsr/62o2i3K1EwJrezJG+LLGRNUiRs=;
	h=To:Subject:From:Date:From;
	b=nWvXKOI5vjP5DhcXSb+RgpX5PBiXb5mzi24M5Yvk0yWrWeqFDBEnY6PahO5CHI5RB
	 PIencSwTOXtGHq0p7wjC0WNL953HaxgwfVEHThHN+b5pdlCNCbWNIBFqRTpiKU7t9Y
	 8mVx9OaT2SSmjFZwBZXeFPghwkwSmbNXHTC+RhLVpzlauTvErQdP/4/ve7gR57yTnV
	 Owq9g6iLXTl+eI7JxCrLz0XI3rieiKNzOokioy82LmDaokQx2iSt/qAo6sasIGGqWE
	 DsAw4OovxvEkJjYBeaOHUbcVILJ9PP9VIU0XXYv7kcKKZnpO/lcyZ9dULdB8jkkDou
	 pn15bkfIdbErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBFCCF9FF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186039360.7970.5017558013808736482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb3391844f9f37babe746375bbf4dee054156a4a273ba67a9fc15a057ec82fd
Date: Thu, 30 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761860393

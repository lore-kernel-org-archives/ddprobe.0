Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1873769EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782377854; cv=none; b=m7Z7hkHg/HUxPmbPhB7tUQSwbtLmPZviTBcnJqTDveCdP53cSItRLrphQRPZ4nNVT+8l1Ddl29pqiu1KQzagq7B4b1lmKRNJHNCyQPmByWNfnbf72xNnOBo0tpZsNVow3fIEPEnidHSnnojokAca04Gi4gSJLc37Cp9ZrZNsM88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782377854; c=relaxed/simple;
	bh=kGSx5IPOZ0EupptKe/WHZjFu6OGyLI0moS+MwgcKbnA=;
	h=To:Subject:From:Message-Id:Date; b=FBoOH6gf0qnEGy1+xS8nVGsUWOLv/PajsCsmnbXhBhiloCmNeD5XtQZ1VCpXra6idOVDvGWyu1Hek1fcEnbSzf+qlG+bTYvdDvRl1lT6ArGQLJpnKgN4DWzMqD5KxqPcb5EHKHKNX0rytlVidu/+2BKeEpE3fzkm+VtLjL2HBGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ4F+7Oe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ4F+7Oe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0426FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782377854;
	bh=kGSx5IPOZ0EupptKe/WHZjFu6OGyLI0moS+MwgcKbnA=;
	h=To:Subject:From:Date:From;
	b=aZ4F+7OexE75BLOryCEpztm3uoQq0OqrFH338Ny8WaMCnBAgWj2srcP56fXjSKJFL
	 Coo7CAwuFNMtVbwxqm5C6PerGD7h1rUO3y6Jq0io7l3UWnp4Kv40HuNDeh3fjKbbWF
	 CAWshgS3ag5flqfW3dpbGkm3bOZWQNtRfEm4Wc7VsYj86Du77sBAzRMUfQFr8Kj9x4
	 ek/KUIMKM8ko0OFdAZQBXLYUXojlkQ6UtpnWTAvNQC59SFf0cFAIkhxY3/KsxBmH8J
	 TVqybWu7903QQcH0glkeMgXOel7vMs2fLZfpu3dVgQSRDFk3DkraiBMq9YR7DbOz8X
	 7VlNxeYg6w6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE9FCDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237785376.3846.10618927539879623480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10d178e3fe84d1fdf47d5d5d21590dfe8fa7f37c62ccd1a6b9298de82240292
Date: Thu, 25 Jun 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782377853

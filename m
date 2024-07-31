Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245CB1A4B2A
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722408354; cv=none; b=cPIs6axZI1xGB1z0AEMkRiMvSwDiEQFxCrBvEpEbaupcRy30Q+QYsb+IVKKA6zMUIDwQdsH4SLGHc/4wAN/Jij5l+ldP8yIf2E9jibNSILbNswPHKoEt0i9OrZ9qS6ZLekGkNFSVlFYlS+1jidd8xSs6WGTrG9Kr5CyDhR6e2F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722408354; c=relaxed/simple;
	bh=UEr0htxL6ECWCUD9Yuyj79BW0wjqZRsUsKnlJDBUnNQ=;
	h=To:Subject:From:Message-Id:Date; b=NHjkS+4H7ZmSHnUplKPR8bPG/UChhbXi+3YrJ+KAM0xvb4hzR/dOvVp4H5p+CivmGX53TKqZ6a4xuAN9A8VzvRaYz+jKuPP8lHZ5Xt9vGguBYmgS0bm2JxOq3O7s/3xuJZcg8VDzzuK+iMY7mNqkVrF1FmWejC+ufbUoo7ydnHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM9SkLxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM9SkLxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9FC32786
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722408353;
	bh=UEr0htxL6ECWCUD9Yuyj79BW0wjqZRsUsKnlJDBUnNQ=;
	h=To:Subject:From:Date:From;
	b=AM9SkLxv0tx1aUmZ6PQiW+aTaSdm1TQInjDpom6lve24JaVTKgdputvnsIPhi6ZWE
	 t+v1RiEB5GDiZjgyminanLkRWPBKKMgaNU5bhNnVIelb57LzDgdV9U3p89mfYSpVKW
	 hxK+aNpP7BQ5r9Wra4nFed9A4/3AN+fGb5B28VH0BxlJYUGRgXjy0u0EQSbX/xFMdY
	 yNSqO215/gjb4wH9goGxHQsWdlxLo+X8vWLU1ryU9cfV1oQEj1zHwXA89XG/Z6cYF9
	 TRUPD+eQIjTtUy/Wq5ZY260IADkM2tYkye22GcC8dLxR27SUiG8uIOpA5CU5KyPXYu
	 w6Vc9TL6HEMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944DFC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240835359.29667.13821517627778677052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32209576c14c376fca787a5e99da60e61aa9e122f0fbeafefee3adedf4824f34
Date: Wed, 31 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722408353

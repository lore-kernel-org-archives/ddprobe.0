Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC03363081
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773426294; cv=none; b=rW+ofahfStekv7BneAXKnpDrOioFSE45JiV5D9MJUy8KhgqmktJoGDH37LxQXERyj4uql/jteWoH/wjnmfFgqKRGGID2PzN1wt8mvN10842jkCnIe6LUnrkEmL0UqO0z4OjhRllPbDqSKuJTlzcf4QtOLyzFfWq74yUlqhJy8QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773426294; c=relaxed/simple;
	bh=ccyCHJPpXIt1EIggzyblz6gr4aLEMSR6aC9BlQlwpEw=;
	h=To:Subject:From:Message-Id:Date; b=AWE9TmHM3Oy2Kh260pfVSbroH8+/G9zNfTOzvrqmPpiqGmRquDC2bWw4E9ZVKJwj4x83uTf4RQzRDZ3lpdSs5yv3vILlkZLsHb7zdvgQjoPbbKbqVME3lmZa34gmYZJOKdl4fllt8LL0TEeiUeLBLTvyO8ueeleEJylJWd4rZhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVUtaDcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVUtaDcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773426293;
	bh=ccyCHJPpXIt1EIggzyblz6gr4aLEMSR6aC9BlQlwpEw=;
	h=To:Subject:From:Date:From;
	b=LVUtaDcvF//HA6zwWvNIGF1Yrbzs1BxgaXnBMsxq1rjELf08Z4HAq9OvczT4STn3J
	 eLJPwh1V3Eoog8mwm9UkQnh10VwyBl3KIjZVe+5Ht2e0Z1dliX74BLDils+ar6HYXt
	 Dx52otcnIBSoffx8zK3xeOBXEQHh03A9oQgmcms7OZNuCJ7nS5YEqzw3cgimN4QVPg
	 W42SH2sOyms9yoXxvG1XadXqoT4Qjd5uUDMgM/SmNu/ArSuY2TYynXj5ab9UWAcxqk
	 mNIG9XtDC98Rg3pPZsy9fm51gBYI/bdzA02JcpEBCIG2Uo4EIg6JG8CFNdSLQqM11G
	 8ThdHYAKtvQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166C107BCD6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342629358.7564.17041044058349531856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c756315264190223bd0ff49929cfefd5587b207f7db8885177f43353a043055
Date: Fri, 13 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773426293

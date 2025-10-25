Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67B28C5D9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761372594; cv=none; b=Z97E3JBUOHIbmbspl3tU4g2o810Yekc4gjAqw+owC+zbZryJMYsGyrsI3ybh9PN5Ux+CYayUkpchFLJvsHXyvZhFM65B5GFwpuzA/Wz30ZXxE7u3P/Il3ms+Wb3cExuvxDI8KOkJQ8HfhzMR50u3JOalgiT/s4uc/KVtCOxM3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761372594; c=relaxed/simple;
	bh=iQC5nnBhV9EO5n1S6G+gcF6eQjHEVL0dnbEH7Ad/u6A=;
	h=To:Subject:From:Message-Id:Date; b=BGHQT16w5zXEvySIC9WopYQiv990d1f1z0jyERFnNUL9wVbCoLC5jmjpiSuFNYTQkvp1nYhMfX/2M5XT45QV+wIgGS8hehWitVnH6K6ZoKA7zUzJizHnc9RmS0GR7YInnbO+ek/rKJ+qnPsEFyHUM51tMpRSiivoYY6y7IZ/BL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nomYtSF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nomYtSF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761372593;
	bh=iQC5nnBhV9EO5n1S6G+gcF6eQjHEVL0dnbEH7Ad/u6A=;
	h=To:Subject:From:Date:From;
	b=nomYtSF1L9vck6c8RS6s+mDYMqRki80OQkLS24VVHnLHP+61veXIqQnJZf2yrICRD
	 77yaoYs37udmGgEkGfwdajJqrJE3viJat1oG8zwzQ1jOyhVD7FJN3taXz1uk2WjSkH
	 qE+A2+lnMTpDGyuN7ykuuzENeVh0yrC8xcPfoy1RAjmkrBRz5cEN/iIinwcsxoHt2a
	 Jq4xSdHhsLQq4h9W5KGB5YUi8VsAizfPKD8uM8NZLwNkDccuON5VlrPnX89Cl0w/9W
	 k8a9tDeKvRajU+ChoJsdG7/VVgdPUJgJXnwL7qpOi3/RheCI29dRmTVgefaYBaGgLU
	 NtrELebA5vNgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E3CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137259357.19347.3964626376789669686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f5732a4fe3a18cd56e62c5e80c3d5d32221e763010e8b6ac63c4868abc8db3
Date: Sat, 25 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761372593

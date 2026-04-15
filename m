Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2E258EFF
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776214654; cv=none; b=DLQ7UmpCUHraCCKkcxfSVaCJGbnFPDcoI8JEuIv7ZveNnThTUpqYPcStF3vSofmM0zwos4AydoG2EnztSSyWwVuqdHwZmRy63e8akFypV58R1riJ6+/T44HVt9kNXoPlH28DX3cjtv3+PhQtEmjVK60w2FEWGbLFaKD9N2S/9Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776214654; c=relaxed/simple;
	bh=eeCZpkcjFfWfdF7QW/8EB3V84tA6ZDX2k4DHo5Z3nA4=;
	h=To:Subject:From:Message-Id:Date; b=KH2kVyV9qps2cF4t0l29nWerJI8eUCDKzAoxq+qXHITlZ4N0cGIWYJ+YwEn9vjbNhX2DEIsNxzKrzPLKCaAseGH+CGdgtnu4dP9TNXbmXPdfJfJVah2lcDEr/PqbdMs50oon06mt5ZLgoot/iW1zWXzFU6TUmBScKB/N5HpOVk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGpHRipC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGpHRipC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86E0C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776214653;
	bh=eeCZpkcjFfWfdF7QW/8EB3V84tA6ZDX2k4DHo5Z3nA4=;
	h=To:Subject:From:Date:From;
	b=uGpHRipC82K5dLNiw8ZmSfmkMAbzPuMMUOwhFjeDWUYEdoqd9x3LtdBT/TZKYjPpO
	 c4S/WalXGyM9jyPDsdM5gG0fFoBY30+Xml4hbKEAD7kBoRA76FSQsqG8RTe7xlKQGO
	 +jo2ZxEPNpCcmAj6i1/LKuRYdlr270O5Pdfopoeawbk7h3Zs0ub0PXJGRYGQObm6Wu
	 +ZS0zVYX9zQ30ZObk1z+2bTLASCQEIlqRlUWrl9LplM/1FOPTQOiKIlhLAEk0pEcRr
	 Bo6oIllA22bGRVIj1qHdt71IS9PaUJxx3JiabRi8QbEXKep4beRtFEKikQR9upN5eo
	 YKIXWCUiW6JxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13AF9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621465368.16419.13355387638483201485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cf33ef89f84810c7d83a6d6f4af8895a84b3100550bdfdc383dd7d567b07b3
Date: Wed, 15 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776214653

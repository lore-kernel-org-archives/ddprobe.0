Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DA142056
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759303794; cv=none; b=pyntKadGwx7Re/5B1n9oLjhjYd8oi0XsvWx5pQ5eSVlqJ1KEkOYtf6TlA3rIycHgwNuEmq7GupIOa7K5MHZDC/BnfC/ZM7aG2MXQqaBjk6Qf4Mz/TD/hr/HQa3z60sShIXQMmkGkqDehyXA8z6TFLkr314t2z6RqE/u7UeN67Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759303794; c=relaxed/simple;
	bh=p0vB+TQ7QB+p6Wz/HEGyDq4JKjonvdlNGZiAqjW2hrs=;
	h=To:Subject:From:Message-Id:Date; b=jgnDUiZA0t4Xg7Y3CaHqlxU9U704TLETt31Sw2em7Oc7V6SMqr4dqBRte2/Zsv+YZTURqTuVu9yReFN2eovvOHyd7HD04xOXwUXHum7zKzcp4IHRhLF9A/11cWMjm+OdlSguxmobeke4vztY4GlA8+NDfDEd3ZtKibV44SB5diw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj4xkxSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj4xkxSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ADC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759303793;
	bh=p0vB+TQ7QB+p6Wz/HEGyDq4JKjonvdlNGZiAqjW2hrs=;
	h=To:Subject:From:Date:From;
	b=cj4xkxSyCI/uXgb7jpWMCLObQkuEwZ8L+NHKTS7B3dpppzbP7hsu3Els44J4W7cMj
	 PMUV95Lm0q7ePD9qzuZgQCovWtQNpMdifiYihkIz0AkSEhrPDQ+XbcMTIbCT7wWB3y
	 85B5IzT/S5y43eMRHyo0gOOTV6FYW8fGzo4vmxHCF5wcMeUxaoim5F8kcOnMDZ8mfA
	 7+TEfVEYBnlAQg8TRaCGw1m89kVO6LyVNXT6u7PNsVFPq/EIhJykY655UR8pd2wUjI
	 hOODeXvcd3U7AjWsCIrOuAxkeN8bGgi4mxNv4oz5Bu9rV8nC7gA39IAHXFYHCwvjbN
	 reRakADn75Eaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93760CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930379358.19809.7455161971981927650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4645c035ae335e1e8eab31ac4fdf752e59fb25ae2c0c128bcfdc95d8a902a0
Date: Wed, 01 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759303793

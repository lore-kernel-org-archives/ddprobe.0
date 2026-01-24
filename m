Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF91BDCF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769255034; cv=none; b=do9gwx6BkKKlAFIbuNx26rqIn41YgXKjFh0R5BVtG++91h8HTbky5i3mxBXTY4PcJTSmo+w4kp7Gr8yDCD+zmo5J/7Ies6IYP2eSl/NlF5vAjrTlcBqqbdXjMF2ZGH3+ZB9rVY1y2YJ3wWUMMVKfLvLs2WE+ovuAboaf33OMnOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769255034; c=relaxed/simple;
	bh=DFOkxNxhq0pWHdx2vdqRSzEawu74HrNiu2Y+LJfaeQ8=;
	h=To:Subject:From:Message-Id:Date; b=Lbi4HDkvJe0DmFRCZ0hk720/IpuTBIEcADGJfFkJWRyfQKWjzpHsp8pJ/sr1dXmTcZPObX5wtjAdQ7NYNigtpIrO65zaSXsQQ5fr+9ler8fRCBcKQIoMFVlEMTP+vj2ZJOph//+QfgKbx+Kkfg02rZzyt73VJtQchd80C8oTtaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cltj18RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cltj18RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B50C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769255033;
	bh=DFOkxNxhq0pWHdx2vdqRSzEawu74HrNiu2Y+LJfaeQ8=;
	h=To:Subject:From:Date:From;
	b=cltj18RKvA21toz+vn2y6Hdcb4ZomVwuhZlLwJ6etN/N3Bs+S0H8LsJjv/OA6lhxU
	 H2M83AKFXjQOS1ae1vAxudbtnnkABHJTB+jkZErzLBpjJAHwAAHBx0nSTCh9OQdbR2
	 pOJ5npWCE8bSPgwMBaHX23Omx2EehaeD9hf3th+0QfCp9ryfVYo6H2rSbrduTC68v7
	 UecvcY9YitENF39y4+VCnTjMPdescqcXb8pDg6RFht/eIK55x8oz5R973K83OwrRCP
	 yVrdCNcKlX/ExxAfJN+MFUOcYq6nKjZ3KT+aJRVFg1ZoTvhKtcmiG0m3C2JuSyGCxR
	 LBb5TN8J7QsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A65D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925503358.29406.17970289678380246467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb91f99da1b60f0651035b6b2f86b0dcb4191b1eeec2677175fba78f9122ae8a
Date: Sat, 24 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769255033

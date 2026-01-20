Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3228DB54
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768923834; cv=none; b=jC93fMZxDrrcIFRwaxL8f1/V2mtVMaogR9baYrxVROZYhN2b9GeIF+hZneiWnecg9mra3viY3/4gpc72j4Qspdg2nIF8D+piZipyiNulK274NKjUQJk+/0lnp9ARQDB7rPACA8I73fKATMvgTbCVh30RpWTRpfWkGt8VAkWfBF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768923834; c=relaxed/simple;
	bh=n1NvGulBomw6hzob8NzkH48o05sMSEY7OxfJqFZf0PQ=;
	h=To:Subject:From:Message-Id:Date; b=qpLAvc+XrpN/5ES3e1xldeq9Dv3TQOuK9GeY+8udg/B/36hazbK58vrXP/sVIAnTecmXRhBezxPZW3/0WhYptoyIXUerZEAGdp6zkClVVX3CM6A5r4xq4OFAnQdz5rFO/Bx5cTebFSdmJTeB8SuMPwKv4hzI5s5TfDAu16MS6Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T21fJGb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T21fJGb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F956C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768923833;
	bh=n1NvGulBomw6hzob8NzkH48o05sMSEY7OxfJqFZf0PQ=;
	h=To:Subject:From:Date:From;
	b=T21fJGb6kzLRAhHBbLv10DEHbW7mYSSkSMpWm3UuMhFapKpzA+TMQVk0m4p0CG42C
	 q2HD4H+VESTNdUF81V4rfWJarPXTu6tzv2BrEmzVHQQ5kCFg7fUAmpTUFtF80nCRwE
	 +SanYroTrhsX04Ohs1TGEWeY7kVUBxadMlhyvxWDF7/bROCagjeHPrE27jv0Wvq8TF
	 /H9VcvPxi5Ub9LqIanr67QTeVpkIsQUyCvi/eGoP+6L6ltPICBKLEET/AJJsT+iWQt
	 jy8CsRHtAn5xtLAJ5/7pcIS7B1Lz5U2iDyUVt88HPsKcYm8vAy+5roLdhLOtUSt/Jz
	 +m2K9hzU13t/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE92CCF2DD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892383358.10810.5794044313017535426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8e906bb93c67a8efcf1984f99817bd28046faf165f5291a1554b09ed6668c7
Date: Tue, 20 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768923833

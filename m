Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE473E63B2
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792390834; cv=none; b=SZ+lN19Z67zU7DXhGU8SrB3b+DIOfbnSicpa0InY8nFomHvs9eaDLJPnHk993v2/xxciu8FI/9fTMDwjsyrSRfwEKBIz9QatJi30DQfnNlzc5BTClxMkuyIlab+fgtBgpegz0zun2scPE1BgMVE1ZV0ip7YBBjCc/7gEdo21ghw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792390834; c=relaxed/simple;
	bh=Mx2r+upyVPslcULONT3ahGUq4xWBuqhtjKNLYJ1OJyg=;
	h=To:Subject:From:Message-Id:Date; b=kJlaJ2drjXw8261buD6CDNCLIttBpbXkvhgsdC1b8E251zxDqGvvPxDxY56vdhjcQr8R9GDTegYdyYs5D3xVk1RvGk5XYF1kD0nXglWcbxTKk13VOINfi2RCygybqtFnpD4h8Fbc0X/wD/hIRUBPJKrkbm5kVoZPg83GVgxuJ88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/rQhQLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/rQhQLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FF4C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792390833;
	bh=Mx2r+upyVPslcULONT3ahGUq4xWBuqhtjKNLYJ1OJyg=;
	h=To:Subject:From:Date:From;
	b=g/rQhQLtSZxzeq8ldu/uloYceRN5KbmG63h16LKYHjOU2ljIGaQn+6NbflfJB5MlH
	 tfBityA6FgdksfGhLbehv/+aVL6Jqc9Lk2vJS5TzP6PyzJPHJv96VWRgDMemJlAVng
	 Dye9HS/PNFnHxASAx79p0xkCcm4S7+3bCy+9t0jlZN+pvXgscSoq0M76K4LgzlfKZB
	 duocsfdxs9oy/w0qmT3B+28kQ8U2LLJh9pdV++na3qgbtxozHZrvln0o3x5GPiLo0l
	 stsvlDwvcS2Dz5C/4mTJpwmUi/5Qxjap+6WcVUxy1F4ajKH1nP+Jq+RPF8Mkn4kiKm
	 yHK3etlvZ8/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB0CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239083370.11864.10630326244550654927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1fdafae4b410eebe4319a46614696ea86eafa82e785c3004156d00f5e9d73e
Date: Mon, 19 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792390833

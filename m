Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279030B502
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781042134; cv=none; b=tbZQaH6JugCJPb2ihA5LYhWR4crjVoSHy9dBvEHO1OaU4pVMBF/48oZYLUfEyhlDCC0q55qNAGPDoFMUo1mXAuNsGfttg+vbfo1RVMT2RjN10MB7tCaXuDbZFk3MqOK4Nl8DERH5p18LEsGZw7TyCCd8gKHQj/3PAYkihb/Vac4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781042134; c=relaxed/simple;
	bh=jI+cST+3QxmtzSFfgWlysV/qOoikmQSPB3X8blnj3cw=;
	h=To:Subject:From:Message-Id:Date; b=eezlGzb2k2IJqyXiXTI8IfpkXUoNuXXG6TSCRLSNeLTWSORAzNi3gAw8/TnhwKWHJQbCWKVp4EkRjfUHvoWNnTIvYUn0XgKPjTVR9dPUvZnJntiTOq1Lb/rwesP0IYsIOeMYs+f/vun8AZnmICsfkF29dRKjmtvOEIXpfR5QdKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVc5mOMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVc5mOMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EABC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781042133;
	bh=jI+cST+3QxmtzSFfgWlysV/qOoikmQSPB3X8blnj3cw=;
	h=To:Subject:From:Date:From;
	b=KVc5mOMRMSCXT8eammWhgEuefSlvuCVwP3dY4nrG6CrKqYXMOOeEgWxLFsj2TBu1j
	 Y7fp64x4BccDnsPBHq20hNWDjGMt2LNPvwTo4IugKv8zrl2U4wkDq4LbDAxSmc7Yok
	 sycSh6X24GtcgKh/esQYfLceX/Qe1xGqTIOxC6+WZYNOkbHCzl/veyZ85rrAjFGbL+
	 Um22Qrq5WvUBJfRDFMROKYnLH00fEGvkb4jauLf5SZxCZFsAppEOkXF12CimAbBdeE
	 VGoxthK0xjAZYAnZUTjgNVtpMdTyJixjeC7GBIRVogJ2GmGWYG96sHNAMWBQ/KjJOl
	 fkWvc+MoKr8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C5ECD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104213368.7971.2015278628067117433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c1bca9629edb6a85b6a268b1440a6c15189f2216f254eb1054c3e30d3d7501
Date: Tue, 09 Jun 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781042133

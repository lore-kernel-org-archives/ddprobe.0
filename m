Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273E12EBC6
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719141143; cv=none; b=msSmD9qcffB7X4FpiOUpTmp8QXLhYAw7FkKc6frhsdKbN/pY2VNhOU7tCioOaW0phTClg6lsvEn+Au01gky8lnMD5AXelTvIUe03X/vzksjpriF0EQiLw1dy6OwV6kAYtGBJT0BtfKI6+w7HG38SBZmafFXahwtzuGhGxfNjlsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719141143; c=relaxed/simple;
	bh=pNjiuTeWvricWpeXtiP2auSPtQv7JqBEjXIm/SIp3ro=;
	h=To:Subject:From:Message-Id:Date; b=PCYnE5zvcJMeK0ehAGvSr54WZEda2R1782z9rEtUcDxmqS+Q4/a141qD08Ln/Y4+j1zu8Gqz/1YSdnDcyiR5BKD3OS2hK/A1/gniqGPJu8O17e/ezzPo/Sm+T2OfGVvg4gkiUpTzcN5lKUFYd/bMLNtSD+Soxe8gNtQotrpH/GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+7TssXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+7TssXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA47C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719141142;
	bh=pNjiuTeWvricWpeXtiP2auSPtQv7JqBEjXIm/SIp3ro=;
	h=To:Subject:From:Date:From;
	b=L+7TssXs2QC8MSCijTlGAPEPtRfokBs0cDBpDmeIEozqO06aNILGHiqGdYNPb9tfF
	 4ni7VuxGh+IDYgEHq3663LGq2OlElzxr4nHsXm2pbhc9USXc05506d7kH2sQk6/bac
	 A4vqrPnvocQOFgPa93qn1DkWkpvtujMYqWWevLl5Gm9idQ0j9thYzE5PfhQqw4K9Mc
	 IozrLtbFWWsdDAG7jEvr4Y1ANUzf5YvWe32nW0yl+wgIJZtcGCtueLjGZ7vjhQA2/2
	 yXDE8wZSdWwgmx9eHQxAK4FyOCzLxBw74D1yKN5xOL/M/ji49dbY4nC5OZ6YwXA5t9
	 Kt1tNt0u007VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFB2C2BBCA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914114275.2826.5849085712984561830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45dd19dcfd9b29ee58d11f3397362b191c7848de02d21d488f299e5bd3ff8547
Date: Sun, 23 Jun 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719141142

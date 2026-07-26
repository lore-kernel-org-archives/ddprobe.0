Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F681F419A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785073834; cv=none; b=u2OWH0l562trNvdxDKYOJyGrYsYBtR7oFRFMA5GaZziGDMVMzd10hSo2w1wTW10TuOwd9lc+zSjg1Va0s/wO38Fxu1uKHVwAsQ9zbF+9ch63Ak18IT3pThgxDdvlnz/NubQMkktr/TZK6MkC/s3wqgn9qTcfTOVowiStR0mC2kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785073834; c=relaxed/simple;
	bh=qCI/CurmMNioAXZ8V8lzjwoTy/5VxleRbGtpAF0lHnM=;
	h=To:Subject:From:Message-Id:Date; b=JtNKgwXHVl1n67ri4hiYBR0iqRY1PAkPlCoTRjUQC6iQrBwIVKb3sDuyHdDtjktMHFxkg0+LDkaHEFN53pIbgZErY+LyEJxPYL3n8DffsWbszL9Px8OuhR99zRsdJIbcXyJZiKKX+agsWNsxbzUq/CCpCDsUWVDSqbp9qonSBMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkavGJQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkavGJQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B6AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785073833;
	bh=qCI/CurmMNioAXZ8V8lzjwoTy/5VxleRbGtpAF0lHnM=;
	h=To:Subject:From:Date:From;
	b=dkavGJQIflVF8tRnmUpr6WdcV6xKlySdSCTL+F8PtQuHZPOCsZpY3dXT2iSVng5Qj
	 urC6mOqK5fROs/JFOakOXQkw0GJh2VxaRfzUoUfgeYF1ICLc1+OvCLj8kjag1ibA3a
	 Rc+Hr3ClgSU2kYpYVBXU2EyfsoAGgHVa6znQIgCPAk1XuwYBV/F35Hc7hh0FyY71yI
	 CNYQQ6RpMfmOTGfBm5kMOS3TAPsw/5XmbYYWbRlN8qWnFrRbNCZO/NNCGct5wk1CRm
	 8ZqNsBGYlKuDax35Ckg+Mbf7lMOvB42PQMmFxXuqn71ipix4hAVyHXRiOavozWffMO
	 vBM3B9hHAYkHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC56FC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507383368.31295.9935481860545494702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41e9e0c2951fdecb4d12cd27230ba02eb7e733823d4f6b974529ddab835f662
Date: Sun, 26 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785073833

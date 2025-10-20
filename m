Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC933987
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760929194; cv=none; b=VnEEAlvU+LmTnMTC+9Se6Vtva90QGaCREvA7pd9mfqs6r0Gleqx3JCyr56aCWCxHG3LUCjLs/r+zCXE4xaxQBnwYi91qnN2XCMijOZ86FPayloABPv6UekmzG8swzGozfOZr+ltMXZusblzDtFsp4k3tVF59170cwfE9f1YNeLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760929194; c=relaxed/simple;
	bh=eOOHXm4ncBfCeHAXh46oaXnPqYJhxLjW/HboC5V+Dlc=;
	h=To:Subject:From:Message-Id:Date; b=YB6pw7OEPpzHUhd/K9s4EtroC13koA2QihmFjTrzX4HTbSEN+cdM9s9NDb2eXSiTFHsnxpP1GzBSSRl6I2Pav+miqrgXYdtpeXGQsmk/byZZx9jCBqS46JHjXmcDILxCEPCZALL40dLNDVaLsInqrPG8sjHQwHKEXxBC6tR+qNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4vi9wBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4vi9wBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4476C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760929193;
	bh=eOOHXm4ncBfCeHAXh46oaXnPqYJhxLjW/HboC5V+Dlc=;
	h=To:Subject:From:Date:From;
	b=P4vi9wBLyfL0eJjT5uUzmGED98Dmz/AuQl0y7C3owXOB3L/vGL0gcviDCboA1sg15
	 TVtlnI0nEzEch6WQ26bUTIBNYEjyGJdJTNtEy819H8UNluu27UF66tpzM78k/+pevf
	 3wl0WOn7WVtoJ73chxCttXuCgp/cBNxXUaroSz5gk5t9kRX0PtYn+iPjc1//iO+5e1
	 u1/dlp/T7iBVODxsHK3SrO7hIlerF/02alrJv813hyWg8IpivXx6GcVV2Jmk4B6Dl4
	 OOTA4jkTDPW/dTuMu2EdQhsOtXRGxmCJ/acfOu+oZRRZY+9kryEuSHoF11YyXkI1pw
	 Acm2AqY0V8reQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0FCCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092919358.29426.2959610126293747041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109bbd45cd3f52478466c3af0e437741c7a5ab946fa07fb88c90ee9a52258bde
Date: Mon, 20 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760929193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CAB35948
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760320794; cv=none; b=NsKSFIycUKlbPSsvc98e7eyyoqfDK9SIod3Q7XbTQAGD4Ux7UvgGRAbcu34LuTHL+d5uK06GS0UsACwz6sTNV64YhcqHv44xBdBzzTZ8U+Yr9/yrzAHqHGUXnaPOBgbO38NiYyfFVyQYY1DJUvsRKceuvQw3w3/UE4F2tkEnpb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760320794; c=relaxed/simple;
	bh=CkGiNbkQlUNTGjSyPzeTY7QwAvcFsf6lcuZIoJGruE4=;
	h=To:Subject:From:Message-Id:Date; b=D0EArGPGvE9ZTVFzPq+rekZ88HAelLV2aif4GODEY2hYX28hk1SHM8nxy9NAimdUPlc6UxF2dYJQXx1VCOdb0rR4hSCTFJMScb8vndGrFUyZD9SbT7yZvgG3g/kCunUsmbZrM3NFgBVCFgdXzGc3cWqMzw8IO8MwDDO5sAtExYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfUN5o6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfUN5o6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760320793;
	bh=CkGiNbkQlUNTGjSyPzeTY7QwAvcFsf6lcuZIoJGruE4=;
	h=To:Subject:From:Date:From;
	b=MfUN5o6m9v0aweTqkh8Ini8onD1euKeT/qNACI07FhAQKQvIdfBKoUhG78Q7p5wBO
	 kMH3F9RQw8+RhUAjVTePeZIhSalqQ/O7PKwYhV4HG8YODsWKawyekS4rOFtYdNu+xs
	 eeK1E626jMukTxm876cyankcAR8MLanzR4yU0saJiICjys7a8TdBgyGnwf2r3PsOr1
	 iPZnjzgtMSwX8oQx4FXJQqmYgqFadw7K0uEARQWau+x/jTn8StPUgLGHF8+84RSUEE
	 kQRFJ80uWtGjGI65fNtoJhIzFvWVQbTjdmTrfeDt1EI9EfJ1CJWZpmAudCYK0A40tB
	 I/IaL3gjQxhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CDCCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032079357.31896.9732804975066844225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e70d24e6bfc0d825c063c3e7bed9e4983d998ccf09e5ca3c3a8ba9e422099d6
Date: Mon, 13 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760320793

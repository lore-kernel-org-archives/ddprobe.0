Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F5C285C8B
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762229994; cv=none; b=eet6ETVyquUwA51DGdJOdqGu4c4e7mqX6012Iqcbc5N4zEAP/rmesdSnIwSTPNBjFtTCol9iNJ6Mrcnnkcy7SUtCuxJrXZAW0DfvSwTXoVfeMsdzEVGS3YCGKG9Fc/X+satTX9WBrPAZlAYaK3TSFWEeyhWyUhZ7rYJoQtEpgLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762229994; c=relaxed/simple;
	bh=tKuiDeSCRXFNCDCvcUwU/y2WQPnL7QAm7e170VH0oLM=;
	h=To:Subject:From:Message-Id:Date; b=dlS16cG5KMHKsfIzrclm9sS9g91J7wgsBssNVglfbEVCmliG3BUchRkRJTYubYd9RsdbBGMZaSbubbWalAknSM9OD2ARuzkvKIFWUOgVLRu1bLS3I/NG0fUiuqB8hoOdze7x5SHhejh/6gewEHEnBnCMCIIyj7wEQvA7MbXbmNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfgxLJDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfgxLJDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57E0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762229993;
	bh=tKuiDeSCRXFNCDCvcUwU/y2WQPnL7QAm7e170VH0oLM=;
	h=To:Subject:From:Date:From;
	b=rfgxLJDtZk6hFJLceN2Q6zxFIcWvs9oSk1t3zmMiN132smoOhHdog1QEXJL1b6i0w
	 f5XBCHoQ4XgnPFKCOcAqSdiZAfOhuKIrhkvqFsT5VFWHOUoW9r/cyjnMO0UQq9QBH6
	 O4VJ1/FzTqusCDUKDB8JawYVcdKAwPnJ0tmrCWPF22nLp3OL5CXgOT5TbItRJD6yFF
	 61T8Ra0UUgx8TH4GvQxV0mS1jKn/mMVbrWs8vZ4cr+vwKPrJgQVTZelQIzFYVW8Pw1
	 j6nZSvmskHxvs/1wdsmVFIVK5q0E1I9KaVy4G2hCGK7OdmK4zXLjCMTbpGybSoR0z7
	 mE84A4qVSCv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D87CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222999365.8864.9243298316779970189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b13bce260d0ec5aafb8a3c5e76b8a4147d2c121cb0c56c872bc51c860d1e717
Date: Tue, 04 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762229993

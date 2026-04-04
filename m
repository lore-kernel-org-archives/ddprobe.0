Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D0D37EFF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775295334; cv=none; b=dLsnfjofgZS9VWh9F8Pv+SRMyc9GVf73ffTpcTCqIFt7CbrMhMQnGFV9/xeMkdoZmVGcY1xkXBZqXLOzeVPQcj7Hj18qO4pLFhv0WCT9WGNuybbzWHfufE7tNH2zrV7DuHIHn4yi7jlaGf9cKUUWnO2M0qwFkFlR6r3yGEQ3IMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775295334; c=relaxed/simple;
	bh=8/gHKQlFAiL67raseWqftbGNhkiG6rrDsgg5eUqQIKs=;
	h=To:Subject:From:Message-Id:Date; b=NrWwCPFSbCRR9FenWDwM8uj87oOGX0TqB6s/HYpn6/GgunKBRpCXH/M5Utfm8y2E0XAWjFvaP1cDgIJqjliAD4Ol8TlpgIcxImR2U0ix/eTFhX60LOQcO9AbNRJUCFGEA0suwz0UoNUiTQ0GSPOkwgjaR2WwMFt2ZlQDuBDw/hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8TW45VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8TW45VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF8CC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775295333;
	bh=8/gHKQlFAiL67raseWqftbGNhkiG6rrDsgg5eUqQIKs=;
	h=To:Subject:From:Date:From;
	b=t8TW45VCW/XK2y24YCB6m7U/ACyulIWGbB6AX1KrgtOFSoWdTEH7IEleyDCSPgvQ7
	 3OUmC04hWYt6QuZ7I/udgUglIxTuYhXxvAyb2TN7PLYdaiq2s3usJtewj2Jf/tT0jl
	 BHEAmyHH2v4HrK/uju7NwyD/WYpVplTMB4Lw6sMMLyfTjMRjL+FNzCgUMeuEoeX7J0
	 VE5SHWUYYuzeUVPFLW73IVOXsllxBDoL4O7/RFIkGck2OyLIqW7Lu/7hmeCTaignUk
	 4fa4uQmWK53DtJe2OzQoXGhxZHOCmEnbrURg0dxwbfIE1/s9jdVP+V+JsG+5I2wCB1
	 eXsnpRBMcQD+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C1EE88D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529533371.15430.5858938131514034804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7c69ec6c9e1e701e60463d41ee75d0745cddc270582116f1d9857837b2f918
Date: Sat, 04 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775295333

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FBD319840
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764923575; cv=none; b=TpOd8looBOv0pqwYosGq/ZBFW9aCerO1/Tvy3jQXFsybru/3W4h7cLLbg7mrsYMdVS2a9oEOcRVxIN8Nlpd51JratPTb70CCZDto093A7L8PIewqRqcI35Dt/cD8hPio/gR1BQo6eHkt1RFPI+zahbpveA9v4nKQfImery4OC7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764923575; c=relaxed/simple;
	bh=zI01GTznnD0jTQUF1pL6IQkkv+29rdkwh3zN8Gr8S2E=;
	h=To:Subject:From:Message-Id:Date; b=qURNzr39z6Yg6ZfDH5uTB9JS5xSp2zmLYS9UAb7fa930p5pHsKRpyrEkxSVBeo+KC8yDRFdqo0Zcp9byOemyU/FxmurFogdwGF1mEmjtr9TasscqFVA46TwZALGkY57I+NLoOK7+ZvzwHjBvKNfuy1iomSnfl0XCULQEy4JjwQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQVliLGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQVliLGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3469C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764923573;
	bh=zI01GTznnD0jTQUF1pL6IQkkv+29rdkwh3zN8Gr8S2E=;
	h=To:Subject:From:Date:From;
	b=gQVliLGorsSX3sY6Tcwcn20Z8JIo+9zGuXpQTpMGCun2ffCE4WzdNqtKGQslwN203
	 oHxHOjDS1Urq0VC5NlVDTMXDNmeGxcsk1RAPRMcfAkz4lGAcVvwepS7Vl5H7YUXOKB
	 oAwoq7V0fACGyAvkzthXJ7ufQHrtVU3KkbsTctA4+8VZyAHnvePU3nrwMJrjDvqy/8
	 BcmiLXHjC/cChm54npU6k2EyM87PT+UKU96PCRcbUWFIKU2783bnI/0n53mVP94mrF
	 jIwbnW0jWXLtjMa+iZqcBRN5NwJP1FdMSHZyU38HCITK084Uo+NM1TRVR4xuGtBk7o
	 I2f21v41uG6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F73D2E03E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492357359.22739.3718181513175601473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2be5d117ca3f81797f1c11d7f8052a782481188ba30effd31ed2de6778e166c
Date: Fri, 05 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764923573

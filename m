Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C97E3BA244
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780415674; cv=none; b=O4G0bOwuLzO3l22OmD+EjUMZftTxJUsS5PxiiEzfGq2Xa1q7T1Z0k15yF1ZAD4Ku9fSkojn491W+Q1VhM+028bbN+2R5Ympsh68BZqCLYk39edYHaJ5wYrdYEeKEAg4SPm93p+CbVHlYCCDGirE2jekqjebW3H5FDOg1YR5/aMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780415674; c=relaxed/simple;
	bh=1pf+VXRVaqe+6Q9hZZJyioKTbIbv7BtmTQK9w98ZeeU=;
	h=To:Subject:From:Message-Id:Date; b=PImEGAfbn95IVsUvFhp1mwb11QlwetPaAkFTahfFcl9v2GXVhYfEOqO/V3VP2ajrQz6FPSdvETnhpcamEVCl2hvnHpj5OUEWBjoxpU4Dy7tCHthmvxi8h+Q8gSrHjm0lMni1j6ChFFHq5CUJh4lqTusnlPgV86qu5iXQ05AqwtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOqde4GY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOqde4GY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4AFC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780415673;
	bh=1pf+VXRVaqe+6Q9hZZJyioKTbIbv7BtmTQK9w98ZeeU=;
	h=To:Subject:From:Date:From;
	b=qOqde4GYSK7EXxhsiwdN7KmaLL0aLb8sSt3sAPwTQMMv7kcsojlanI4gqpsFt+SOj
	 WjnXuC3d2iFH11olRtN9g82DfbmCpCDO54QwEVfYRw/9XD60U18z14DCDbwHQ9jGj8
	 ohvGQoTSHwjkis22nAYAmYdWYSywnwTfI9nAN+UNBcTVq14jB/Q3IRCEgzsVikZBep
	 zgchpHPzwENdEV5XMVrpa3p5UATPl7udL9CHu4tzf6qVmoTzx83WdiySgY7fd8T69d
	 /9aSpstmV/kBokMRv9vz2E5CEZpsJZ1/Sciksd1QAx6/uitguTgftKKEG8XZ/alHGM
	 jfWiE4OATq2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B4CD6E64
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041567370.29794.771222199882035413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b835065bad447a0ca1032ea6d7076ec18265722c7b8815a392b1720f04ddfc7
Date: Tue, 02 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780415673

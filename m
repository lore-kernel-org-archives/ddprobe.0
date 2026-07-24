Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5516D2EEE97
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784866234; cv=none; b=cyv/zv9Um+dLb/AGq8F9fJ9/M7bWwQN+KHfdjtaTlgSNB9Lgx7tEyKK+voes6T/T8YmEPHnsk2ALnlVT0dpoqNPxbBCXs7YtSBNbrkd0U08OjRnImL/tIkAO2Xpya0bv1uMUJe5+d4zjcpfAOCmnoSahaUUQzgvl46xEEyXx/8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784866234; c=relaxed/simple;
	bh=x6SxnxHWUa6pgdwZPQCV6WGwUS58P6WMVBLsSofV4Fs=;
	h=To:Subject:From:Message-Id:Date; b=cbeqbPGPyebdvt3N9YWDZcKmrcmYc+MuyXMz9+ZtJIqRqrWVFHdwoPessvkQX+HRQutWW/GzLM6Xkx2r2TKRUhpozZ/mtW7JJUOJ498G20Kkvo3+JfcFSEUuBfsqMMtmeITqAh59QlXZlRmVD7DHpeWZqM5wPbkEwDyxR9UJ6gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkrmIeqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkrmIeqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784866233;
	bh=x6SxnxHWUa6pgdwZPQCV6WGwUS58P6WMVBLsSofV4Fs=;
	h=To:Subject:From:Date:From;
	b=DkrmIeqkOSIcEVKMyn2MXjk6vbx1efTffQX/6vrVHFio+irL8k16RDB2Q5MI36NT8
	 laC+6lcU+y+wp6g4Q4VVG4Po51MsVyyef9PPDk7HAmT9ydjDz7CNUaJ/XNMWkWGCd7
	 kCcrXHR/tbbkgpMZnbmXFU8+wAqEvTroFJB2HS4kOXnSzWY/xSNuc9dys7ubeSQB3K
	 kPHFcR/WvDvDFel1hBOobgpNHGdheeumnx+xc28Wx9pNCr1Qy5X71eQ0KisHm8n8JF
	 JbyjIWlgql096Z8WWvIR+0ZDlr1Qe2YbnUEpIpAM5zAxzqQOpiUeYAenTQgGiuhpkO
	 EHxDq0S2i9jpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8052C4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486623368.2482.5839625103304231372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c0526a9337cc9f95ed7361c7b603b6587c4a15aa3ae4c95c83073cc1fff5ab
Date: Fri, 24 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784866233

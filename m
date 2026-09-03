Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE35406818
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788428434; cv=none; b=dvTsEZHg11yHwu0oNV9WX9/Z+w2QLE+GEsZ5yoOVcWyH07JyC/STlabCv9fg5xBp6GQkaX+mK/8tdiRaCpxaKu+xtsvdFiAk1plXc9thRy1d4JJeH1iypsG9nySk52n5xpAeV/n2Logvf/jgvi9R84/L0OdN2avHTMX3lf9Fpdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788428434; c=relaxed/simple;
	bh=CoBDAvu1XAVQTPkUbtBRFKCYkVbkrlTZf+/D6D61bKk=;
	h=To:Subject:From:Message-Id:Date; b=V5xRDVjvl09vc2A0oIXLrI1NHnHL1u3BGfQQVSo3f4d6odyMBQQqgmxOSQ2NFnJ0uSZbzTglhLOCFFHeR79lC6k1mFDGMxMM+Z7wj5srXKXjfQSLYmkUc+K860MK7VjMMvqtd29rKo/xxQGHNN7TckrQ3Ye5mT+QQv/YfFMCe5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSfXkU8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSfXkU8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5E0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788428433;
	bh=CoBDAvu1XAVQTPkUbtBRFKCYkVbkrlTZf+/D6D61bKk=;
	h=To:Subject:From:Date:From;
	b=iSfXkU8pRUOGlUybmDGyicx5KvOldqWWiofTC+TmWWklE4o48jyk6YCc42Be3zm/H
	 choAZu52OGI5TUPhSXHwUZfSZsDu0zDvcAsuF0gLkZyTNRVYyOZr9bja8qndvdnGuO
	 6tmVHUF7vq/QNYmVIKwh/lnY0wkY+3xI7VlKIAQaY7BMVMpvDPHmNch8YqcnEIL7p7
	 QMVj2HP5crIQfP/FlMSKGj5FPWZTBptFxR8DI6g50WRTAVa3cH5tNfyBTFxglUu+rO
	 T2U499fHSL33H6DGyuphTfDIaNa9mbfktNFqz2/oiWzADI3QSxmhasFn5a9xrS3NwA
	 PGkip/gRbLD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6DC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842843368.23854.16168685646555697060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f1dc62e129558de6b40a8d97d54432b22b6492780126bffb466e4dadade446
Date: Thu, 03 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788428433

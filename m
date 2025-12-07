Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C81FC8
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765065774; cv=none; b=tqh9DVqFSiWVkNfWdyPngv5+RS2QrrTBpe6CoaiOHugjmVjFa70jRi1jBrQmQdyQdlF3T2c9s3eHHbVNDHKk9x4fuz6rrQ6CA9H5zhuuM12DNUTHJOE5zyOJXlFM8alDgCwkCm5scyqXByLYlzG5YrWbrzPRHLIiDjJupAdKQQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765065774; c=relaxed/simple;
	bh=n87kMLhMXazFpQP5QOcAt2PSk7dUJ5hhDolJMrWi0+8=;
	h=To:Subject:From:Message-Id:Date; b=T87wzbGk7K90cNrg6VxyX+LaqJB8B/LvlKPKs/lPczsICTLU5gEbe4KKyYC/GNHFxljJexWGo7EijxwAq2TaZOl5KEV3jp8uNtL60Z4jqoANE6DXvBcE+Rgsp0Ehga/6B+wA3zw5hBD5l7GMqokVjT2sG3JUMUT5SIjPrpUFaOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CONgDxvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CONgDxvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BC9C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765065773;
	bh=n87kMLhMXazFpQP5QOcAt2PSk7dUJ5hhDolJMrWi0+8=;
	h=To:Subject:From:Date:From;
	b=CONgDxvchgR9s1o71ulEgWhuWPv+3mfjOSYoN/El4R6fSLhGDNudDMjsiNBlXOf91
	 iNSg3PMB64EoRe6b1Ux73ZydTTUs9YuxCqYuc0E3FS4N9rafKD/stMOeFblbZhkS/i
	 uEGN+PAP0EeSJLIR4C29U8N9OM9chkTR6oQGHnvt3pxnnLZ2J6j60Q4g0VGXSUXgwo
	 QmHENgA/xGq/zKpUvBjLulsHbNbwe8eMJppN/dj1K4Mfl2j4Jv5VwIJyCcCIDtwf56
	 G+McSZ/ZzR50FR+ITSTCLOdmx8JBw84cSOz8N+tiJPi9SaG7KOTC5FtBcLqiIe4+Cm
	 vC2hdZItqlg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B9D3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506577359.31048.13551046816900691596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f827fdeabea969963e95d6809764329d4eb64ee62493457b9a87ad41f8f6fad
Date: Sun, 07 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765065773

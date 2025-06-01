Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E531754B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748806194; cv=none; b=XjZdQR2mJWRrhpRG39CsTVBh8lWMGsGGBAqEc4sDYD6dgv71oqVTuLAO3sNOZZVTrboXMPaonEdH1fT4dkxMzownHH08RbXcBTyYcHkYagYg3YIBdMDw6XWC02h4i3FpmVrrUaRQX/OCBs9eoDAVY++8tpeeUQk5tXEerAFWR40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748806194; c=relaxed/simple;
	bh=qdgXZBWFC9yKdBXgAtyl1cV60NHFeL5kxxAbg/E/OqU=;
	h=To:Subject:From:Message-Id:Date; b=nIVvMrDLBBm7BHMBx60bVrypOOcOcvsA+O8wYQb9qXocVraPYkVrOnXss6EqhH0b1m42SO7ICkce25XnWNcaWGGweqAkyzjrrZcKRO6DR06WKd0Wliuz0sXytBT5ZMvEvUZAigbU5CVSV6d6vEmhC2ovmKBKUh/AOV/WHKPGZKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3vAxu8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3vAxu8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748806193;
	bh=qdgXZBWFC9yKdBXgAtyl1cV60NHFeL5kxxAbg/E/OqU=;
	h=To:Subject:From:Date:From;
	b=M3vAxu8Zx7/ilyNi5NRzq5NvWu/AllFWn7aRI58/qlN6pJxC9wKCWLkNBN+K9QMe5
	 Jytn7d81HntTITf9znOKxeyCCbFrYWwDikJRAjWEYP3+ST5SLiFi5WvmZOPN0W9Uzq
	 x3QK74r8R0aJ1gYmAClj33o/GOSck7GTI793NSDvFJOrgXla4wGk2XNt0QIOBWDwpt
	 L3fDHX+9nhsBKVTuQrHVulIWoIontAg3XkMLiQ5fLG2aZbc5HPC+HMFuc6V2b5HNsQ
	 CKKHZndA4JDvVtQhqOlFQIvC4NotWFD8YTBB2cpYn8/3CUSyu7/RefbNdr0Q3nCeYP
	 e5OvMymklEmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA6C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880619358.18096.1671660789883770534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962a32f8cef85ce2e35a21efb32c995860191c6200d7af88d1465578d8725066
Date: Sun, 01 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748806193

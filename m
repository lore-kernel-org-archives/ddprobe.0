Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8EC10A1F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746212394; cv=none; b=Y1Ftv/4r9nLV5hOFovmMr6nMuIOF1b/pdU6KNVakkVSByzR4d31JnpuYrsNZlioRWtwJFE4V3a3eYzNYUDU1CNHP5RMFa1eq5cpvWm2BmWg3k+LGZhGoZql+UCQ4/8Aivvue7ZhTu6WHBg7TYW7dnEtW5UM6yTqiHUKyqt30kog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746212394; c=relaxed/simple;
	bh=TOpClR08Br5fz/Jgn7Vm2tYAXLJJvFdxhxY/hwSJDhU=;
	h=To:Subject:From:Message-Id:Date; b=krDLgbSOV6zW2qtTiqaxufaysfrFwpYR9t2DLkXB8UQVpUM4GoUrs12nYoDGXz9JbR7oXXYcfAGmt2TBnAdZxbW6lLjo+jg0yLagkjU7cKmXl1s5mGgsPmAFHYq7tI5xThZDBFR36h9JPf47aOUiT/af8Sd5GtVWb40HtHlLsMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+pidUVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+pidUVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746212393;
	bh=TOpClR08Br5fz/Jgn7Vm2tYAXLJJvFdxhxY/hwSJDhU=;
	h=To:Subject:From:Date:From;
	b=o+pidUVgH8Vs94dQRwtGDStBsMnlg65sUU7kwqWMXMmtdEPGq2U+aoYFMF7uZ8xUD
	 KPS2D+8QhBYUKxWEsCC0x/oWzXQVKmEMy8glmCWx2BJeS9A9ml2235yuIvrK3p/UsE
	 nVx/+qQCooFPZ0MBVb8X8fYQO85W6MkBKvV1SLwpQ1Xqwk/a2C5Dan4jGk8W3BoHCK
	 rJ3n8z0GkeFDokZJF97U0qrOg6qRpkXZDanI0B8+QCX5myjPOb7FH8YI3jrU1myPit
	 ORqE2RWDBZAyRKJ3p9yZaLbiYuXV8k2NrbBYNlnXSwTy6WMErySy/Pe0CkzmEiAb1U
	 +fRk2IkmR3vhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA98C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621239357.2331.14296985920173058508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fead6488d8e4ba9e0b410b6c4baef7a690b85c91a80d3038f4c47cb890604f
Date: Fri, 02 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746212393

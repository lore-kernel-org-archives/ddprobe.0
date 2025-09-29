Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A942EACF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759158594; cv=none; b=oh0n84GOs9xdzIrDBEdqMxe9md1k+gToP6NjMjWxjDHGd3Npx7nYvU4jxrH29xVhk74HE0htpbWHb9lXGgQKr0MJZmirn+oINcZsSm7NWYj9QOhXk8y2eHbMfARCUwM3CWZXbVgqmrUM6NRjJ6SXkItdACydbCBezCcuROPxiSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759158594; c=relaxed/simple;
	bh=ua0N33ZvVcXCtCbpeVH4mWTyj3gvZSxv5oshpjwWUmg=;
	h=To:Subject:From:Message-Id:Date; b=cQc8TDhGaa1t5T7MxXNg9qXmhHbq5l7oC7TMfZqVTiLZMw7yOilLuIFwMwpa1Zj66nKN2ShNIL9Uz0uY1gUC1kXbD2a426fnNrC0XxwU/nAWLNiL/vLEMByDSP43ba4aFs55rD2HsghYxmsqSB63PO/SUULKfd5GGjb/s/KiHEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAKph/G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAKph/G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF98C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759158593;
	bh=ua0N33ZvVcXCtCbpeVH4mWTyj3gvZSxv5oshpjwWUmg=;
	h=To:Subject:From:Date:From;
	b=GAKph/G0nhywdgJ1xIioZoXROoO/JoV4U0EvdcCFhAjCmLZ/qzeq00j/1LZem8Db3
	 4FBZPr1bd8yXjtbHiHvxRZ767kb33llnZt8zkwAXst0M3JUqY2OcxPG7r4F+3zu9y5
	 QfID7uCaCzsNX5dtUBuaIw3OFo8083zi/TvavtdQVnr7TV3xEuAGHHAYZu20sqq4wY
	 2bJu8ZfM9qnMDXj2AXo4IEf6xLvvIGRshzPS6TOox7yr4eDihH6g4mXMZpM6NyMZCk
	 QB79kIQ0ov+RMQy8plvpWk+rv2XqrSAHPf109TcAKZpNPCu0xWvjikHGXxmg83uWwl
	 LIcOtzMWLuGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96479CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915859360.26720.12329368822881658734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defb8232660b3a45678ab538ad3db524fa454770a7c0d6e0876dcc9e25a66276
Date: Mon, 29 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759158593

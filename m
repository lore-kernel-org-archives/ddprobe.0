Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C951BD9C9
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741589935; cv=none; b=b/W7qcr/+xpZp6hmiy2djelcgaDNElXF87KzNY+3Y3Tv3CUjVaQV7TEmM7rJg7cNrWhOWPwCYxZN3aWDfL8EVfWjbPUL2flKwwRFVhNi70ZUariK0FUN7RZmwg1179JYrVs8f7NE7M78pu06Nxf9CUGS43ktPCugeW2xH1Q1pGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741589935; c=relaxed/simple;
	bh=f8rw7+bi68uIOstjYwqtTNCipC5tRFBjr0tfpwT3zXw=;
	h=To:Subject:From:Message-Id:Date; b=o5D1Op+nCmHR5HrF5vOEruIRlyO7B1cdL5Y8ZCNT8zDck7trXjMZSllomjtVkXNVvPM51ggligp/2O0vFi8TY+BXGMeaR7uowTOyrPjXjK79D/flCvZWAB1xrFDYjZF2bY5b0RhDdSw08HmGSYYw4ZyYvvv3E3kKY3UObVvMOHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERPw3uTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERPw3uTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585FC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741589933;
	bh=f8rw7+bi68uIOstjYwqtTNCipC5tRFBjr0tfpwT3zXw=;
	h=To:Subject:From:Date:From;
	b=ERPw3uTam00ZWwgLBgWim/86J4Q470F1uNMmq6QVOmBK7ooXjDDpzZETkQPkqvF0+
	 js1OwPsaCB8Bv8Se1Yj2WUqZjL1ZSo5W3w3oMl4Tb4JwMeeEzh4I1trDcubkQJ8pvh
	 yUNFnqxX9TveeZ/SfDXqXFfDbUeu7sFBqsOo/tLqWKSN3Oy34ePBJMgP9Io2ZM8JeW
	 EyCoFFfuVbzPC704WWe9Ze27QRPDezoH3eupQPohQFNUy/QQn8BsUgeRUH7IOVGhiU
	 x505AJ3lEvHfGQchwQUoSt+gkiO4NYjzSZV9elLpKx7Mn0gw32MdjCMut3Hf/XTxgc
	 2BCkivBBcAv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F65C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174158993359.25771.8500036144088515322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33b3c04260805167987cc9c25e3cb2b42b4d2d98350effb301808fd7c0950c6
Date: Mon, 10 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741589933

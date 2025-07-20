Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4034E4C97
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752973194; cv=none; b=FzI6eB/oFZSAbsSpCT9sQqIE3434G0dxpSVdGoVsNrGqtEUI8ANXBsyPCuFCqnIgW6YdW4W6TVOLAdAMljJUT5U4D82MbEzQqolsySEyGYKa3ShtLLJhtNjUZA2+HG4Jk4I9qPjugfzXxXJAu7342aDUiZFpbIjB3X/GFVySWlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752973194; c=relaxed/simple;
	bh=WmabmHE7eKJLf+diNwXxNlRb6JiTJsu+GX0dkOAYKU8=;
	h=To:Subject:From:Message-Id:Date; b=aIiCPA9p4UqmTHLjihXObRO3wFaeMW5mlJ8CkbJNIb6uXahDD0kziwSg3HtxppD4bG6C43oOOzqSz38q1NpiD0ZrH1hS6r9/OREerUThcoj//R0otAv9PsT/maPHWAjVjvvZEQ+P0YE0KMOuVTZfjsafhr96xA8YkVZ/FYdL/KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bht8Rbiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bht8Rbiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A880CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752973193;
	bh=WmabmHE7eKJLf+diNwXxNlRb6JiTJsu+GX0dkOAYKU8=;
	h=To:Subject:From:Date:From;
	b=bht8RbiqT3Sop6qro4vI1FKbXI4nwnkHW3uewj5wBcVkrMbpF+rxMfdo9T6YT2zRO
	 H4EkonkNgyl7TtVLdQyrMQMaz7kJPWQmRAlAmNtw25Mz2JAplZEAPz5ooGb6hMB4cM
	 GpXV1HFUn0/a6n7sXKpo3Qr/cSWtuQAdOKT+VhTABm0qYyoLRdCMaoWt+jtM3ESBoH
	 Vb9i+3DdLd2TynDAx7Yoy8FkSjqp6+XQUuRxvu/JwfYWHCfJHylEzngqHoQ4P6FT6C
	 nfnD5J4Sx4nOPzHUFhmvayMtLxKV9sDfCB4Dxamw1JgPakzbZphw6IrxuODdCWorc7
	 LVbCeYMNq357g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92205C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297319357.25251.17085224199272835887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca47ae2e6248c03afcadb5915cfbbed649a94234fa30565df07d3342c89ff4a7
Date: Sun, 20 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752973193

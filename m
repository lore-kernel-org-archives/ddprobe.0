Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFCF4A3E
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760971194; cv=none; b=pKIQj+1o28lbWzSLy7COHsAjAHYi2C4C1uos5d3NY0JIXY3amTyxIfIEf3gQGcQjD0/NBXAxkYQII1YRtiR5aIXLDkoPXHKkvgWpmBR2lQinRTOgoq7N/XW3BSpC5WiiTKMf6fz/L6Lu6kRyaZDl70IwJIszwGmMxTniLukBGn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760971194; c=relaxed/simple;
	bh=eaxwT+vK3CyJFCP6JTXmeuj5qC5Jrbehjh15Mu8YqYE=;
	h=To:Subject:From:Message-Id:Date; b=TFOqARCfdlhJsR5SpwzOKzoqs/WpgnUdyae501VhStff1LlmAxM4pO8ePpSHOx6mRBe8Tvbi3Pqeg+9/fbuf48cyggiutbQC8E3C06EQJDHEqsQ97hsJdhl6MocE9VH/7TYTF50dqSkQNyra2kEWmxvj201SQWtYBuWCK2PZ/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3B9UuE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3B9UuE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3002C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760971193;
	bh=eaxwT+vK3CyJFCP6JTXmeuj5qC5Jrbehjh15Mu8YqYE=;
	h=To:Subject:From:Date:From;
	b=A3B9UuE2yDKTdJjCOncSpNIZpja63Oo5zdZP2sfgZplg49tpHVb+kI2CyuDDMaoBi
	 DhS1zJV+E2rY4PDAx6t2UcM7YckTnn8TXkOkrvZ1XUhgv4HU36NIXwHQbb0waR/2y6
	 ovsg5nxPImus6unkODQnBVqMSUO/DcMpBYnIbxTYfqzeLrcLXjhevUaBVS3eU6mRJK
	 2zPr7suMTssURTtXYSyAhNFiajXRlea2+aSQpmYfhClYiuw8tTHvuMtLon5sHTAt9q
	 SzutNijpTNrlMlLtN0PO1kqsVtnru1TDeDi42G8aA9IQGV51LNDxVjjLKQniKLHuVQ
	 lJdXWI34T8++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF9CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097119358.31963.2736585223523141909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c777acd6f38dc7de2ac2bbce473018ae51b8644b643431a1ea46dbef0f99080d
Date: Mon, 20 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760971193

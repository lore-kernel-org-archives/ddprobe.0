Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07E1F4C89
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754924394; cv=none; b=clBf++DGys2V8Du/cgRxfOJwPWuQvM2npP/E215oUKNtK27jbRwrg6ksXaTdZvs+Ge8fhqI/jssgg9fWWDj6UGSEoABL/VauWHbpKj6lP8iWhx8qoKEZNvrMzsI97UfOASd6ttz+Kg08/sqOGTiE4tYjzPCgxyZPUFjgfJ0DIX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754924394; c=relaxed/simple;
	bh=YXz0F5GOsOdVVxKYBReC+iuENfM4A2CX7vPCIGDT+e4=;
	h=To:Subject:From:Message-Id:Date; b=eNCUk05S5QPk0SR+afQHrmfUTqhoWfpO8biNFCE5IBanzeGqcOI0mi2lyEqj+CYbGhaESnxr7TreULQ3WXdQNR2uBhPYgI4Fq2f9oTtAOnKwyhVAR8pDeydhxbEz8ijrNILdmIHJB1dSb9MZf03xzN3cnROLNBzpC9PeFx3DbIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5nuDNRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5nuDNRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E98C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754924393;
	bh=YXz0F5GOsOdVVxKYBReC+iuENfM4A2CX7vPCIGDT+e4=;
	h=To:Subject:From:Date:From;
	b=b5nuDNRd+gAU6pJ9+OvrpQYa27/XtEEieBAuj/BtpeN0Ze0YdPG4ynBtEZFOhfoyd
	 UqH33hyxBHnIsgT/riJzNXXvDpHK1I0lXKmDEARF7zpYMKYmtGmIk14yLqO4dYMLBy
	 NUdwQCFRz5YiKqSv2CnYZLBrbwupyav9X+qctWiLtf2cRmkl2L4rQxp/KeHY91M+bd
	 /OiOK8hMlZlF6ihXRDVDyUGxsjjqL/FDO4kN1uDnTrI8TtC7j3nSqrx1UwnXf+xSTT
	 cIYr3qUupH3IhjkQbHKHK+S4gtmD+9RcMGox6/e+5qju6e/+GCxnrXDXnjcYsGKR8U
	 skhFMrwWYcCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3DC87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492439359.27573.9127257773498035191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2ab5c60c676a085afbdc42b96a4ce947e2f8b07ab5f4c379464f1f407bb9aa
Date: Mon, 11 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754924393

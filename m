Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097554594A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773878094; cv=none; b=hMav7o6GihHon8iZSZ6SpzsWggV4Z91mRAg/CWZ/1FnjgOmdbFr2qCCcIrKFezEDP/g97cC92yZoR16sl8siGU6/qeLv+5pEv4W5yY9RqY+cFl9XfKncmPtte95ji8rz1LuNtuQmSTVyaOzaMI1dFtj4tVEujPNz2M1llYc2ZDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773878094; c=relaxed/simple;
	bh=oq2l3vSLHPXfx3XLOtZy4fGtjuqdgGK4M4yEVk7GUIs=;
	h=To:Subject:From:Message-Id:Date; b=WKGwS33CNVImQ7SXfDfG8/C8yAQbvnKollvDxGLvkQNdqnY0lnwayZmL2NTy1IbZvFJGLnjbVxmKtiJ1p1QPtwV+THcXgpY07QFsdomGbDsBFBZOwdLWc0VM/NdqrQAwvOKTw5HJxJ6/hfwRpYzFgxenQ/ygKTcU6RIav1x9iqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sthQgTGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sthQgTGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955DC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773878093;
	bh=oq2l3vSLHPXfx3XLOtZy4fGtjuqdgGK4M4yEVk7GUIs=;
	h=To:Subject:From:Date:From;
	b=sthQgTGhSYP3P8sqr/vQ2l3bdfM4vpGYA8dEJ2z71TU7amXj7qBaa7ucUcmz+jBzX
	 J6K4MP+CZFyKtJRxsaHZDejPa3CIyI/pDn6o8rbyQzt7YUH0Sldwz9W8O5R9wpbL9p
	 Kb0EvaQnZPhzqvv4oelI9f49booQv928142md9JTmrLrHZsQWHSUc5hxRPugUfZBQ1
	 LCkvm3sybtHgPaIJLpbySLdwc11xz9pRoqLkLqDwanc/m+n3GDu+Ftq9ml7MvoYUrk
	 l5CsrSG+jMnPnWYlYKCpK2Z+Qy31RfjMRMrRqSIBm8OsdFElKO7Za5TQcd8NMlrKht
	 EnS8QVMkTeNsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F01088E5D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387809358.28820.6967385345299426249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d59371bb3d483e2734c6501c2f63c28195f679df173a41bb775d8e87be7a719
Date: Wed, 18 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773878093

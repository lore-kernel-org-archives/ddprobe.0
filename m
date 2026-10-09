Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6010F391E76
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791516634; cv=none; b=bxFYQ2JPE8bhzS9DVlpJkmCukoCAo2dcE1OQUxP1JTaS2/O/h/54Yg3t9v1nIP/LB+cx+m6Wyw6DHYKUtQkEH7ZxS09JR9Ny/6+couJM7Aob5pzweOisxJ3eONW3bFuill04nwI2mhyb9EmI4jDS3h9/pFXPJs7ckcUHbXKhNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791516634; c=relaxed/simple;
	bh=baxcIgfXX8LOUMGdOpd6e0mR5mFLmus+UPmNR5H/yT8=;
	h=To:Subject:From:Message-Id:Date; b=WmnXlkPIsTPc6tck/+HzZXReoYbLAu7+oQzvcIqudOPtXCVgSO2zwxfZNntmgMY5TOEbFmveUCZDjBQvXWWcbA4MN2tu8SS0N1W/raM0Csxb48xHuw2pb/OJvY+OsGw4qhhomj0qTyvoCt/Z1v1p+TPdFWCbxhSzxx0AsqzFKos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGPWpCho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGPWpCho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF919C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791516633;
	bh=baxcIgfXX8LOUMGdOpd6e0mR5mFLmus+UPmNR5H/yT8=;
	h=To:Subject:From:Date:From;
	b=DGPWpChoOuUfhlU0oIaPiWiDE6xR2nWBMv5aXphWO+sd331qV78FdYIX/JFMuBXOu
	 ooDzo3t6aJxRDp2XjUkLLMvzvrKGmvtkmO15VS0KdIq/rmUMGPGxqp6ZvrukUqtVU1
	 iwpUiFH3GMxFvpfa1jQVs808l2nS4nb9c1iJc89wWY551PXCD/PGaZ093VBK/GA4a1
	 jhg9NIO7djEzRVz1QctJ5nTj10GgSKPr+Rt4mPWz4lkBXFfEm1eXj0dL/QzTF2DIuE
	 XHySxk9AXgOxr2TsbXQxvcyDJZ9tt8n/jufMXc+PTH3lXSeDMTr5WSDXAb4GnzI1GL
	 OvBc2iUtdTRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F5CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151663369.5414.17616336231819736786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d706cfb7041b8c704ef6de4bc805aa5e76965c529c737b846e745a3574c287
Date: Fri, 09 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791516633

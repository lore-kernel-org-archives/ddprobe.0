Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A651CD15
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758388794; cv=none; b=W/Vw7Ki5P2MP06zX7QjNPIwaiCsSwYeMyBAzwUlH2ncumaMyJFYgXcwAP0AWmTSpfgWtwubYHC7oMxTR9IfAHqnzk78jwxS8ePrapXxqUmCirOfVOdoU0wNFGnCJzWwS/LfGd93CeqffermWyn6/aox9dlP+fQ5qN3XnADCiXdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758388794; c=relaxed/simple;
	bh=Zn3P3P9a4ENi7mYpqZbw7YEQfcS23ScYICth7FWyNpo=;
	h=To:Subject:From:Message-Id:Date; b=EWWIBb4Rtj6JFCx2R098rlgxzxCariZXXNly5uod2Nef4abj8drR3lPe2kkyRLaM1mh//rW1EpTTG+sM/DxCauZuB/oIZRHvat/WvAFI38q03wZjHF87wKVVqKu92XFGrnMsTGwPSxt/JtXH2nAinQZQwTJqTqDWzuJcvD4fapY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrKjyCTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrKjyCTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC0BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758388793;
	bh=Zn3P3P9a4ENi7mYpqZbw7YEQfcS23ScYICth7FWyNpo=;
	h=To:Subject:From:Date:From;
	b=QrKjyCTYqa/gcvJhGL+k7WRZaFeDUxiZuWCt/ZCw49Kiswc1XYruISBHn2+Bpqrot
	 MXa4l5z8N9n8bk2yOAD/nLl/6JgniOfKNRXLoXGHiXqFCE6a1WDESv+Pb3Bco1VsP/
	 eshAaa+3Zh0v/5F7wYczJBbJc64+e1i/yqno0skDpa89ZNRDBMvI2TSGEbDuvysBqH
	 p9ICveBI+z82AKTpY38VwqNUCFlVz9TAYmyHECnfLDbjIR2dJrqIQGc4Tdutvkov+e
	 L7LvdRQJsTclEZRqtsgVsLztgaYYmeQiaGkMREvom8gspNbhMTsGcIK73dRnPaKfCA
	 JuBCC4zRDVnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838879357.9411.15495481895843932616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00161b6f6ff27c9d6b5a857446c9e59f0668fdd1552eec6a5f83a3e2a13ac137
Date: Sat, 20 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758388793

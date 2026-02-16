Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F5B2DEA6E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771227294; cv=none; b=i23VpIMYwpW0qNlOW3FnHFXpmbEWOyaGQPWAJ7MgLDIO2CC5gfx67jTj3labtKAdSffN+DzVPjKWExwsSTsUb0nGoyE29OBEASWvWa645TQUtRlj/HGMUVeHBwEyCVRVw7ICUIkFcu3VI96tMFLK5FpBLAfIay579WbH2Qjte3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771227294; c=relaxed/simple;
	bh=Mhk/dWbUw2yI+yZYDK/wj0KqkIScz+YKd9alMjepwNg=;
	h=To:Subject:From:Message-Id:Date; b=PCH4XGG76Ak+vEdBFs2ynaSbt5aRdfwfE/bI4qubV9IXV+guMCebrTkGwkCD0HiflaDFLGupD+QNVq7l3NIgdArmFo5xfDIo31ZxR7dAGR2mrEC2VloZ0wgm1HxArBL9suW8akaQSqaL0CYVSNG1SsWKuYez2aEi2O+O+sIGS6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqe1j3Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqe1j3Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DDCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771227293;
	bh=Mhk/dWbUw2yI+yZYDK/wj0KqkIScz+YKd9alMjepwNg=;
	h=To:Subject:From:Date:From;
	b=oqe1j3SjYfqtDIDp8TjtcRPcqtsbRPno7lXdyET9Op3m254oOIfw6I+o6PhHWVBx0
	 q5SLjZhnSLbyyHr6LDv/nMc+warUet+qzzr6OtodW7Y8V/N9WjFLAZe8qPZQM8jXGx
	 BgwC8WmOPdVDNLUwFXWr4d+VlZVHavBL1Mh2fc5Y59VIkO0wgPI1S8Dy9tFYW8PkrF
	 KcNVqvZ0cLwztkyMVaI+hl3UXWDUP0R1qU/6r7MOtwuaRl0BNGmAL3OvbDIgCk6vxR
	 /d6v8fpEmlgpyWKbGTOevjjOO53yOS551Jg2X3F15BwsOqt6ujfE71zqbaLR8QUyED
	 yHdhrcfYx6IZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D35E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122729360.21743.11257746934108961897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ba625ac3389c9fad92c3b1a76ca35919c32da5279d845f8402713b90c8e180
Date: Mon, 16 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771227293

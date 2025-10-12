Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B9B1E260D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760265594; cv=none; b=bnakQH5q5fzqv2g6BE/T7Q+51p2wyt+fGE43vTLqLCAkR1KTOt1Xe63ViKuWs8zrKGlRWZq8XAsnbqNzxZlHv7Bu+z85I7kQ6DnJcB9M8mn8jo3a32Y7thYWU9FgBZmYPqVIf02H1Laqc4q5ql+BFWLBwEbtoseTAH6Ge1F34eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760265594; c=relaxed/simple;
	bh=QEOv1G+F3EC7U4OqIYsVrb45h/mBY7Y1PRzXAA2iZfo=;
	h=To:Subject:From:Message-Id:Date; b=iCKUstJU21zDZDPlYggpA80YYTJGJDHOnfJ8JAVAD1h1r5dBY043Negl/kjy1cApyWTf9W+baOjAJqO4rswCXseFzIJULtSbga7DQRylLxDw80JXMxjj7KZVWQS1h3LAfqR/VRb3jpKblfGvosUuk05E72OAWw/1LBOMAHY6sDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md/W88wP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md/W88wP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B69C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760265593;
	bh=QEOv1G+F3EC7U4OqIYsVrb45h/mBY7Y1PRzXAA2iZfo=;
	h=To:Subject:From:Date:From;
	b=Md/W88wPtoqbUmJ146Mm+GuTBp1F6+9tt5BQVtuCjJQHV8WpQtYC/0H5GKteNCg9X
	 s33Jplug3PTxlSkLpr6q/RANUSpmgzd19HSUrzgQAT2DBz7uXUYsMTfiTIb+GLbQ6f
	 b7jA094gYv4wIwhYzLLHnysluG9TqKvuiu2Z7FXOGN/WXAu+Q8tJWWSXVjJMPXHyBs
	 gMbMKpTcahuwYuoSrxaNe6TN2UDcRIbj0u5ZdZzCjRpi7ahKPOLLhKx2Gyoczkn/OD
	 J8CqUJ3g82Z7LMeCX/NwWESxEC3hv64U6C96hko90JI2gl16drESEkb9d1eBnImrTq
	 T9KPECTaLvdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96218CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026559358.3121.6896830633393628686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df55bdd22b342b3e15a8baf44e0b8f1ecbb16256fa376bb7f910bb0f9a11f2af
Date: Sun, 12 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760265593

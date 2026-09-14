Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BCA368D76
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789366234; cv=none; b=Z6hBJOAGJTeqXd/uULG6N0uJyXNAh6bnj4ikzjKNfGd7N3WD+gYhnxtQkLXPVywgTZTmUdyRA188M3IFCh8xfrOGRBrMgEtC+hksTyF+/YUR70ff5lj/PTTfq7RmazzVjdZ9buIbjFABllB9PmQo4SrW59NZqC//ePYOfZiAdYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789366234; c=relaxed/simple;
	bh=tI6qdqrOpOMAFmlVCBkq60G0J34GZQJ9d17whj6cyX4=;
	h=To:Subject:From:Message-Id:Date; b=FaSIjOL97UG+qt0CUAq4SBDylH7RW2WCMGPByFny+bEBb/eIE2Kmikcqvni3UQUKRxKQdzdTQ7QoTHHwodbSDGJmmsGqe2FMoFF00N6KFZUmnQtzyuCBo4sTnfM2XcP9P2YEqqY1EAIDUjEdfidl/WS/NH5885wCxkVkmGvQYAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8zRgY4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8zRgY4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DE5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789366233;
	bh=tI6qdqrOpOMAFmlVCBkq60G0J34GZQJ9d17whj6cyX4=;
	h=To:Subject:From:Date:From;
	b=R8zRgY4iaaegZr7F2mozbzRa8gsjMtvVIX4HiDSGSnWYte+cKYljmtJIaC4Qu9JwD
	 zkCAs/rsoGZWjY2M7mmCJ9QgzlxQdSBIlIR5DSKXowP2Xk+sTkGLMAim8curEZKbDe
	 HFihvNIR7nMfgcKiO7TJuno5qVY4zIxUIxjchmJX+I0z51QktfC5GUSlEy6mYfeLl9
	 TcprgNFmWCgg9KM831qlr3NUUF5tNJ4VFQtJmnZFZK6/7vyVW36Y3DHlj0xZUh1tZy
	 qGZtJVAzbC3uEkYkWF9dHTt18DbqjBRXhDaOtZEdPWR/Y/icuL2foDumr3GjwYWnO4
	 FZYXdrYNwbNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C1C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936623368.28690.3786989980789683621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2e87586cbec65c1a243e0d41f4e047af567147967e1974dc6612e5d727be66
Date: Mon, 14 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789366233

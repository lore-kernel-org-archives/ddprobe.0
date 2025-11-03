Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FF2BE631
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762210194; cv=none; b=tg5pDnQI8Q8Exk0ux4IesXV6iCgTPC7bSpRb0jiG91o4mpIcOwf7SiyMm1Jje37Xg6JUbJGJLRqoKi5A4zAfbDNzdxC8R+QXiDzUtUSQmtXtq0wwtHEqQjwaWtdX8JlHg9K638LK4kI1Pz2Ep8ivX0Dg8N3dxmGU5Tx7pImBxqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762210194; c=relaxed/simple;
	bh=XHz/NQxzWvuX8zRunQcajB6F/AJ5KNt3vpLAbxx1wBo=;
	h=To:Subject:From:Message-Id:Date; b=sZDcfZSUsaQIMrBs2Mp+HJHCI5q9P+dKc7rw1A1qPolaS7iodyW5WPeYFvi0LCT3LuwH1lx8wp8eW2EcCiTYAtO3I39rGKsXIxvAX/FoY6XqSznnN3VTLg7v2NpaqnL+28ptC/tneGZ+oMGCev3fBTnEdnZob72R8uyVOOGOk3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMGtswzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMGtswzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762210193;
	bh=XHz/NQxzWvuX8zRunQcajB6F/AJ5KNt3vpLAbxx1wBo=;
	h=To:Subject:From:Date:From;
	b=iMGtswzxj8LKsl4RCaDn1JEo5bTpFDt1kauECSZQKfaji3fE1H8M62kjaS8XYYDdB
	 jKQSfgsG3WKvhvIzF+6P2PZ1CKaC2N/akrZA1NCDZG9OeIaXA7Kr7wqHhXN6GD6YcF
	 rAwSET68428i8ZLiwG7BkAHvMCnUwtHvA40KsfmO6C0Zo/z95vwO45HPBwxAgB+UO5
	 GqdjzvXuZ4zu05k1mkDljxGHplgNW3ketONr0QozINffiw/pTQ9ZVNxzRn8W7E6USj
	 gL+vb3JOdCt2bkFnPJE03aLPyKVPkYOfcmdQUd9Ql02/11kplSlPSHqxVPBGrajA3n
	 KTf0UMkpQZ6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8BCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221019360.25736.14914590770844919743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc53055ca216bb2baf397597d290b9018ff52cd49dc5b992135cafe5d36c29a
Date: Mon, 03 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762210193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4FA2BDC0F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786818634; cv=none; b=CILWxccDREdsUZf9q/LnA2J5Z3AESOwJZ6JUFKREC27PxhknDfQzzmPrhSvwamQPAQDmjMoG/lZtbu0TNomRQoOpmDWaEKBwx5hao7f3s6jWFOrLPhRgEy6ZEzQkOimLuxKhO69i6mgK7zC2mi63MBmvTkkxu5Z05A5VOzOaoFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786818634; c=relaxed/simple;
	bh=JyuTKDChE5tZ/auv6otEqzNbuERAKMU5ATQfvB65qJI=;
	h=To:Subject:From:Message-Id:Date; b=LkB7mBbsNqg83P4+1uZLK/ODUFRYM5NLBPaotvGtbsgpbNtDxaQTqq4fqrGlA11J5NY+pk50STrVpR+AxlbvGLzkSQI3WC0qlZGLz7jcGMfNlNVhn6p1ttj5gXzRxe32NZtXr3FFOh3JQFTwP2YdCQiyRes9wi7mj5KxQC/i64Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRGudgZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRGudgZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4477C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786818633;
	bh=JyuTKDChE5tZ/auv6otEqzNbuERAKMU5ATQfvB65qJI=;
	h=To:Subject:From:Date:From;
	b=vRGudgZ6/xhmKHH1UHdsxf0mYVqRGYfYIb3tNM2UHToWHN2DHTV+qx8sMDnYwr6zp
	 PKgZQqc012vmzoabNSaNyPt1wo02wc6VjUKVzcwGCD3QFeAGfDaxdNeHOSsKA8kRX9
	 4+xcH+Zijf3d5P2Db8Qgj2ZlHtRdCZEbEnWL+y6W6vhX5yibgjCaIqnmDF3bZPq6Li
	 6ZxfCnoA9pP1qePW/Mr57e6uz16//hfGus+9Igu8dibI+PIXBEg+nv2DkXNUEZUEay
	 UZ5Q+1WgUhpLySNHooihDFZrgrcke0XiDqOyWD9J38HGI7XPqtWDOsgLwlXGzsUWy4
	 iS7ck+EG5ueQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B0C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681863368.29082.497808163837994129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8e2b3f966f22b6599ba2290041bce4e0c7de88445a7ed63f3e0026d8ca461f
Date: Sat, 15 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786818633

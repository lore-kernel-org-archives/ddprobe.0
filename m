Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D031C3C18
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751551794; cv=none; b=XowAnyG/S2eidE9XretgGfxU1ejCAKg0ft+JbIGdoN5xbesecYzJMXW2idjGeMs9Y2Tz7lHHkqhbVNvHE6xmNoNH+PWlyWxzDrHgsuhCchj0+JSXkbCtsBLnbsgbLr+BU+/7jFiNjuE5+aweEsYVpzp9VVCDTOWNndOWGL4gP08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751551794; c=relaxed/simple;
	bh=kAEeQxeZb5gnTnyZQFBdn1j18yENM1XhCg3MSzVz6Gk=;
	h=To:Subject:From:Message-Id:Date; b=jr0ay40MB3HhV78ZQ7XuiEGi/pg0ltIJHTVR736Cy8eBI+f69CILZXpROjTGYN/LesO69XN5VW13BGNhVi0WQtbtWEYoac6nSMD/I4UzvsynGihgR2SG1WSWJ8fB5ynnjYbHJi1dVcesRTnAUrK8qC4QGROErnjBBdNlBI3hahQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYmGioae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYmGioae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6CCC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751551793;
	bh=kAEeQxeZb5gnTnyZQFBdn1j18yENM1XhCg3MSzVz6Gk=;
	h=To:Subject:From:Date:From;
	b=oYmGioaeGHb5YdwgOvARVj2fvDMSSEnTK2LktiKenugdI6rsW05h2e2yk3GK5pm5q
	 lA86nyVLpuZLRWl9Bs/eLUl/Yh5ma3lJrYqyNYSmXzUGocxes7UG8bw522Dz3IF8iI
	 LAzuzKdujUwgWARlb0KzB6MyCjO10bw9E4TBmCn4yGNkWyCtBJo65bdZws3tO95PKW
	 CZs3tF0tMX5GlIXl412ddoEJ7l8kmsE12oMl0KKURFJ3/VYhPkheL0oM/gYoGHORfT
	 0IcjSzvXzj6B3MjwA9n9qLnn5Zl9euuGpEa6l1hUsvggpjGi4QnhFrezQqWcfUKKIQ
	 4bQZPFVWeX9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA11C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155179357.4200.11218381836602299253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1f259d7764ec4f78ae306435f34e97b32b314e055f12620b3d78328e8aa4c9
Date: Thu, 03 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751551793

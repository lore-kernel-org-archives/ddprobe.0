Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B0B3B27D8
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791688234; cv=none; b=jiVAzDvDO1/EVf9Vdgi7Lg8HkUvq474QphyDRF8vSoxMCDqjV8wQxhnFC1U6dkVxN+Iwyu2vpf1phvcBctFqjkhjLpZuhvZ2/8ypv/+nvZQQioe5U7ooXSlawygHniBstGP+QPQGqwzEebE8JFjoEY3s9Ndl82+ek7JOch6Jykc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791688234; c=relaxed/simple;
	bh=Bq+ka8k24eMFq0JtiWHJxw/PFzYhluasleOzbDQPJ8s=;
	h=To:Subject:From:Message-Id:Date; b=XNpiZko+04OuYK1nOQia7wPEJLFj4/LwdW67vFBJ1nPzLYm9sKL9zTPQy8zLfbqAlgAOZPNZHDdV3kXWaee+ZP56ynXij+0O1HWzZ2hP0MQxHdYGD6wCXyu4U5MdhjgCdV48HkT3rRhK9ERZmA/oEpBbqJOBk/cQgT34T61NOks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGTPqoX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGTPqoX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E38C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791688233;
	bh=Bq+ka8k24eMFq0JtiWHJxw/PFzYhluasleOzbDQPJ8s=;
	h=To:Subject:From:Date:From;
	b=KGTPqoX/uCwoCPRUYATkGbS89Ps26f40w+a6yrLDQXFnZiz790LXiAhTQgw7noq7O
	 i+uMjzFFOGWZMUV3KINniWaIMx1OcaiRtPz4QDuKpMjzUHWWjC6eBLpyTDDtRwQ5SS
	 Wyuw3KvC+QEYJ3qwM4e81mXDhQIXNLFqUIHYG6g6c8ns/VUEIUcHS/e+vadc3KEk6w
	 TtkIRgjPR9JMjLcGy+LQWDeemA1XM3iFEdTzz9dFvUvr0q535OT2mYqMaoYYaN9jzT
	 nZjBpZ3Upg3DiTcRK9VuGyDZNcicsOo3yWOEKAo/gE6W8vyo0zm33LJaoD3lTT+A9L
	 tnGVwBklr/0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB99CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168823368.24776.13843692153169802643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbbb32b1457bc5d081456b806d8db603298da7bf4bcfd87a7ad23ec0c7e5291
Date: Sun, 11 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791688233

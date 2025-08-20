Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C783C17
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755683994; cv=none; b=LkmKRM3z5/btXaIyDg7aRrSJVK2sXihAr3uYaF3HkJvk5h+Z/fMJPYe2mI1VNyUwNpKX62o2J4XCfUFtXPZXN6tqMw7cAu7faMacaf+JQDcpUKpAsuWMdut+PTo6wbBGYy0IQ6adnY/5a+SCPqVPhNYyODHDh8mZONovcGVFc5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755683994; c=relaxed/simple;
	bh=zi2HW6yPeAC6/rbyPKWsLurin9/Jdo/5IO4q11YKeH8=;
	h=To:Subject:From:Message-Id:Date; b=aYKc6PjZ2+bAzpYEm4W1oP59lbOK+L80DVIZ/XfODBESIhEU4zJMYk11djSrj9OHXD2Sz80zmsu/c/N5VK2lgQYTcFp/6/0uBDLlOkk0c3vQGyu1NPMk65a1MTNz7BiSywek6fGS6JCmWwB8DtmklOsYcshAwVO2Zd5/NXmCK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeY4iC7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeY4iC7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB0CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755683993;
	bh=zi2HW6yPeAC6/rbyPKWsLurin9/Jdo/5IO4q11YKeH8=;
	h=To:Subject:From:Date:From;
	b=JeY4iC7fOQ7c07bTkgc3AOXR34mK4Q1hBlAHOITWmm9gXQq7bOsvyWbbM1dKx1S2h
	 4iYBwZlkwGNYxI699IHHxK5Ep1jjX5YBOr0x9KhfW9/6uuhH6wEAZS/ZOAtVyxRH+8
	 uzhD9hsG5RvCnteEwgD9dzoi31wVdqxMPzn4qmyNo6OaCfNSTAB5Mq7Zduwbr2tq/k
	 sC3HSlarcFzOv4eDaNvmwK4FwfjerXtfhfjj4/GCyJr/cMGDRMpWi/p0HqsNOXWFvu
	 uWQRthO5wm5LfJXNt+6wB4FjUVWw2BFYEtZUZTvR85k15KlA3gMgJct+JxlEFIibGW
	 /2FEGb7Npc9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E6CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568399357.31733.16498334715187717038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f54b1d10566f99f8565a26865fba2fc8accd15136e21419bec393b4185907da
Date: Wed, 20 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755683993

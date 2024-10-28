Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB4B3A1DB
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730145954; cv=none; b=RvuA+jhIAxNYm/DwjFb8JpxQejeajOuoGdiW/jGPeOmr/yZ8vmu5PZmvt5uSKIgoyxIaVT+VKYXyYJ7yp20v/xnKTQKBIC+5+hxnfYv13O6IZ1eRu6sya1YdkcaLggCzyThN6NfWcKrpQ+G8bkvdOFEEry7JryVrqHrQ6LmLSc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730145954; c=relaxed/simple;
	bh=Br6JJKWZ9TRYESr+RO0XZph3++EqouNkkxTVEgnIbk8=;
	h=To:Subject:From:Message-Id:Date; b=JFN6F/RvrdK3EJH3xNjN6hF2j/kZOGypVu780DVhEc5Qf1vjmG0Exuvd//XcH1zUjbpSTctulJl/C7NgSNPDSj5NhfY+QX3ZFy3K7LcBklLwFDOrelGwo/DGdzABZOeG/CT0aNIeO+lrioOiJy/wAj5ZvlPjQZhGEbynglQgSd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjigieVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjigieVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC757C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730145953;
	bh=Br6JJKWZ9TRYESr+RO0XZph3++EqouNkkxTVEgnIbk8=;
	h=To:Subject:From:Date:From;
	b=WjigieVlfjcNfTKtEeP8N18cxuM3DmCCtBwoGggCVeq4wdAQPItWY8m98diwK++aq
	 9VbkUI6fCAIT7Ky0sHGOh9vClVF8L+D/OnvV2VQ6HOGqdvWCRgevE71pEBb9F1+W6W
	 iEVJMqjsY+Lcc6tjP6CHyclAVj6xsC5R+WrTYRn2/bdAW2aGzIzFKwKtuNtOrwhyVv
	 XAoJzdzE4qwdmOKhSWNjk+94j07SEGfzqeqfCu2UuyTCdILFSlDfd8BzomU6Kj4UHn
	 LR2px7d/JeARH56XSXkZhjRVfY+0cE8jkkkkeHulrQDbg2rEMTtDrSQb8B+w6805zS
	 F6e7Gls8Ijq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCBAD5B143
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014595362.32084.2023957126349572995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50035d20198c645d4cc69b29c3f70cbb809569e1183725bfd2d59d45a90e7578
Date: Mon, 28 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730145953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176BE2980D3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752838794; cv=none; b=QkQhhxU5tmGd98g7Elj0U0XQrNucdV9Dn2lwn5p3DjV0UJzLdFpFu9dVbXxI1c3mNdc2YWVKjoA0qHamloLzhhJXyuJKcQQuRyQtmNHd/nqXHxqv5kJlZfeZ8135ghXyKrD29E5MppF6RU3F7Eyf4N9AzcuqeR/H1oNtQJqGOeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752838794; c=relaxed/simple;
	bh=9mf6jMwui8NvvCnK3rUR11W3Akb442PxgNA+H2WDJgg=;
	h=To:Subject:From:Message-Id:Date; b=KpAwX1h/EKgYbA3HAwX+2XpwvN6JljPTyS5AwaUHZtAgu2p5fxRDtNfK1gl6S2l67hpi9U2imGKWAFhJD/bxDVd2aMbvmeUCOXqBQVmaWtNNljggugG0ph6tDzyv0vFWJBX9AtAKZo2usBqyAV6JE3m+N8ntvNf2ZLjvdd9ZJqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDeRPGdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDeRPGdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752838793;
	bh=9mf6jMwui8NvvCnK3rUR11W3Akb442PxgNA+H2WDJgg=;
	h=To:Subject:From:Date:From;
	b=ZDeRPGdQe6uBHoP15kiPkFEPVOWKMzHnAUIy/JEH48GPBR8WhuKJ7s4qVo9VX7QoG
	 5K3IXYchCXJr6V6x40EcvRhIr2qiTYGZSECfj65cFLP0i4czfliQrpbE7NsFXbS64+
	 OpHEH2k4E8UcR/w8AKcD5aVdxvmX+iRtNFUfPur/8fsIGw34NTtclqs1KyQEDHgFux
	 tm/QVpYnMnHDyJdNXjAnfCg0bg4i6+O8giBxmFJakNl18Nv7aSI8g9SCYit5dUD07I
	 /DKlbqhcwz0IIIJwVajGWV0yb8JFKx8RSq+ExCjCrDqUrHgiW/eQR/VTJMdB4LdGyq
	 34tBY4+as4BSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB70C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283879357.14583.3088456163617731294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4eed0f2a0657aeacb8f022b9561699388cf3346f80c12b954124b156ec3dcae
Date: Fri, 18 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752838793

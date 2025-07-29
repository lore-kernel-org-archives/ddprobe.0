Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A35B1F7554
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753795794; cv=none; b=cLVrDXlGiP/cD7X9vxHaq02L7hYBeRPaGP649ZjgLHiSjmAFAOJtWD6JRucJD0KxINqzUBjMdWkIemMqEPL8m/ZU+6Gvdvmnp0B2KtIcPBn/UqImSusBz0jGdFoa/ZClCuZPV/t5FeFV9Sq+K0Bhxd6CqTYe/p3cHXJm7wJJP2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753795794; c=relaxed/simple;
	bh=g8fLA9ri8ImLKgnRhup49+BWAgJfd2W4k2JrtIUsDHg=;
	h=To:Subject:From:Message-Id:Date; b=QgPS80c45e+neyR2FJK369bDMhpBUGDAFu9we27d8m3lPHXmWfhFIZ1W5WPGKJSsbQNo6srF+y666k4ZVOtUpZDVxk4+SypH5iD1fLaYAxz5ODcFnxYu1n9cK4kp9hEUYaQ85jFx1wA9kxIOp8hGY0Pw9buspr1P9yrK6R5CQk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr17ZAvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr17ZAvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B55C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753795793;
	bh=g8fLA9ri8ImLKgnRhup49+BWAgJfd2W4k2JrtIUsDHg=;
	h=To:Subject:From:Date:From;
	b=Yr17ZAvDnFrtK1abcCislxwNDPEcD8lgnwrgdK4wn759HAUTBQB7+ieBQe/t4HGel
	 Ajqsx9m97GeCPYbeH8VXOp9lVkaacPxtg1+9Aic+Jtm5NG/4yxCdZ4+msxBmLDeXNe
	 9KtiGeeI9pwF43IX7B/q7AXqCd5jZgTc36jSyCVmmLNvy08QwdFlVhKJpXyH9l4GFx
	 UJfqAxDG90NrPleAzzeBan6StGygMam1oX0gkg3c7mbtw/PoWlw38yBBnm7CuoVqfz
	 OWAEYeLP9DOe3HUjn5b5K3FrStH9SjNnx2Fx0CH/WIs9T0/SVIJomVBkQtQ/o3sAXW
	 vurnJ9v0tj87A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F05C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379579359.26934.12412281886389926263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfc47ea63d8cad21c22be074835c7fecf0428cf6a257327d85f58aa395f6f51
Date: Tue, 29 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753795793

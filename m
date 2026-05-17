Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E4405C30
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779015034; cv=none; b=IBWqKrbQB6Q97ZmjiZWArxf6Hy/s6QxESGPVDBkqbLyxqYy18BT9otuSU8XKoQIJXexjWkMs1KL8AaOzJIXvIO1BfwOSab/cvOmZVfGuyXPuyFe46HApYlTa0oimjVI3rQttX5pfzmPorJ8/gU6VbCr++Vr1mZ5zFZ/WTg4iOfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779015034; c=relaxed/simple;
	bh=DlwyE5UzfDeOAlIXUB4OhzWlyQhlJk/MjnSMA2vYdms=;
	h=To:Subject:From:Message-Id:Date; b=J8PTUA/GD0tZcWLw93u9DPy+K0aBnlhLe5ORVXkA4mLqru/dNtiM9Ev1BDOZYzUCbFE83LNzH7nXkt97Vrfd6PNzFlkdLi7oQpo+KxKoJl3t4xKJ9sIRO8jD6QVb4qUr6vBZdoJBtuZOczQszPS2X3bPyjLrWPGPXmX65JmmJ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9PItKLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9PItKLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD526C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779015033;
	bh=DlwyE5UzfDeOAlIXUB4OhzWlyQhlJk/MjnSMA2vYdms=;
	h=To:Subject:From:Date:From;
	b=l9PItKLhAK8c6MIAENjxzcoBf6Ex3ti+KsIm03qx4aROWVISWMIrCJY0pEVf1EZVo
	 kg7DMCCsQBRCF1NQo0M8C/rRRvXpYcvOLLZZ5vURQHtglCtTkhNEXgR9XNFaG5rcNS
	 Tnr5kC6D8Iy1ncptuFKgjJ0DZkVzbcvsSNaCWcHYV67jAzJ/syfizT9WHMtz1QFpJW
	 X7SKUHEOd5SwBSftlyoFSypmcy40+MnwOeBXXt5tUPqb+cURswylO25+9x6QzDQj/4
	 rGwPdkEfV1FqUX8risY7AWAXRyvAnyAef+hS/Q/+iYttZjvv77G+DxVK4PqHDhd/wk
	 Tf02dInD1dRnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABECDCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901503369.6862.9698903046189840250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e15f70207ecb791c3038b2d7e540e854301122fccd7186cb995796285c8c847
Date: Sun, 17 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779015033

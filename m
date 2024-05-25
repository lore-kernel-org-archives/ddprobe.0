Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5457825601
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716639863; cv=none; b=ARiRjMSWxGc2nD/u4B5iyQyuXQe2xuBj23eYpvqJEiikmMLNrhKEunAnzFwRckUcw30PbiDdmkQmmlWqIPiRHwP3GGkCUqj5DpN7m5NMDo7kbXYBKwbVYeVSjx6j1o6gGeyzBc/svsWOetVlGOEbINY3tQ7FihI3WJnJkWupY6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716639863; c=relaxed/simple;
	bh=2zHUn7WWnp3+hBsXQhR2OhueeoPK8aPCo58bPARd+Bg=;
	h=To:Subject:From:Message-Id:Date; b=e5tajt9lTcFRHihWib/aECztk8kR8nt3ireqZHl3Lj0ejNNdTPr2feqi6SbptxbdHEuv/9ZxHRVBkOqig1GUlHLBx30QnMv9yXa9ywMTOmgUPYCprxEPBmEL8c7CUvaoJYcjOXbOIZbT4aUJNcmuJYumf1eg8IYR2kMd/J7Bguc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B//xZ1vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B//xZ1vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE64AC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716639862;
	bh=2zHUn7WWnp3+hBsXQhR2OhueeoPK8aPCo58bPARd+Bg=;
	h=To:Subject:From:Date:From;
	b=B//xZ1vqpxtspGO6GJgaEY7094fd/J8XmlZDrTeR6Oe9e4wi4XeJr/OBo4F2ysmfB
	 li5cxwwhrZSmbbkAumWUm6u0m31DMBh4e5UKV1iEMKQ2x40PwQVLwbTkg89lN0v0ry
	 CnruPNbZatxa9KHQHQ06N93M98TNHN/gGQvyZusYxVgh18eWjskAU4N4qqb89DMVGx
	 fS86ORzX5mjcb4+1rsC4GZ282uky1QleMCNnQHC+cFkasjgqaQPJDr64j4bUZHm4hD
	 MsCsNu/HnIFAew/N62rJf/xqRYySgSomduiuD+gj6frE205uLbW6vgPU0PzfH+JxcE
	 eLPviggZFXq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C266BC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663986277.3941.18365327111907831824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cae3de23959c4c16db986e781ba266e387f154df10b6ba2d684493d4643c141
Date: Sat, 25 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716639862

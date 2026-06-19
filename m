Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215273B14A8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781880394; cv=none; b=V2aZGwCuSJblAI7/PCFnPV28WYJB9foteawQNBP/6qgqL8M0qxUwfN6UOKakawjcRfjckArYo4pVOpjSIioqdF9KR+gbZEgieOpRhuXo/ydrCj8Gb7CWqWNS3M+/guDUzk0xy4jNzjBQs8G442OwEc3okQ/I7NFYQnuXkTYaacA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781880394; c=relaxed/simple;
	bh=4ar2MJ1eZBDTqnMJBeK5KwTdBrAHs4mM9FDMBWlDOIY=;
	h=To:Subject:From:Message-Id:Date; b=MGg1b/cXI9wq4FBHhxMe3AOdB8B//qKzEBDYm0mlGADKxpRwt3Xx6Bw+ELkcWcV7zjOi73GKbZWsuimJgVorOX2vaZkIJUMyM7QqMMzsE2KKaGvR1u4SgN0Ap2EnuY4B6Am+1DzAUbnv1bfs7sm8sSevAp7SGjM8mgiwuIuWHpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lysse3Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lysse3Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA27BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781880393;
	bh=4ar2MJ1eZBDTqnMJBeK5KwTdBrAHs4mM9FDMBWlDOIY=;
	h=To:Subject:From:Date:From;
	b=Lysse3OhYx9THnxYvLiY862hlFVAeb9E7U9ABke4FmhWFXR+NS5VUhkN+jSoYwUxy
	 nE8z0uVfdLVk+nZSMObQ012VkInPz8PbsFayfRw3cwVk/d8AEJvCr7uiL2HFCqbpzl
	 6ASLyr1KAHw3a+MUb2p5GPvgP9QjOMhhxFXF6HOadGpYgPs1b0rVMFW2n0OGFHz9kT
	 QzMZ1upEtbjeyUSOJETMl2IFgDvtl6qt9QHUS5LYisN74GeLEkwn0pGJ5o6ePrSK82
	 KswcO3FO6zFoDTdItf74zxYkLRfqSuaXIB+qQCG7ez8qAXZafGsE5PQ4wYV8oVlqyz
	 SxQvMl+FI7H7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EFCD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188039370.17169.12394180008251521630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0395d944fb0df579708b5c373d0f2ff2b84234f04a3d112d91b095c928668112
Date: Fri, 19 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781880393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76EA12F370
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712071697; cv=none; b=LmJGGbAIB4BCIy9KtAY8WuJyOfa1lnt3j5OTo2AziqSPGbekvczwe+R6ceyuOqJNJc/wmdnZceljFSc3QeHCzcxEAH0PkydoLCaUXQ/o9I2GrHx4jmrb0fB7e2SCq77F7v3lvIjczgEmqnMR2KIVuoUDlyciX4a3eH0/amqE0CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712071697; c=relaxed/simple;
	bh=ZCtqu9hdt3FVS1VNpTvISy2ovgfgWYYokUaKsoAur8I=;
	h=To:Subject:From:Message-Id:Date; b=YlDKzBaFjHI7fZuOBQ4GNbqbiN5dlgJ7Q14NrTQOmYn22QVR90/XKG0no2o5vCz8VENbsNAbf1jNw1b8Kufxgmgj8UExEjbk7ZsEwAb/2cpCjmcU+OjMhRvT+gTnGfxTtRLunk9Fv7van02AMJCQ49QLeg5r3WIkgPB/xMvcdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5GqyXlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5GqyXlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78405C433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712071696;
	bh=ZCtqu9hdt3FVS1VNpTvISy2ovgfgWYYokUaKsoAur8I=;
	h=To:Subject:From:Date:From;
	b=a5GqyXlhbFxPfIMI4MxlxQUUVsAmyNHcT/1Zs2JT4j+6LvU+ki/im66O97xsstubp
	 3wZ3vsNqvlNSGn1qMR6D0HuptqYrnvEpjYwJsGLTY5Hl9Alr0PxvhDlxbk8ib9ZdIW
	 16bi3BxQcj0MRiRn9rqVNDj4jbBpgfPAo45WXSetriQvLaYcHoVjUfRWuVY8KLkBMP
	 pCXTVmXnrygjdVcVSnaUs18uUiL0M98LOlnYqd4elxaMwCsuPr3P9pPcs/s3c8Kpk6
	 7pkSaXUvphiK1YRhkSeng20+vdJyjboyw9zKlm+lTLoWkPJmjAnvzzXTpk82jKy1Gb
	 6m9RZuOyLUipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64969CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171207169640.1495.14011002903641114133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efdb461013a27625858c32035e4627ad17c123a36c4ad2b82f899978afa3c93
Date: Tue, 02 Apr 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712071696

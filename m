Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EC12F5B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762390794; cv=none; b=RFpEBy4hGsgjZTD0PMQlUCf9kkQuZq4c088RwaHtAx3l8A8uy1w924iZnPfI+X+2Nv7SGjh+oPnWrGoSfRecZAJnztwXIP6913hEDinTbvdaKtrZcJuxqSWKNokFUcJnjKc208Bzdx7BznquEyNbkvlU2HNokcVYYikHxNWgXvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762390794; c=relaxed/simple;
	bh=hMOgem+L8Mf1mmBsdAGwAgN7iPg9e8mIVUZdYzvbpwk=;
	h=To:Subject:From:Message-Id:Date; b=oJw2EMhbVu7LeJrG4AiJ97tjlHBcsssPUjjVIcK+wiLuP9qhFtPE03304A6uQBTKSbpdqT81/W2jhi6zjc7US0pqnotSqMSAsD2RhPkOlTYvYXmNdl/VGV9a6LEiCRYQ6Z4IEgTmZgyWVF3uBmzjQnN1dG7tr9l29Hxvlb6Im+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd8q840W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd8q840W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2276C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762390793;
	bh=hMOgem+L8Mf1mmBsdAGwAgN7iPg9e8mIVUZdYzvbpwk=;
	h=To:Subject:From:Date:From;
	b=gd8q840WUon07OKenEnQmnUTA9FXkIIAmMNbug2EldT3Ovmn5m3C4pop4k+1j+ZOn
	 aotY2o73ToxgELOK3RHjxcdGwJUKhdMMF19oorl4BHdawzUtHQq/Wj19yp8p6xO3A0
	 SyT+lZ9LBR5PxTEA3d6CUtu2VbSxssbT1Tfs7G0AhflOrt/AC8gqaAmW5DuDd7qli6
	 y0yVt2YdIJnE1iHs9iFTV+VDxmFYWvuGidCRmdGlg5F83mZPgZwUhWrBUAAfd/MlGl
	 LU/Io+VXlz+auazT1Vfnsz2xgxwTy27lwz7Koed8afg/0R4v9PAri6QttgbVxRfHYf
	 n70rnX4B9pX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ACCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239079358.11929.7866088413831734973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a7a47e657d5c399dc11fb962af432a6d51096588d964156fd9ad6ada142d66
Date: Thu, 06 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762390793

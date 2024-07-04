Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2E2FC02
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720061723; cv=none; b=dP2QVeXCho7kgFDYCzbKs2UAi4UaMGrbuayN3y40KAU5lebPjz4RBKodzLeQy4AIXTPJqsWGfIGeqPQG2xc4A6NezO75UVcu+4TG+r4lRFDIWG4sLx+Rf229uYVQeK3oiHXqNeDI8XI4hnxHhusXqxkUKq+VQyKfk8O89qZwfvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720061723; c=relaxed/simple;
	bh=UHmaGMsrWPtNY7D4gU+iaRA94/DpvTUFG1hceiFJMIc=;
	h=To:Subject:From:Message-Id:Date; b=JWayRGdtI07cRJv5dO3zj7WvSxohpEot2qkiegmc/ACDFWCN2IDYQucd9viXdcTfSJN4sIVLjUc8C1eqxaoKBJKE92EiCO33oGi9suLH4qIxbY5HuHlYLamIbwfOKHjT3fMZDTVJNKFgB3okzFS/eA1nFU0sqFEhR2WV1Loaex8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+5b3TV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+5b3TV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D754FC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720061722;
	bh=UHmaGMsrWPtNY7D4gU+iaRA94/DpvTUFG1hceiFJMIc=;
	h=To:Subject:From:Date:From;
	b=s+5b3TV6G5APVeDYtxVjnD+WUHyxns4evuOaAY1rqL6Z5BSqBOHsn7D0eF9AzDh7J
	 MniWVKlM2IOpccR2wchgbizSk4PTh+9vlKEQYB8fKNFtNa2/d3VERkND3+BixgJcNf
	 sxtucO6WuKMN+oAA4cX4OS+0Ac8MRhzfH4Ahet8A1ScgurLRAW85TM6kT32P5Vz+Ue
	 fY+ik/Nak9jtNOjZaapxClx2WlMYxQJdBbka4ZdFUl6cYRN2nVFs19jqze1jZB/glA
	 1sBlkVWscIIqMf+S6ShdJPVFUhXPd/3qwNmLGCzv7nWnb+PHSbdMqUcGkKmLr/9FZ0
	 HSAZpKNTIWBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D91C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006172276.15590.12641549828777680486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ccb9a0d160b5df9b86dd04576b99069f73a041bd2ca3a18e4b750bbd80a5b9
Date: Thu, 04 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720061722

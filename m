Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD323D1CCE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907634; cv=none; b=uRcE9aNbT9Uey3s6XjYQt89TJorn7eavWeUcpszpYI4hwrrL1bGmnujOokO6BJlp88zrb2+PClEBCyyynJ84SqIUoPHkOTdbedCr77L6RXO3GFuN9z5pAm+2CQkXc7zC32+9PVMehryv9VCEd3VzIgkkkTpGfHNAHDpJInHF8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907634; c=relaxed/simple;
	bh=0Nshe1CMhLbzHgwKev+418yGf7ehBvVzESz9IWidJ7E=;
	h=To:Subject:From:Message-Id:Date; b=N/3DEbEWX/ZmJy8eeoraxFw+csCvaZBmpCQ+nRdx/zFEAnd7o13NdAlnbzWFD60Cemu/HoJb4fDJWwG2EqoBo1lOzPEC+4+eZhwjk78d0izQQWuAUo9tID3YryjzSl+e+qxNCGLhb3YYHPdVyggIMz5A48dmCMEkGccM89222+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttlprLqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttlprLqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4B9C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768907633;
	bh=0Nshe1CMhLbzHgwKev+418yGf7ehBvVzESz9IWidJ7E=;
	h=To:Subject:From:Date:From;
	b=ttlprLqfxbkCH5TU1iHz2BDprFOqUex0M7zfRWK98R44kQVGwT/CDBulj2u1oLr5u
	 CALlvNAsdyN7EggKD0C+jeY0rf8kH+jc7dp7gqA/DUGjJMs7onoxSRN3JXSRMLfAHd
	 sf/f19WCxo64ubf/47RuhRZ7gCQG9sCl6YmoqTbsRwX4hIMYyCvYXCZ5Y9h2w+ewNn
	 WewbULncB1AR5OsfO8nbBQJyZULBz+wtfZEe1LO8xQYcnvTt+3rfwnmYknWVWLB4x3
	 QNZr1ZSeFG7B/WOMukfwwLET1Pr41rgjb+3UmErjUM0y3fcTDq5QkXlzicuDcPKVS7
	 cVNMvDT0i/WDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD24D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890763375.2402.710773019872085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d8aec0e45512440b72d7825e1c544d15a78d265849501579ec70c1c8cb333b
Date: Tue, 20 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768907633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBB834D4C9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784083714; cv=none; b=nL2bDay81aKJPujZfjdTeqxHVie9EDDLjSWF9lKbSEgMAjLnMwyWP62vfnaMBzJpA8HE13g2OYlgmH5FOGz6o+7pBa7C/B6LNBtg9nWuGI0i/9C+uTzx14Fide/AJdkfj5u7KhhcWAgRGjSN5wG7oFFzPILOAQf3PE0CTvSB1y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784083714; c=relaxed/simple;
	bh=7kaTTAGH6PDQuES6kACW7R02MhkCUHMeN3RYQGkM+7g=;
	h=To:Subject:From:Message-Id:Date; b=sebQ+1lXgFYQGXAJA05fuN0JOLhjk5prrKQwMHslmoXY6+H2GUjC+N3VbBi9RUqu8Co6+OgTZnmHj53BYz3fs2Y+qi2gJB2cIcjLOW31/UkAQDALPgs6bZpiONn1QBhZh/Z+ELzVtMggNAwuigvLn929mUukq3StFN4LnRyhx+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI62dcSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI62dcSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE948C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784083713;
	bh=7kaTTAGH6PDQuES6kACW7R02MhkCUHMeN3RYQGkM+7g=;
	h=To:Subject:From:Date:From;
	b=tI62dcSRKYkWAvAAoALHbTgfKd4Z9jHRM7UDfmBS+5qOQ3rZE+Wm6gRO0ZKxoq2Px
	 iFEOhUWmZp5kbl7c9VciaEKS/lWYOFuE4sbILw9YrxbI63k7X3RhcRgupdSEaqjf+7
	 Uq15eZorwYM7Kf6Z1eQ9ga88u1PyGZUJplThSMDsHgywqEEUOd4fcYmx564CtGGKlJ
	 7U6T90wj+H1fdOJEfuZ9c3oLETzCu3nfzzIezgWmGISDmAuNEMHm3k8JdFU+oJUGwd
	 6s8T1l4LgI6M7LkWTKah/EYSbPurL7SeVtchfD6j6amQJX0L9fK9gmt7nJvQLflUqg
	 tyMeY1ZdHWbHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA934C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408371372.4874.10627594797352481611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a03d44b16eb698a75c60f5d33d1366675a1c79d09f8f59db3c9482f903ed82
Date: Wed, 15 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784083713

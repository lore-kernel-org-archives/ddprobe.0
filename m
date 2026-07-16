Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480913BE156
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784201314; cv=none; b=mnIwlqCaXYXNhSRSAlPf3l9rY6clZ16djfghlqYgh+s4VUXAtTelOg9T6/G4mzwoN8jqFesfwMzCs5VPllcUcHr3wkrsYArXbAt/aY5JqG0FwDTYQb9gYHq6xli4MIpeCbNoXRUWSZE3LPA4imClJpL31T2I9pSf2qNCZIVsXak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784201314; c=relaxed/simple;
	bh=V4H7S6HtnqaRQLwZKnb7ZkPGAgQuAsfxc5paI8tk+ew=;
	h=To:Subject:From:Message-Id:Date; b=LUCMM7cp8YcNeTb2MxmaZ9NdXdegRZwYKuR7ZPnJox4Ga/eX1P4YKdiTdAh4KGM4Uak1PyQ6b6oOiZHC/xGayAZ9CzKskm0aKatOU/JymIU9h0p1rN+OQT92/kkGUt9V306H1Nde1A+40mC2RxtAMdjRh9LU327r3pSQMzoxnJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImcfkRMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImcfkRMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2209C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784201313;
	bh=V4H7S6HtnqaRQLwZKnb7ZkPGAgQuAsfxc5paI8tk+ew=;
	h=To:Subject:From:Date:From;
	b=ImcfkRMNRIq6AtvPoQBrYdBGEgWVzNgjbLSiwKEbvO7X+gOl9AwrR/m5hQJ3IdE/B
	 e88P9nwArZFw+lHswh9OqSwLIJmzNAUbF8mceJwINP7BuhJ2X/1fdRbScszcDDfZWf
	 mj/g2h6dc0wsvsesLGzrJ9ZTU2+jmBqKQT6sc+OIVRoyFpvGxA/Ozn+b1C8rSnxLFK
	 P1VTIfFUdoHb0Hcn8lADNbk0J7HmKbnwoalJmCaTyxdzduj0ltlY9rE1GDSWGj2a4a
	 vRnMsOKn1wYo6qceY9i5JiA12C+4nMl4lXPn8xI+03/3bzKPMEVT19A52xwxw0tBRo
	 wvF4o0GVg5n+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF38BC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420131370.21091.8283962865907723047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8211d1cc8b2d4cf03973e42b6536d4349af1bdb9d94b7d89e2799295d4eb965a
Date: Thu, 16 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784201313

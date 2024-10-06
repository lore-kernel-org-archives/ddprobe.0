Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE35623CB
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728182154; cv=none; b=mFWtVks3KZor62c2BqLmpq8Z4rsoOJQxoqNu7DI2TUrX2opQy8hKNu/dOXK09lM7MdxNTdh2FGQuTTfda2EpWszRxWXLsift/OLEtQsMNFf6uVbpjQYbT1lkE+gfjWKlCH1bzYBeIlxlU4wbWVHO8H3D4WcpacUNHcpQYZgbQtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728182154; c=relaxed/simple;
	bh=rRfc0Qk/jvk9Jp5ax5c0Yme82BV1mpIet/As6rYK45c=;
	h=To:Subject:From:Message-Id:Date; b=IF8n9wtNn78lMrnApyWDYla9n+gn4RR72zsD9cLn2XjICfklu9QLsevuQaX35fjfIXtm8R9n3qR8oyJEXjdCPJoW8iO4pdNgR65W3DSG2Q8qWH6+8vjiNi0SjrrJtmGSOJUhrI6PB2FprIGyIWH2vWBoh3P0UDpOdwFJVS+M26w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBDlcwO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBDlcwO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B45C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728182153;
	bh=rRfc0Qk/jvk9Jp5ax5c0Yme82BV1mpIet/As6rYK45c=;
	h=To:Subject:From:Date:From;
	b=bBDlcwO2/d6ObbPL+W+aPVjNbYzQWhfAm2JuYg8ynB2Z4TWWITnJk80j4eOGeKcnB
	 lynEabhve/yKJ6ej8hUwH05tvc8OrdUTUEAcIR889iJUln+G4lpnY96KNsxjtbhwhn
	 bQQC/NXPMqCAvjtsIazZ49o3OgCZ12zFcMbuw/0dwTQEm644GcdYNNlLEvNpm3Jx2i
	 2FPpJai7yr2A3entGh8EITGOGvoD0FMkrf4p5pD9RScaDfHoCNr2rzavituOZIFuL9
	 pkB4zSenaz6esA5lrKF2ybaNJRSGkepPMazNjodeKYzh7qAsAcXw10gO+oDCDkGEeP
	 0wN2PJ4QKu52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C870CFB421
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818215360.24625.16551814520104498207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e872f88a8b315b655b9d9c57151da350e7accb492df1159c6f39e05be626e11d
Date: Sun, 06 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728182153

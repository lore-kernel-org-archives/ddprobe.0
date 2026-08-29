Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CC6357D0E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787998234; cv=none; b=UubB5deimQyrAX/U07l9fGa2EV7VjokL1E4jyMlqtoXsRr/+YUtciucCPbRmfQa7xLlwx7F0UgbSrgO1V2JU/BsK9s9SobhEs7qUClNZHZOgk8hi2Lk3+Uip2GF/Zs5yanNKf7lsp4iufKJJvgllGx9axOpMBbraGoPskfP2HKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787998234; c=relaxed/simple;
	bh=uDar0QzuzTnWihrdvIPADoaeCMI2K7fPoYW52BxihWI=;
	h=To:Subject:From:Message-Id:Date; b=rdnHRTCcNbbR3N4XDzYVOCunzGwdR/FHJmtp+0vb8Bv8TyyYvzXIkknnSj3WJRwTkjudjJP1u1vIx5xjnJMd5CQAJ+7oR0lsZhF0aq/R8kEGkBexlOLAssge4TtXOljPVQ1P3g0+f95VaVgl/b9E7Mc7jhmGAKuJ9RyqdcZwMPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQgBH0zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQgBH0zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFFAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787998233;
	bh=uDar0QzuzTnWihrdvIPADoaeCMI2K7fPoYW52BxihWI=;
	h=To:Subject:From:Date:From;
	b=PQgBH0zuiBnKPCjYuT6nBEIJ7PeWUzQT7stCjOZHlympzRpxGySqzHsjOqxtDIGIu
	 q0A4BXS/CoiQyINBHb3cLad5RyIzRmb05EVMo0awzJhTNVz9Wgmap4BbUtqN81ALCV
	 m97jjLMPP1/v8I82K6bP7lgQzk+PrJQYxV1Tf5CTg3iNZ+6eFDcXkM4FcX5rdA/UUE
	 iPzdLuNJCzYazy9k2ysi2KtuV1mnR44XRJwV3/wp7wa8FiANLMLQw6lExwW/Pvq8g9
	 GMHdA6JbGk/JNUGpx6HHgCR3FbD1hyH68QRWRYgQHVr0DPKkqopkSq8KarHERhcngy
	 1zVqKQGGKo5nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65DBC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799823371.9300.3638883252674084589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027a2ad2ff612ef69f9882961ac46fcd15aaa11a2475beec11ea27ad2513d9f1
Date: Sat, 29 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787998233

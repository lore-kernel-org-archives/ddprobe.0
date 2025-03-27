Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511501C701E
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743058795; cv=none; b=rtKz99l3Uie3lKDYHmyEkACJEoL9EHkKjE46+z+EXYS2w3dq5q8LdrJg9gK6XUn3OTAOS36qHt7ftXJP+huLtPafkJ16G7FVxvOC6E1XNOXLsKCo2ltVs9IgnPCSgruXagaSMaxGNJd9aM3R8Dq/TwpbSSqExOjuyQNL7McOh3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743058795; c=relaxed/simple;
	bh=P1ZnifFyPidkbrrou5eMe4lXoe0p/Dy9aB2bDLPpNeg=;
	h=To:Subject:From:Message-Id:Date; b=JUHAi2KTQQlbbH7o3p33tQUAfegB16kNj1ZJPn2TLcNoC0BjESXUrPFoPqSpdaDXnuKEOit6rwTvUctMeonKtY3JCAi6v7lBD+XizIIhc/8qVbkzsToPCNwK6n3Ox4ToRmeyqRxu+/ZgtohCRqrLftANCZSmubmywT0awzpC19o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtYT3JU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtYT3JU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA97C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743058793;
	bh=P1ZnifFyPidkbrrou5eMe4lXoe0p/Dy9aB2bDLPpNeg=;
	h=To:Subject:From:Date:From;
	b=jtYT3JU6T0o5kyui3AO34thGA2hfE1R+dkWGHnL11G4yL6gYFgFg2U5ASZEEc+Cys
	 SH9gkEqi0KhS43k0xLKDnd0d3xeiz47IDV3k+P/XSk4aapo1jQDgfrnvF4OCZebEHG
	 1LMGwiyNJ2ODo8FSOh0MPRsx5cZzhxM7OSpYxAufu3kRp34zZjyHMdpbvOyhLu6m92
	 7HmLABZgOMB6j9617eh1DI/FMnXfZfZZSmLnB7gsOvzg4ofqUB5yL9WnFz+u1Ctb8D
	 7pEU3nP1S+UWYcIkmvG69hEOMG3XIYU3HIrUtU/XuYfhH/ljMV0+ZR6zVtL1kIDn/V
	 l2limXchbvJ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6737C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305879366.17483.4551319300229717730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99623d4112e097c7607425ad3b0025d8f3e5c4ffe9d394da9b1afbed38a21c34
Date: Thu, 27 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743058793

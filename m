Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245182114
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735845954; cv=none; b=EIET8pT+HeO4GhW2UwTzq/00l10XMnf6zKGtbOTe4tpmC92qmuU2+ZN/XyPBuR/es4Ha1l1Jt8rmASTReeYYbiA8JVIfbx3qdaZydExzJ3xMbqgelarw0kPvAcLgj+IJU5l4XdZ21SEeXHHHK89y9g76ljiLWAmU6kvUM4PbkbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735845954; c=relaxed/simple;
	bh=1QXq6E744LS86DIx2k7wW10RVO4UfiWKpwrZ7jzCx6c=;
	h=To:Subject:From:Message-Id:Date; b=JqO81PqxcH0odrc5UP4FUfmBt1guxvvv+ocLwbRG3c+LeMBj+MgOAOZmt4XYxgoEB+zIIM4JaVqzX0J4Ih841CflJp7aN3fHnbB04nA7x6JC7BNUGxbQV8DZ+iidbWIM2/r0oFcHDJp/Y8Txp1KgSkbVTI54YWd7CFnOLC7A7WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzKd3aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzKd3aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7580C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735845953;
	bh=1QXq6E744LS86DIx2k7wW10RVO4UfiWKpwrZ7jzCx6c=;
	h=To:Subject:From:Date:From;
	b=aAzKd3aGOSdsqtpuHNHwrGkP4kb/E6HWJ+3NYwxmiJfDzJUEac5Y0U0tJUhO4Ojlp
	 uompYoGLBRaMp002jq+zVQYHfKoJGkrx24GAPaiT4sJoYTAPqAp2dsNsppLHIzzJOE
	 EPsPzEoK8UcU9LsTZD0BMXdCPO2MMP2KM/6R7jnNC2F8ShZT1L7uS6qav8tSZfk70v
	 pgRkra9DxyatZEBeXTROKNfHFlOIo5a/OIjhqgBefhjtlm9q7+n70DePt5O8VxIdZO
	 fIYXFh33hV0zFg7kdXFv1u4qiCWIp0CZVJfRC0wsSxZyR8K9BoZHK8aGsJZMVU7Q+6
	 7QbncGhBdFloA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641DE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584595360.11684.14745923712025158870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a495d8a822ba34b03afdde72d9d9be59e23c8037fbc5e67740d26240ae34aa7d
Date: Thu, 02 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735845953

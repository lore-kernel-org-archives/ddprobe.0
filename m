Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F52D5C83
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777752454; cv=none; b=mC5XQFIht42CBl8IyYy8CVkGW0CDV+StpZJ/rZFjeDcXJkVw+HAR0wNdBav+V4+uNZbFqZKLC9ig+Nbc3xnfxK6LYyN4bNXh1w/90xNc96CZ4/00eHpCAWc/ByEbv2Mio5n30sqAOJ5vsl3bfrNw160gkbI5o+MqRdj6GMPpJ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777752454; c=relaxed/simple;
	bh=eOFw0uYWfowRRBQSou93mqwqJnLOscLkY+Ul2APNSJc=;
	h=To:Subject:From:Message-Id:Date; b=ArrYwn8thVVeTotbYbC49jdjoGfxi+abxwmQflCPJ/zVANkvTK5Ww/aMSxKfiu/cs2imoJsU11G8VwoyBx7p3pYbxP4ULutpvdbUWKRrLEj7Vr9qpj0shrt62NxdfVjMgGD9c3bPBYNTNnNibQ8RkUtzNh1fidWODMsZpD1vXXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ganU5zoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ganU5zoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3713C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777752453;
	bh=eOFw0uYWfowRRBQSou93mqwqJnLOscLkY+Ul2APNSJc=;
	h=To:Subject:From:Date:From;
	b=ganU5zoR5MLQdOC/byqzflpCAre/lE/XWzHc+QHZ1AGEKxOeODg6c4k8B+NNwnlE3
	 cUONFkCJA9xkBy2BISEf8tbNXPiA3qGR9Cd4aveUTH5EPriwPxqRHqBXLFMjqq2+gR
	 rEKQYOPVcwgOreRaiQAXXvx1tHnh73qPq5l1uMndee7xVjFx0jbhB3aIGkxR/3qnXB
	 hU1lGXm3bVAgaa91UQjNiwVkaMivfbgNmg2n4SY7ETb22KJ+QCY/stF+tIkYMGH244
	 hoy6r3dhLwx57J64MbXaMoe7HZ2eoCSzzNpc9ks8QjcivzZak5g/+iH7rLYXtAlDEN
	 fUeu+l5MT7gvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51DCD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775245368.8973.6919226775261282852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d402b15dcb868179930842295b25e974c0f973d1c450a3c3ea40aff07574f34
Date: Sat, 02 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777752453

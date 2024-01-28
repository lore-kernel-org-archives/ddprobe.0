Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C17E1EB27
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706439497; cv=none; b=ZxFkzb3R8//9KG5zXMplJ+brxQYUdDbpMZ1UkC6lMSJTeN7ac+UsrzQXLS/eCqAE9MhIdShX6pnRLIlPGxw0164ubbaJVyd3d6d0tAdQqnusAwuXeYmJgPQ9sIBpwfGJFhbMdNC3TehMmRKHNsd7dlQoBFliDJBSHz0w54OP3LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706439497; c=relaxed/simple;
	bh=mYxQkPPVVgQdRtEJ8HD2AQN/wPJlxJn2r6yWfpvQJMI=;
	h=To:Subject:From:Message-Id:Date; b=sJMkfjiRJ8sMyLeg73aODikL9NTPHZZsFV57UjeK6oUgifQtUcC39czgXyY/9eHxWjbsB5MvHbh5nvO4CtV52R4kBYlE9ZVO/ggByNibCIM6PO+6SfwEcr7vkMdDasaTbzy2mc9lI6iSTHg9a8og52G0eof/l8Ah6GzvPCBZZqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+zZ4Gs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+zZ4Gs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA59C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706439496;
	bh=mYxQkPPVVgQdRtEJ8HD2AQN/wPJlxJn2r6yWfpvQJMI=;
	h=To:Subject:From:Date:From;
	b=Y+zZ4Gs3ySZHmvIOt0zIkiOz4GAFc9fDhvxFHA6x+NoUz8ja/VtwTOcbOlw4mwlaz
	 aLmK++YIY5BJiVbGbTofbKcJqIJtqpq0ftpEZ+LTsG1kW1Cv80Tzg/AbZy1i/KwM0p
	 o0UGlTiHUv9LCesKp75WsxBv3JGwLtLS4VSuIWmh/XD6iSnqBSJpWxkhFnbZlxUPof
	 0sBIIwSOg8H5U8Mm+FHwyaK6KjAVu123D45ymOXTXGXfDG3n5RK1TkFClxPICw80NO
	 Xu99HrtI/17NkUtNRmawVAZHadHZyqbwpIJQJBhWV96vX+olL5g5ajlhbrI13Mna8p
	 FdoOvCmQS9NcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614D7C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643949636.19059.13643101884410995773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66a6a54b678e785612a812c9d4842902ff75c2f39fb3c8b343ef1c19b655c82
Date: Sun, 28 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706439496

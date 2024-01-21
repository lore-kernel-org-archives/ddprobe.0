Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD3BDF51
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705870697; cv=none; b=WtH8+CE6V0VIJMwxq6efJnj6ySV3cy1ZmMd9Gax6MfaWe6wKhFikUHaSfVHLrxwEE8noxuhR5F8MaiODB2iRZ8Ke4VpTuPZ9RXiuycmnFlhgNEwIacdeDsFU3lyyOT8WfQLixBsqaPvOSFw679Z9QwjGdiER0YxENPRpqeP4CHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705870697; c=relaxed/simple;
	bh=IcLNZPE00H5rfZ7Zll+wF2v961xKLO/NanQwr9S4OWk=;
	h=To:Subject:From:Message-Id:Date; b=le6K1oAfEFsJPEBfMccuhAa+6coUpoxbn8+8AaAS76dNxDBcRmgPmrNBKVXzwFkbS5+2O7w7EccrjZMcO9aZuLZqrS1oCLNFQpgnWBOKJQsOCZZmyNlPGEDbrUb9JhmiknaA9AQvVDuDq+xYzannXpM7vhuUa35tv4wIpLawREY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgYnVvqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgYnVvqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FDCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705870696;
	bh=IcLNZPE00H5rfZ7Zll+wF2v961xKLO/NanQwr9S4OWk=;
	h=To:Subject:From:Date:From;
	b=IgYnVvqxYQvNsHGc/D0++vKOlOUILIQZRfz4aRkfH8KNURIEQ+cLtYVWZ+viDLlHV
	 8NJ83Xqqr30EFcBAhBZUTzR05ubVwut/kAG6fw6h3lhPniCNMFvhxzUnn+qa6ZTR2z
	 DtJ+gPBGUJmcxWEv30slNLYLfIFw4drzJBElAHFB9v+sD5jZNPhS6Blh5B6ji0gV1C
	 H6RS6X7Se7FuAxTJHtQgC6SX5O6m3GFnm81wpIzYM2mkO7zlRAXwhxajyyxu3lVdKl
	 yy9O6FxrG80gCyF+my0ShpztDu8ullJeyVFUkDM11REXmWs+at3MWSC3IFwgQgm5Ap
	 MuAuoAlomwFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC6FC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587069637.9276.10459196705920259887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b9daf09344acde6705f9513b02332a0c0368c8f909b46df155e3bc566a4fc4
Date: Sun, 21 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705870696

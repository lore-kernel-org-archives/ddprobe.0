Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015C4279DC2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771144494; cv=none; b=slBA8oZ+FIM8Tm+ssINjDbQwz+ZvJd6ekqFFGvZqvTVsukCHS3T6jYym1QbwgLHV2tMEJQGsCmjbhb5xq4I1O7d3qXE/VUeh/dAAjG1l0OfHLqwxVOzFKWASwHZqS0AzvrTcxe1LQHg36fgVad1z1SsQ/pEGXpq/kCj2/E05Sqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771144494; c=relaxed/simple;
	bh=lL9D1NV0ZZcp8CIFX+Fr7U/zJHZgbb7ULKsRjWVRDZs=;
	h=To:Subject:From:Message-Id:Date; b=X12STTHPQky3zYPBwDbw8CXBaZGA0ZIisTufyjXf6fNRBtR7cJKtVnbTHBHyqO3YyDNy0PlfZR/qFpgA8rgAstwLH9nA+gkpL0jUdaUml9mVtZM7UjuXtb2bFnD8NcOj62aeY0sKdWKHIDNaPN/++i7q64aIB+kxQpH3SSdgNeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht/gCWRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht/gCWRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0902C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771144493;
	bh=lL9D1NV0ZZcp8CIFX+Fr7U/zJHZgbb7ULKsRjWVRDZs=;
	h=To:Subject:From:Date:From;
	b=ht/gCWRZbFoSyGlJ+4NNy2qRRN5l7Dv9b819luO7eKe1buWRpIFRObmZxZsiaMcIS
	 B+yxC8BRkj5cJsv9J51kaRm0VOhXtfDSLLWL5Ke/XMqYkptrCEHrYs5Yyedm9/OuwV
	 Ac4u/mm8p6ZlENa5jNZB8ujx1JVI9WngeZWOi6oy3T6cDzbAc3ORu/5ywT1pbbZEFp
	 kkpok43gAjbglB7GDToKtHxkbbmqMIFcIDIsPWj3INZzvKy3N3evE8l476ltx27utA
	 +uV+65Efgr7M6K2R31AHgtlGf/FLkdsatlLrKt9UI7CNBSh+ttso7zr20nCagYQ8Zh
	 T9My/lNMCDWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BACEF585E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114449364.12603.10252017669981007706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deb7711b0a84ebe4a5d4066bbb796876ebfb1fc8c89171597144f007e5d06ef
Date: Sun, 15 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771144493

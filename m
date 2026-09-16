Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7DC413796
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789586434; cv=none; b=gCwtMXXDOTXq1TrR11yF3WQJs6ayA1FdlVIZXwCoQKyfroi+p9N59jlDB3iN5FkO1ADK6Qegc/ramrNSq6ls2puCxWF7pKMrNC5qoa6Wev0C4o1pgfXDLWZbuWkX+/crTmsHExGtiX3yq6YHpwK5ghuUfvGVnflU0Hzn0WsxnOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789586434; c=relaxed/simple;
	bh=NS092/gH9umOYiCBEpqQaEUR6wAa085dApSF6zqhbNc=;
	h=To:Subject:From:Message-Id:Date; b=KM6VRFP56wy1LE5+BEZW0VoRLApMZY8DMg1790N71HUU8yYhU9s2+s9QARFkk0nmkMKroDCxse0S4v3VSx7ZTgzowK/KZE2fy+y0r9D3nTcGNVSk/gVwKNXciwR3j5WeUdHEtQz3lDUOdVlLPF41rYRyt7y/jy1WdrAONU8hMWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTzp0LhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTzp0LhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7404C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789586433;
	bh=NS092/gH9umOYiCBEpqQaEUR6wAa085dApSF6zqhbNc=;
	h=To:Subject:From:Date:From;
	b=DTzp0LhKY317E7W9mpJXlpGG4rlKPImz3QwBaUNboS7MGeQSmgWSHzmANlqT7rhg8
	 LRxy72vnFNb7DTqycUaZAqquZXQbJ91OyIThKh5L93T8CIyCcHQ0i87R9cZOVdWFr1
	 Xdk+fCJjsDCjCIIp0O3yjkOetdmGRPJtlcduiucGEyj76fV4KZHrCm/DHC/1Hyrp/y
	 sEortx8ewR5X8QIdE7oiaxVCFrs422XrrAD6VdIjwpao8iRmwFDl/nLRuzVIKX6Fv6
	 Q0BUZOH8fMHRHKPt3zc3wxobOVVxTcSoZUmxfT1ekckhRdEM3eH0v4ho1xtXXmJT9X
	 TNG5hBXNnOAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2477C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958643370.20028.8562933573372436904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b214dec8e1df1fdb92da8c5328c796f00c4a435ca1161fea067680a81350071b
Date: Wed, 16 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789586433

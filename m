Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424002579
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720142123; cv=none; b=UBm0pYym+Obng1aWoJSNEbIpyVh9ZAsBXvb02jriF0CpW2EBGAF5yxPQSKehhbiTa7r9LQvC/qNJ5kY8bSA1P9+FrXUKrfspNcGIgGnKMQM1oyL4Q3gQzW3tIHpP4Xh/7JjO/ht6DMyidMXwCg88rfvoSQXgbWufedg+swyMXY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720142123; c=relaxed/simple;
	bh=fQHtmfqwdRChX3xkRxeZyEMWBcjmKRW6I1JvnGrKR6s=;
	h=To:Subject:From:Message-Id:Date; b=O25NiwFto2gbiAnf5bOFDTtGz80Bn0nqp/2ZZzn5k2JHF9Ry7QPOo//qmmHzPGjb3nh98q2sisOlDsERfHLE9Sva/1hmCwqYQBRIGMLaK9tcazTJ0Ip6CxqY3uiLSM50528KZfDJFNtBSlM1Y58uPeS7DYU1JUAVTZzBOKVlaxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXlIK0wC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXlIK0wC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F6C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720142122;
	bh=fQHtmfqwdRChX3xkRxeZyEMWBcjmKRW6I1JvnGrKR6s=;
	h=To:Subject:From:Date:From;
	b=QXlIK0wCMuFNIwjNGifoTkK2hjIFdeUx5f+ZRzrauL6pLScBKnrkDxwXjauEEDD61
	 fDiBN3C4X7AIrZJuG/Rbw7z9Y+JsdA/ZlaAct6zoMy+WFhai6I12G9VrYkmXVNm6Ci
	 rLNOWBatMmMXKbhX0jiyV9kE4vVarMZdeOE5l5MVkQSY66ncUXqCjWzBFUEhckEBn9
	 AtblXPPPwb3L/WU+mZMve+ihd6x3eOcO21fgXGylgpTozeOoXbemMdY9GBjDCUPHNF
	 cNKQjwj5y50CiLzXHoVFK1AksLdrTf4owKhyEhigZXViONJ3NkAmH7TZe2QL1s6ex5
	 v2te8gU4LU7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42A9C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014212277.1969.1279284050452959820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6edd4ad4799a3e857c087f9d1c3cef47dac48d46546c50b894ad1a9f1774fe
Date: Fri, 05 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720142122

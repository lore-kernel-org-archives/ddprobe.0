Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36811D52A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705430897; cv=none; b=lqU/KGEu+3Fib0Smz6OibIGmxOGm20fkRGzXrhuUJNIQQgfgFZd4OnUBBYomf+4tRxGqtYwDhstQ5v0SsB03kUnkCHqBVPykyew86rSU4R6b5bgJ6wDAEDPeaoiUxK/gkKvbwtZRBoj12+jp6W95yThqKwmQaHYVMxsghZ0dMl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705430897; c=relaxed/simple;
	bh=Gia+41igmNGgOQy1d2b4Tu6TIn33wXuopZ6+oEwNaRo=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=mg87XLg4HhMvJyyEYRwr54AFeAYbL5zKr8bcV5s2vdkX4HkTov8oF4chZ+uXgDc66G0PvM8fpkYPZUX/mmHxIqMMq2EX8SYM1pB3RNoqvd5J69ZoOwwJVHiKa1hyXaTC5aAj7g7AUUVrU/OQjSp0qm7H2JXskNfg/AmoI92+o14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oex/lDDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oex/lDDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E59EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705430896;
	bh=Gia+41igmNGgOQy1d2b4Tu6TIn33wXuopZ6+oEwNaRo=;
	h=To:Subject:From:Date:From;
	b=oex/lDDzVtDUUHs3BBx4CJPKJjAiWaEl8aeGRpFWbeOjxBbEX+rrARlZFaw/48/or
	 IxMGtjiZsuXo0OYQb3HOEJb/pwnoh0QS1YfrflpX0lq5N6NoKtKQoSa7MUF/5dA3Ps
	 MwebwoZ8XEj66de2ZQT1z51DNV1A7PaBIWyVe5RqxKdDQKTtIyhwhbmNHmRL9R+Erd
	 HmWlJ8kSetX0jb+ztwO8oMewVvgPt8rDmEp8c3i5H5hvtlNQMqym3JgkGmwPusXb5e
	 8rcNn4wwnhltDHg3QlyUmYD/JJ9RoscelMz7yeV/yaGJjYYuxNvILO42yRT+DGemR6
	 7/QNdzqHq6p9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D91C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543089639.6337.17827543761407637318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c59bc9adb55c5e3ed791fb4225c3840ccc35277161bb6ea1b30a284a704d76
Date: Tue, 16 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705430896

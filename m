Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4236C7E9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748052594; cv=none; b=KFCRx0Wi4WAsCvOiBzg7O9fZemKbnR7MIZxtVsuFcsHGovsa1PxsA9dg+0C8KWlT2b+ZgaL4YRvutjciy5AVfJ8QfBBV9eJd+YJOlNH4U5CfIPHM+Hs/ahS2+YA9Q6FUl5a9gAdpSPYga7NnxA5nLRk1LN8jq19sVjY30TAvbC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748052594; c=relaxed/simple;
	bh=/jGuTmqJP7aHG/AQgSiUZ5MO8bIigVNjs6sPM8pXc5A=;
	h=To:Subject:From:Message-Id:Date; b=XvOlVMd0ci3Ox2S/NEiI9sspTo0QNZtAgwwE4hccD8O1zp6dU91uAZXg+rWJ5SvH0mOyaMGQN0mJFqZ4feV6+X7gKJzlp0tSXBOUNdQIJM8OpZ6t/4CTTDalwopB96BMHzKVZuY/vyIoqTNro8G6gDbuaYG9btI42+0QPknCfsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7dwQgEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7dwQgEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7836C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748052593;
	bh=/jGuTmqJP7aHG/AQgSiUZ5MO8bIigVNjs6sPM8pXc5A=;
	h=To:Subject:From:Date:From;
	b=V7dwQgEef0wb40+O+48LkL4I+FukPENMZS5DtxvZCKyuTt6UOPmc07tSI0WZzaKQ6
	 T4hpR6K4B/zNQZ9nEddStMf9PVoxWQE14uHoVCWqkNA8bRNZX4aP9eMrZqDnEeTvev
	 xdaFZrOt7EXOdsOMMLJqOssfgKU2fE4ZbgTj0qrgGwekUIrQA1YRovmmt6qc/0v4G+
	 7YVdNKDtunX9fJxuUfUdn7XxRSUwu3QxbiTrx+V/0HSm+Ntza3Ho95yVW2DnN640Ii
	 2pb8EjSqTqtqkWArUSskze06N2DSTyhIAjdoFyKQttJSF3g3+8dGSKc9gMrpuucxhy
	 KgoLOAfq/ULYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBDC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805259358.23603.11940177449634019959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f94a9f215fe8681cfb5f3c1cf3061cbbaacf45091617497346dabae7865b32
Date: Sat, 24 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748052593

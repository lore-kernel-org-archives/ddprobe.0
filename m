Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5712828CF5D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782680314; cv=none; b=c6Aa7m2yGhMnrKEG6H9Cq4FaNbDT1LZacg0UzahCMFabmJsg5GHm/e/E3IPYgY0ZuDEcxfwbKUaY3wnM9wFVFqqw2/SfCh8Qc0mMbKrmXsSE1iwaRUWIcF+0wFJ4r3U4miSQTahUPzs8XltyfJQ28c6upaUuSKCB030t2W1DbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782680314; c=relaxed/simple;
	bh=TXjsufL23qpREWhPlbYl/YllFxJVNN4i1+ZPQpX3wpc=;
	h=To:Subject:From:Message-Id:Date; b=UOKctGEgwnunTtlbezWmIbB04CsUpp/gjjyIdU/Fp58WiQTBH321jJNqcwnGXgPR5OA05kEAylhjuklN+03avjKHjWg8+bE9cgrlXSO2YE52Opb2LNp1jSquS1xAwTsP6ijs4wlqock8ae3qoKTkD1Z0ufnU2lmoBC8e2kANdb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBcGvDUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBcGvDUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF34C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782680313;
	bh=TXjsufL23qpREWhPlbYl/YllFxJVNN4i1+ZPQpX3wpc=;
	h=To:Subject:From:Date:From;
	b=GBcGvDUUqyNiy/Cg1TUhYcUld7FAdzPE4S1HomkTwEpRpMQfJGTEFuXH7YEjzz3AI
	 xUpu5DwyE0wTxliv0C4DNWOyxqn63NO1c4zkCAZjdd6GkE7tcYHemmPn9XRlN/+Y6f
	 Vt1MJZEsRyeimQ7oDTmj02HQGU+9cMtpetWHaYjiGfTmWe9sXNe3mWaC7kubP9mYIF
	 ZuDa8OJyBgbmqwRBLadhiZGn9JfkpIAzhsG1qFgv0roWBrk5XQs5CZ3MGq3FkAI1ZO
	 KDkuLU/0m6BTvm72pICu7KlawweqITep2HqoFJHdcAbaPt5mlg4w/vuctgLivo6En7
	 z4gdqOPeeXBGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2593C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268031371.3279.13502083725517092556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3aa8855e9b773d93ecb7dbd6a3c947363f70c359b0f61f7f659c70ce721f3d
Date: Sun, 28 Jun 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782680313

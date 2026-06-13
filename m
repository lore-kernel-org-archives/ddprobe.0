Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE7344D88
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781334994; cv=none; b=EHTH2y7dy3CSSA8eihMKRaDfD3n7lB6X7+SFiml6ml4SaBZ0r010XQsWgwsrQVZ+7Pq+wSKFy7r+MpMRpFVdryfGYw2aN4Z2BLvjAzo1R7gPa6dmBBwM4HQUcehI26oC6Hepy4nWqGGPTc1D3cjKOnBgdlh3+FefD5TDw8NGDR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781334994; c=relaxed/simple;
	bh=sxU5PSHLH2QkCzFuAOXmRWnqunzZdc8nrestqcAkhUM=;
	h=To:Subject:From:Message-Id:Date; b=mN+a76NYue4kUUmrCIHfQeFUl0DpTM49EKRTS3O5DtwMXNxAHuPEHZp8EZNTblrHvXed3xwQcIG716as3YJx4XsLJtOjW7KH8Ypk0szQ51IYG2NaqJosjHyEl8+N0zDhPGeZcV3/exhrnV3IIdEfmtNXT1BEQdy8sMtpA8HEJFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3NOJ14u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3NOJ14u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B1FC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781334993;
	bh=sxU5PSHLH2QkCzFuAOXmRWnqunzZdc8nrestqcAkhUM=;
	h=To:Subject:From:Date:From;
	b=E3NOJ14uyyhZQH5kCL/f/xnRA8uium2voTTGs5ructc1IqNKXAuHwMPrRQkFgiMbs
	 r8L6OfdyxgUcjsN4MXaKJgHWH9r+WrTSULSAMrWt0bFIBhPcw86L2TQFTX71qou7O9
	 4WBI7wyAXvoHk3MuvublzElze2B/b2gFxiAO8bMW0BOCeuPmonqaTL1ishK+E17ml3
	 GjrCZNyt18rM4+DNfSmbKt5T9cP2oFL9QvnC5MNavauSHqR3XCmv4qIsD+xeIEzxBz
	 3T9FUjVKVjOizRBsCo4aINFdt2OFvprJkk3nl+8hpINVkPB5dZrvDisqSYoPna0h+s
	 A8aqrDLsSFZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E5BCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133499367.20136.11614653591510066131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058bddeef8052fa454f3bb9e6178b7306ab36e28c7b4a89512cda3813fa0ff57
Date: Sat, 13 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781334993

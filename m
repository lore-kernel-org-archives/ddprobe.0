Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA0F28F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739002554; cv=none; b=V8cfgmfwtD+StaKgmaK+N8U8WwwPVVNeWQk0F8eRlyEkAaYT9OepdvPQUNFK0Voh0PL90dp7UgE0xpjtZCoX3vJqU5Fzlp1s7QVfoK/DrE+cW4tmSAmQrLVe+pzaJbhv81ZK0oidAzha0EE2XmIZOKRti1GCWcbqdENFOZfzlOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739002554; c=relaxed/simple;
	bh=h2SzaBMJFOCCT5MGsdziFzlGtUArJaZHSHrnCQ0Z8VU=;
	h=To:Subject:From:Message-Id:Date; b=iHX0oFP8kuyyjhm3YkxQyfEfcG4p1rnDz0G/uwJ9UKGjCmCUlEotaTnfODC2ghabHLdmmOn/3N0A7BTm1n+N2euuZAunkcNp6HEgOZhg+cQIcUas1/nQeNqTQPWIXWQdvipecJ2u/rq9yW+VYk/G98PeCSopf29NfdzPzm4cRi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBst8kK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBst8kK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF699C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739002553;
	bh=h2SzaBMJFOCCT5MGsdziFzlGtUArJaZHSHrnCQ0Z8VU=;
	h=To:Subject:From:Date:From;
	b=VBst8kK+5zrVsNVT5LZ0RhdLT/v7MBxSUYItkC76sgPkYac009UUuxzODqXbq+ixG
	 BRrvBxDHgFsMG3ftYBfYXLIgmgHydMUnGibkt0EubXcvvigC68uSk9YzjEFH0JrYkM
	 mWI7xV6hPWgqoinNXT4GrbjrMruyZbOfOQBMjC1ik//H7NdaGZ+X2DKRccWWMllkBr
	 IBro0b5r27oAuQWrAyX8jjysgQPCTcPYoxXC/SAHxoAywAlcRFo9AMHHLC5OHpODp5
	 prdVcBT4a+eg99u6+gKXXA8xgpnMlosMijMdrAX6jeDudidpSdVFvkCbeZ9Ctg2ixc
	 xnjLvax0P89hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E33C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900255368.29819.3378827825820838028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5898183f719f437facb5159e24dca7a4e8addd2c45e016be1d43f52a28b30e28
Date: Sat, 08 Feb 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739002553

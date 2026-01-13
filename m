Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33F12D73AD
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768317233; cv=none; b=uPXKs7ZSnt5wLQjd7Di6dBo4rLHHbCQbTnRk5iAcN66OTTkEwGa48/npPXTThRTBCssIxDXu6TTkQUOTtoz0azt/9/ZiiKxeo11IqwlrLvkPSYCPjfzH1vyC1mi4ZAHXwe5oXktLn6fJltxOQ/rrmcQ9Wk46tLotWuw5mhUM3nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768317233; c=relaxed/simple;
	bh=vvNl/Fzvtxq6erlNBAySFgMMxvuoG3VnhmNXJ1c4Mn4=;
	h=To:Subject:From:Message-Id:Date; b=jsy0b8Kftmhq+VEUWqPXyld4gdzHGe/pxhA//Uhokqwc5wD4SmWfWUAVtz0MFUVEsKYBIRxMcbojyaz7N20SkOVqoDIAP7hxf2pJkybqNO3tUfQgwXgiAwwfwdWrTtUFzuCCprSaxB27LNh3LFf8U3oQZAvUIhn/ZZGa5iSkJUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BntgTqv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BntgTqv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FCC19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768317233;
	bh=vvNl/Fzvtxq6erlNBAySFgMMxvuoG3VnhmNXJ1c4Mn4=;
	h=To:Subject:From:Date:From;
	b=BntgTqv20mTART49al1eir+avxA74Lnci7GFOMoIYKLhvw+Gh0HjkClkVI+pzNwze
	 Fi3F8ielKDBO/bQ7g313pomePfTZ1xXeMbsG1qAIFv0YQA2W7+n4IA2hV9cYNxfRbd
	 iZUFF89ri/Heu5R+JmGE09qsh6Ch5UyuTVvkwG/ZI4yDhre8hM6f9L3DG4e5Ddhi7C
	 3Nmf8NYEZaZ+Mu/D06jJymBXCj+a7PYozJJ4pUTsHGYn/O53Cbda0oJ16B2ZaXsHkT
	 8xkqV+n3TWrY4ShwvCGaF2YfAwwXipJ9r32+9EQMGIszmXoxEizzw0K+9MfsqI81Du
	 Xbz2X9n7iS/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89CD2F326
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831723357.29573.15684066448757936212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c220a3054408591dbbf658ce7da00009597c4e4e50bc3cc4d07d62bcd3b8fc5f
Date: Tue, 13 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768317233

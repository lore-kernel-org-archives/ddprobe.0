Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2D14A09C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756991994; cv=none; b=LxOCzzNJZs5HokNCAnyCy5nfFpF3GWikW5cyTIj8rvGRBltCBtl9j67o62xFPcTzW0bq6XNfSFg1OazXmGBD6qt9quyHA+aCxaUQCbRU4cYT3RlWZ64KnkUT88wF6ufsy18oTU0aK0lCajlWr+aGq0qxv8IplTtpKlYXGmqr4No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756991994; c=relaxed/simple;
	bh=vcJEGprZQlE5K/v8LPUIzSGqX6PUJo8hW1K2ZSCtEHk=;
	h=To:Subject:From:Message-Id:Date; b=f9348tFexO+PYuAZDVmcQWCC8bfnAwLZIydXY22a6W4Jt9Z2kURgTZg5jqipkFgsxFqpffFt/Y9cS+LLuZNzybtMXybvVCaigToOWYh46BVYeJnPhsIVI+s+FHju8U/DKb5GsayzO1FKrCFpqcfAPkFwle5hkEeJaJPStFTWNNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIr7naU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIr7naU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B83C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756991993;
	bh=vcJEGprZQlE5K/v8LPUIzSGqX6PUJo8hW1K2ZSCtEHk=;
	h=To:Subject:From:Date:From;
	b=GIr7naU2xx31ZUDhIYC7yCUewSAv6IxIuep7z5cD3fOUEPlWrsqBK42AbDREsj7Xn
	 Nu63cVisMHpMjCAaqfOq+QgyM+bcpeAEnN9oGDAljcY+CNMEN/BnXuL22a9k+G+2RY
	 I48UOheycg7HJ3ULdlim0TF4Kl7VCBVU+PuIsaInUhMsF/53+bOTVEWaeypQ6yZs5m
	 gKG3M4rllZaWmvD5mIrxFGHodNg1yVyQwpQuVpJZxCWx7zejT+Ap3y+Zrcb3hML3VN
	 yXTyd02YDiIv4Q0W5OjAXMlsu4OXg3rb1P94EaMU60IqqPmUGc5zsamiTDdtjrmD1z
	 8SCSyX2DoLOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAFCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699199358.10789.10413475464193519018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca7373893b9e813cde2211ef6ff87f13179660e094443296492c08af3e6df69
Date: Thu, 04 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756991993

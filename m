Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2D1E9904
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744298995; cv=none; b=oiLh+wJJvnRmV5u5eUFfnd7N5oUxE+zqcq1UtAtPGHIaAnQlbso5S8z+OwE/Dem34P5OrHFoQ6Fv9q6HioXm6PrXpkI7ZIpgui9Nmw0lZn549qIR4tAen1F2qDkqf40Z14kRdRvp4vefSHbSarmhpUPoJHuFaOch2Vyw7TR+nW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744298995; c=relaxed/simple;
	bh=m7DQMeooeF916OybUqLjWXki/bWqBrlVke7/R3cVNI0=;
	h=To:Subject:From:Message-Id:Date; b=TLyPeJxF3fiU4M/aLumhs7tgRK1VQl5Qu2/3EEoln9QXYRAfJjwcAmxnJPsly59YRWnZ+JSEb/axSnKmoif1WDtBTW7Ky5n5oMolLbhqvzYW1w7Ve/f/Rbqd2/CWgesGPCCU2/vHT/DsJ2+nT1r9qIQyhoxaUuDl4isxTN4n2DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH7LAZE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH7LAZE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAA7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744298993;
	bh=m7DQMeooeF916OybUqLjWXki/bWqBrlVke7/R3cVNI0=;
	h=To:Subject:From:Date:From;
	b=LH7LAZE2iQvCA/wfu1ufcVgqMr0L9mkaEeT3b9d3cOYTX1YsxoW41vVk/8SnkX6yC
	 17JmcKmSl52D0vvzvJNXRaNjsQTn4N4+YpDIa0K7+3qacxvQNVdlpgO82aMJdbHX3p
	 3x18SNaNKwZhz7L9ocubqKYUUKfKDR405yz7TvGpeVus7Eayhhe1VbgQbW79lDIu08
	 qelpnnHfSE1o8rsGN7dRqgJNTb2yoD1hBwhm2VsdLzBP7m/72aTyZKRCm3C7p70NXU
	 LnB537daKTMnMYzbsCV7DXa7hgETa1puE8hWxopB7whpvg8uplQ31Qa9gbsNNvnGkV
	 xGe52NftIH6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F477C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429899364.4851.856012861983805943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667c5571fa1c77005a4aae72572d2bf3e19906c3f0c3656f4f69a2cfb6a40837
Date: Thu, 10 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744298993

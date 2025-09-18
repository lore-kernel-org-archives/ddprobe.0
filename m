Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1710617BB21
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758167994; cv=none; b=sFt791F6MR1f0jo+xvuKi03gMVB4krgNWQnZgHAUG6H5sOgku/Cmb1l/O/W5qTLvujm+38JXCl5N7VIo8Rvnzbj6V41nXULN5d8MhrV5M20rbueSGWrCPZWNPXXN0WBZR6KfIXpWMgcn4CSpUbfN9p1MdoPNDAbY7N2UsgfDduc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758167994; c=relaxed/simple;
	bh=sKEWwyLMXPGOCao+wWDobaUiKt59lvPjTLIJ6dzMe0c=;
	h=To:Subject:From:Message-Id:Date; b=u6CSNXIJfsHC1rxhStOyl+lM+FW8bQcCdzpnGoEPNsxLb1eGlhEv5uqSPzJcRWYw5FfDg05jH7mvrltF1Sm7bKVF5SrR26hsPvRmU2UNL+sQ89dL0u1devlIUzqGTpD5l3kt1H1QJbHFZRmvcLTw9MPfa4eenMWCqe1ni+Rr35Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvujhtvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvujhtvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB39DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758167993;
	bh=sKEWwyLMXPGOCao+wWDobaUiKt59lvPjTLIJ6dzMe0c=;
	h=To:Subject:From:Date:From;
	b=cvujhtvIDISlJFuK7BpSSsdcZQ2/LVKO9OedIw8wE4l0cH/zaPOl02A8KkB10TzZv
	 Cwuo2UcFkHWqgaKcG7knc6kO+0TxAuFOFMJsS2Gkjb/rbXV0oiubg70nBkrq4gJ7dK
	 FLusWvusEBO+dBWo6xBNAJFAP0uAyBARbu9uyNBCKQetBlhJyrz6XbJ9iggq+P4hb8
	 tASvBPVUSlNub3Jg3GvRACundQ25+X0LiaH90lWRrbR3MpTXLMnO3EHSqS3ucqKmEL
	 xvDH7g8P81Dk9tql4zPc4bdp0XOIxXouuGmusLWwpDfzpmetQvuABZGnV2vwFjqFDq
	 yGivOZWTKTp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BDCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816799358.29893.5877856971296864529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4027deca0790f8907f8aee1dda4993a3030684d8be10cfd6485a3a66ff7b02
Date: Thu, 18 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758167993

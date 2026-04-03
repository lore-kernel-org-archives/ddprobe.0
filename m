Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64283BED28
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775224534; cv=none; b=L/sawGpkzjpEpQmSXoPZf8XDI98ShQTtDv8wKYER338eYocSQ5P9H7bxE4fz18yfiZ878LojG5jKxvCDQN2UFrG0gQP1JTY0y+5KjhbKBKf33XLZzc2R+jB7vZAcNTBgxZDa1WnsAwWx0ZSJLOX12HLNKlhTvfbqxId9q+wqElQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775224534; c=relaxed/simple;
	bh=NGUqGRrmOC/x41DARGtmeTw92srHkKPiplbdF1s6S4M=;
	h=To:Subject:From:Message-Id:Date; b=jUcydHLZpvGMOzUiZb+T8asVr/pR8Zx7lPlLUFvmem5KOaFBWi0H+aj4p49oNl2OQKluJl8C97F2a287fe3uPJ8bTxX7WMSXmyvxmBVRXVrcdhT+Kx5KGNF9ZzGNcpoFTLvViP1JU+fhXAPSq39ujbKVePZ2Z32564I9aoKsOYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJwc8PpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJwc8PpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BB1C19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775224533;
	bh=NGUqGRrmOC/x41DARGtmeTw92srHkKPiplbdF1s6S4M=;
	h=To:Subject:From:Date:From;
	b=tJwc8PpG86CLBziqbckvPNWNQ6UNYW8SxMcDecSyCrYCsjttDrjUU+mx27/Z3iLJm
	 YMGU+oKitbCzXFfLENSjUWHBk3HcPX2ENzdlR7Qvp6SBNJDAoXMK6MlCgqxcEf+1yF
	 V5BKCyjy1iS9cmmw7HQzeXaHL7IRfWdB/H5lkT4Nt/kmoOYapWQcmv+x6IQWP0dFeL
	 VQWklRPRPnGbaOnhsviK8HDKsOl1ivnEX/SSKNY/1USeQq5SuR+OKUimovVKimsVw+
	 LD9ab2V9sk4wltglKCz1cEbQJXcwOn7TzyqWJOKXfxaBO9nVExBaxcYgjDWGcPLpA1
	 K+EPsVp5u9RIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7314E85367
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522453373.11812.14519318722391481604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3e58f5950f4775fa213a252eee024b3795158bb6a6dd381d106dc02e6f2fae
Date: Fri, 03 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775224533

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D95324B33
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785769834; cv=none; b=dbmGMWFyG4JOyJeRx9M5joGo2FGFxqjb3RFv3oGI5SLYLIfZXjbxz9LmAwElYKcGHdxZ1YY1nKrGwbgJqIQ9LsAUv+Zhktxpr0oI2jFlsq+PO0+37m/X5ptBKUqTxeCPsL4BNaO9pRG7Vyi43hbjsUHbSK4TRMcalEI6YGfpBIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785769834; c=relaxed/simple;
	bh=iMaIVfPc3euc5qhq3zJuKg+TSYiMSF/aBZnr0joE0Bg=;
	h=To:Subject:From:Message-Id:Date; b=gMbW0zPW6Rhz4KdPKTLa6NQFQ850Of6cgW5an5iiatbUcyEr7UEfo5Ue5KBwUvWgvbNu+1i+3BSZkYJfcSzMcfXcli/b6s5zQskBMb7n3LXqbJ8W+uLjAzKDGOFa6lVbupBXMLQwl/ARChzhCSbb6KLMRjK4sGmxzmtpobtujTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhEb+TC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhEb+TC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA91CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785769833;
	bh=iMaIVfPc3euc5qhq3zJuKg+TSYiMSF/aBZnr0joE0Bg=;
	h=To:Subject:From:Date:From;
	b=UhEb+TC8CZU+21cAfAu9Jqd4C68shzf7GYQC8sIsMVzEbuDTnyLnZP+59dureGuXf
	 saXy9Gd81Mng5jBqcKpLiooZ1rlR/yWJ8ZR+Hcy4C+20JvYR6d+RHxBvfetgUw9/+C
	 10ifdeYYWpHEqP4rykxmRBSgaSLeQpnTVF9ItpvkC5SoSZmELzvR7jSLNIcEWrDOIe
	 yV+xb3SiA3FgTXJ1AsLLE66LtZLDSLm8R7e3gT9OzyPo7sn3UVgHWgkxzOtXVVszWu
	 KVStWLINwndzU09DJ/h7t7tHOzQR1MvEddq1762hZxjgGqRU6s5x8o0IJfu8E/Ej8g
	 9S9shMPPKQQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B404AC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576983372.21941.12925084423407437557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24294ff31e943a5ffcc5481e2b84e0a39fff294b5463a27effdd894dbe80cf36
Date: Mon, 03 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785769833

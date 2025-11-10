Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B390218AB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762760994; cv=none; b=EIshCUUkvrIiQdilfgQVZFNZR3XvP7BumUbd9wu7XLfHsVGjK8+eHnXamu7NJBQT0KR0XnOwXVSVJypuk4EK+qPnplAJ8ny7fgFLaw5D2GdlFgHSC9+qhJjyvJKpQsTg93rJMblBs5AXR9EdLefmXG5hPkvbrN4+B5QjCP/ez24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762760994; c=relaxed/simple;
	bh=xgh3gbaRJ6Q/lJ3i2BXXrb4yKBjL3cfy0Cics+c5LkU=;
	h=To:Subject:From:Message-Id:Date; b=WDn+D0FVcfJ9tLvieVlZyyrlDIDqBh4UCgcaQtNoqqt9BPqsxEJhC++D0Jxz97diRR42uoGh60czAMp5RKKpdkmsWzoPImNwJQ9TALx1G17fOMsTFYJi3xedni1aJIDLinEmvxWMdDVs83VyGofaxd9pqfqNkRhMjvx+oM+7iQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5PeCMuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5PeCMuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECECC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762760993;
	bh=xgh3gbaRJ6Q/lJ3i2BXXrb4yKBjL3cfy0Cics+c5LkU=;
	h=To:Subject:From:Date:From;
	b=F5PeCMuMI774J9eu75SWNItgtVIeKd+2WXbr5phl2fHZTxXWyK76ceCtxDXIB/wyR
	 b1IJwMU1FHFZMM2B4GrDZz9pRR2w2GBH+mPtRA5He11Upml6B0/2ABtxwv3oFkG59x
	 vO9rx8F3RJ+h+D5HphvD4N79xPhnTdn7wMHPUaeTVut+fdLqzFDmfI1Ku2RTxtaMja
	 7GRg5qv2AkpYoh6h+ErNrPe7uGE8t4UddJs4cpalsGE+W4pM+x7Yt9MCIprzyf62yS
	 nZPXfTqG8HW0j+ZAtXos9EbKvs5e4Llaq1/Rf6ZolcKfEdrpnZSDiaigrpZsuk9Okh
	 9WPS5t/m7Djxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F1CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276099359.506.1851018635022866616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba5a191228f978a3ed9b993ffc6b4e505e58a551eedecd6a73fff676b153a97
Date: Mon, 10 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762760993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0ED30D415
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783749514; cv=none; b=Nc9S/52rf+mdMvR1U/nRmu4X+aS0/apt5yPvf73JXjmW9HtcobHTaxD3Aap+mSz2j4fkd/gwDLm2wHBFaabrTifh9oY7YeBrEyYOcMI6OxLo6JCEa3K1464XhyDAvC3vfozNTb77QuETfv+CBCuXQyoNaN+9Jxtn7Df9/I1QYlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783749514; c=relaxed/simple;
	bh=rLh/zwHWd1gNsiChUl/CElASiyP2T2diIutyHU840m4=;
	h=To:Subject:From:Message-Id:Date; b=OCjZH4/rrFAtYGVIV2U0/0+tmwzR5yOxl8MdG6/PqX8VLdchfH6XPpv4jdFDeu3ViIc/UzS1/NisLTGO48BDvxyvSl+rtcscMwa1e6k9Y4simA5iOpSl/Va9UcjZRGZY3b8zWDfnoTSMzItFgY3MOXH8JlMbx7qcD/MFgOijYMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omELGcK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omELGcK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5DFC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783749513;
	bh=rLh/zwHWd1gNsiChUl/CElASiyP2T2diIutyHU840m4=;
	h=To:Subject:From:Date:From;
	b=omELGcK5OeRMLijxsNzhV/C1b1tEpf9G9iHnY96256VHGAl4NcAlxxuaUWgS36E4Z
	 VkkEsuqQ/nqvwfw8kJrvD4sf0d7kczK6FDfVMQXe6j1Wzut4Oyt+hu3ZJosS4zIhhh
	 9pm5uN1SzJOBxfZ6RO2fxvKQ99P9QoAop+lH5adwiLCXfMqWXFl6387b09gUNfGsLK
	 K56sCNxhrxkgGDhU/m7DZj7MtkoHbhIYd5ikG4+TD5D5zxXSnyQuMc5ZDlEfV9P7f0
	 gSK5AYag6TK/mEs87hM7kAMInSVScuuyZ2zuzs3PRZckia68kUu/6ac1aWuGnsCt9X
	 oAuZaW0jMiogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374951368.4995.9473875391731514748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dad37cb8738ed4bc3006358c633694120068de8526db30d1865bc8add4f7b2
Date: Sat, 11 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783749513

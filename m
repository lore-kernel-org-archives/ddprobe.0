Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5508E16EB71
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719864323; cv=none; b=iumWHUVK3mdL6uIcPWPPQ5Hn006U4QxGVPWrJ75V/e1hk/bSmKOYrHlZfmbJ+2+zj3fpFo5jY0qs+5fwsRWtFvJ3R2rCYRd7/VmeFtg2bJwqoDYYwyITyy1qavpE/M0np108BEZWQvTHuChqs4qW18HGVq0aiwWEtuUqmq0Db18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719864323; c=relaxed/simple;
	bh=/CWEUm4N26aNytrIgxyzE/aYqTMhwGExJ2gKE7JLHQM=;
	h=To:Subject:From:Message-Id:Date; b=ATtSIrr0Xbr1eKSa0c3G1f22OoaM6jp8UCPnM/I4cX3YLnS/04FcckZ2rsveq8l3HpEfoKm9Njd160yph4qLTfjTjsJMq3z9KhAtR165nTkgiFrx4TwSq3a8fUJ2HMVFFvRZ8HppCERoCdMmwP03SjN1QIsKA5Z0EHtX2eYmdHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plXzIWWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plXzIWWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB127C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719864322;
	bh=/CWEUm4N26aNytrIgxyzE/aYqTMhwGExJ2gKE7JLHQM=;
	h=To:Subject:From:Date:From;
	b=plXzIWWg1/JijxB7NCXM1v0BCKCBIoYIQlchDq0xFc7Rbjo5CMyq1b091pL86nFzZ
	 bVPeVDCa35nljrx1iJzL4CoME+RSE2v7AxFIFhQHESKuroNL3MsBfhL8SN47hluLt2
	 TpJ5QcuUrNR5wIMdnV4aR+LFYPXS0kGvepZ2PcpgAjuJ/xHQJhB2w4coNLoWYwYkFK
	 ta+TgSAPTAqVrwd4LCzTp/X9oXTC39S/sFPHHwqvylr+yU1WaYvhMfA2fLSjEWqsd5
	 uF9fx/6P5FmWb/d7RIOuPLZsWsWUpOpIdTC3HP4R8Vcv60FFpaOWmE2hViAfpfY27R
	 VkI7M/DOCRCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1985C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986432277.22723.7342263958914235869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc4f673cfb7c55b4e52aa428b33ce444100a0f606681c759097edbb19a8da2c
Date: Mon, 01 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719864322

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B2415624D
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744251594; cv=none; b=qYPjruYS/IQoSTRbeGyieVXLspBObu9sZfVtUCsNtlmIQ9FfmtJxSqWnqXAy5KRJVAb4RcqwLL8RJYI4mJg0nvvQ+rzT1/1a7UkphWmphk92KBtRSU1Iy91pRcDRCKOfxcwAbra3Aob9krX34Bjzm7qE1wB7vLxNtVrmWbS10vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744251594; c=relaxed/simple;
	bh=XGfijxtFWBvcTGFNpwiIsWVJCduvbvvumILWhdn4uCQ=;
	h=To:Subject:From:Message-Id:Date; b=j5ISxwFCVP/tkutH3Po6X/ksNZfWt5Rpbu/o284lRR3mZLKk8aQPHJNWcCDgGHYm6JjMQfxdTmvwntyZgkaXDy9c2Gxr8VmqBPI6TuDUzwsIpc3wYndTBYY11sh13m9KFsVTm16COlK2W37e8E2xYeajyvY1/fZ34C/RsP3SWCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Omntdpfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Omntdpfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F51C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744251593;
	bh=XGfijxtFWBvcTGFNpwiIsWVJCduvbvvumILWhdn4uCQ=;
	h=To:Subject:From:Date:From;
	b=OmntdpfbxKo6200geOEOo3a/am88vNkuCeCccYv7XBbD6x/8u1DBLmDV4PejCKJnU
	 Tkyxdu+ybw2hlThzYLaR9r9ZFW+BCX5pKtSUR+/5pnGG/IjmF5OLDuOSg67As7TBgU
	 yN0Yzt7PCSjy7I8BcFGuL6iagKox91ZIodztg1zLgZKfua4wIWfCOjF69Qq9/YBOPr
	 sNvr2p4PDUndwdC+dGNNPD4sX0w9SQZQSyrMCmnvI17OYa9WjOpJNkvAfk1AvKIE32
	 1kTuLzCHY5UXwB8ninp1mSaOzkeDDWukmhE+bXiEMvu2knuS9F8guali6pPO69LPT7
	 P0InX0FqkNEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D4C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425159358.19103.17154044388508008429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7829b878163287e54ddb9acbc60cb68af1043e9c76381f61feeb8e7281421ec0
Date: Thu, 10 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744251593

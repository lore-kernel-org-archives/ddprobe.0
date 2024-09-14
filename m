Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD5723AD
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726273554; cv=none; b=PtZ1/iJ/+ah7ny0wjhG7EYzAJNxX9mC9JLsuRyHTa6vlKQMAImVTEvQWXdZAfvmXFIZ/8iMkZAtj+s6WJBEJ19DXCPZ0BbpZMg7bPI1OldeCctFabudB4u36bE0TQm4F+mAy7e8khoj+k6qhfd7XiVRfY9MKyW6v+sEVv/HwlR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726273554; c=relaxed/simple;
	bh=7FflC08mSCa/DMl88XvCQtpqisJ04emyWyuVxtUPlZI=;
	h=To:Subject:From:Message-Id:Date; b=jWPULt0tO780gr8Ep25ZfEkuQOicHVvsp19IOfQcSPfOiI/xWfiIxCZKCPfJDSu8v8RnUFhpkkWkyQB9L2V9N5RJh8Iflr21Z6IlTDp1nnWow2VpqA+GKMmhz5zKVMQuO6mPo+3oM4IB1z5XOIAYDialB0TVKvZbT1prIMF+coQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmSeROdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmSeROdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A908EC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726273553;
	bh=7FflC08mSCa/DMl88XvCQtpqisJ04emyWyuVxtUPlZI=;
	h=To:Subject:From:Date:From;
	b=RmSeROdqVlg4OfnkvGzTag4/8VXWbftCiUwLaHy4MuE5gtNX55My1gd70JxXlctds
	 AD6GXvH9mWONbr4VwJOG9vpyyikFnZza0CSx5bfUPsbVSkDhy0GaKwj8ULfIQNIdim
	 yIuQb/4a+4/LJU0Us1gFE2RwYH+bJ4hIAMGklQHBgVo2X+8KmGs1OFPSk1K4Qe5WyE
	 T5BAj9JW0/L/mmTDM49N364JYds7O0UQUzCkYX9m0sk4pWqqO8fJIF+c1VPAoCeypq
	 UKi+Nz+nqwJZUXk36gg8LT00ZFCx11nmfHg7n17hl/yDmaHXbAiy5XPeL4hDTPMLcp
	 h4T8QgPAymsqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9F7FC6185
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627355359.30898.17184406522302301270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a135643fb87f452c50ae31e372490879d45add774b155920df918cbda8894be
Date: Sat, 14 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726273553

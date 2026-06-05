Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792573B585C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780628074; cv=none; b=E084qbepXZXb2nRmIFz2bz6o2koQ7gJMJ8xEG9V3v+o2Q/CsWS9/iDYiWHUYACyvkWC9B4LkHoO5BHwRSPFa1vgvozald1K7He7nZywVRbmCd4QSsxZR96PyQjoJgqny6E1MCAxta+QjgEArxEQBgc8VNcIAWElBdy/wCCxHz78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780628074; c=relaxed/simple;
	bh=2JNXVIdkbC1PaHfD1tCIbZHb1lbOuk3mNgG0KOAbr+I=;
	h=To:Subject:From:Message-Id:Date; b=taVxINQwPLyBEm1vBdd1+JPHWUkdQA/sdYZuj6jfkaIgB37Sww+EE7g1CKqYGMdZHe/4tYC08zfpK0TQOrFZXeJBt0mMB+Zs5LAwKae9M9MyxR0T7gM863ZW7B1i+cgfpfQ0mAYRMgORl+H0bUWUqBmA2ABXybwcqwbEtMp/S0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mz1WEfxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mz1WEfxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E186FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780628073;
	bh=2JNXVIdkbC1PaHfD1tCIbZHb1lbOuk3mNgG0KOAbr+I=;
	h=To:Subject:From:Date:From;
	b=Mz1WEfxRmGMN7NATIfNO6puIYXvXmKNugS/zGIWN19ZWgs5jdIzPIo9Kg2EFEmz4S
	 j3UpLaXgna8WsbDRTLbHl6JxTwq+VXn5lRHDwcWtuarFLYNuSiLxATYmgGvU/qVRWW
	 LYmWsUDwihJVmSjwUIDJoLl93xc2+nI0TxUVGS2jEt8IFxTrjbfgoy3mSk0RWst4Bp
	 l1CZRvOvy6Us0gyNuu7xYn8tP3nknIIJ15ljNzTsVWGRpc5XONEkAjkRh9HGMqn2KX
	 PJx7He90HQ3L4+aIXk/eRRGCg8QOE6jA7SJC6Jebwgs0VJaxI+oVrT2fZt1YGtzocB
	 uXDsiYqwnI1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA4ECD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062807376.7344.12813275054798589773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953bdabdd083a6de0f138ffeebac9c60394f1adececbf8fc942be072ce7e9089
Date: Fri, 05 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780628073

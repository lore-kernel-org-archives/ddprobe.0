Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D623F3287
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791536434; cv=none; b=SLzg6CYaYHsDqZr/fUCIkhN+5uz/razqunE+xxyG3RqRWrAc1fqyQDrxsxfof5bgwPO0ljK3RBjK89t8IMuwpntKBTCWir6Sc6q+EqC/ICKaxWw9JSfhO2WXr6kDBsC6yZqKj5orjXLZErmWDxhLt6JyFFWsIxnr5If5jS0MGbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791536434; c=relaxed/simple;
	bh=o9W1Gt3XNaHxzjBqP/K57R1NRxGt/Kk9/Y3AkQ4ulrU=;
	h=To:Subject:From:Message-Id:Date; b=ltsQ63g5t9CEcMUGH5TYOnzOVCEDJioiiAM5GKunP96wXcL41WOVwTSgJNNdOGdxIKP8BNjE1Qi0JpUeRiJYRMpyf4vs8BB4qCf12cHocHOxKSYdjx9Bn/gJrplddQOTOTwB7tJzmoBPPx8BWEOKnrsNZqu8X8+48QWWSbU4srI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYJh8Avz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYJh8Avz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7E7C2BCFD
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791536433;
	bh=o9W1Gt3XNaHxzjBqP/K57R1NRxGt/Kk9/Y3AkQ4ulrU=;
	h=To:Subject:From:Date:From;
	b=lYJh8Avz6bKo3GPt2edrz1ym+dT19Kt11MmSTkEmr0gtYK+xB/wNpXAmq6cQflILt
	 q8G9nAC6XyQuGfVJ6Rht1+pOJmR2T72sYmiakLCSIO/hypJV3VpbWPuM+KFOpP7nvF
	 7IsZzrugU2zgKbw+sWviDuqrYomNJJzytob9MKhO3l/UtcG2UMqVnSN8J6OwsRnK6C
	 ByBGYXgP+LFHchIZaYP6PcCvq/aYzHl3ZFrF809ncDrbxCQYuLJQ7s3nTFCD1Dp9+h
	 CDgRk4e06rFJv7zQPh5jAfglbBqjP9YYTEUBNnhfMAVvsEAXXrYTV5J7GAJPlNXyZW
	 jgz5LXTNA/ZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5203CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153643370.4127.743938919913501899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4308d7dd37bccd09d5179aaa944af59f8e23a5fce5bcd740d32d7299978366
Date: Fri, 09 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791536433

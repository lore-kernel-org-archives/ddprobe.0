Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003155616D3
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788957635; cv=none; b=RO7sq8zkwIPUrhl4HyyuJ0Bje/i8j1GUd3YFaOm6Ii1PZCBg+dt4rCTDO1PfZPbY1UlaohwSTDjhWBp2MEx8qrxGMsEN1jWFfdhOcwQVY9ownS1KmQSckR/utfaCbKablPvkvfEnBKFf0PFxDjpAIq9Xrx9+19LzTJPI6sIEe7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788957635; c=relaxed/simple;
	bh=GxIRi/J1yzVszmgz2MOYi7lYjrspUQJMg8A2toFUydw=;
	h=To:Subject:From:Message-Id:Date; b=aidDSrXCTYYOHh2Cjln46mbKQSooV3JJYoGUyQiXvPwQ1mMqCppL+J1SuWy5joPdHQG9hMtZNDxs1d3AySqfk3TLIaNtowSwHtijOCW3JwhDZdCTUYwFRiHgkindzADAfTKLNBcSkHUQ+zJfhn5DYZaJyKan4vqkw1NUvULVktw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyuYh45k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyuYh45k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12F8EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788957634;
	bh=GxIRi/J1yzVszmgz2MOYi7lYjrspUQJMg8A2toFUydw=;
	h=To:Subject:From:Date:From;
	b=tyuYh45koo2HALGWPpbjp3kney3ocDM+6ytCKe9IErxkjNqAbCNhYzovd2hTi8QEn
	 YXod6UlbsbOnXSfBDuWl23Ic068K7nEx0JDnCgaqNfep0PuE/T4Fm+PzUju7ecRfrg
	 rqz4bYxhmZe7CRXw+V2eapxd3e88Qhd5EZkq3QFPg//KmVC4/VrPzVUfQiA9Ei8S4E
	 tTelvfgmJJkunH6BMOhTOYbMZkFs+eRTXbwitwnWYEVjp53eUhwsBCZ7UyvCKcO9RN
	 QGdOp52yM3H8goMLGkgmN8VtEUNGc/LPEC3peGfKV4cBbkr1dDmPxTJegyF1SCHogh
	 V99L/ViN0H9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53EEC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895763384.31918.2303315127017130239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a2441645645c10c29925e7ec9c9ac172d3af88f85f4f5511d5e7e0844edfb5
Date: Wed, 09 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788957633

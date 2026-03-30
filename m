Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F7A397E6A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774898694; cv=none; b=JRxh2EFQmM8yc41na0B5euEu/7yshhfF9aCTb8BQc1Ad+JeEG9/sqJqx2U7JfNwIrVdzwXleBQmVX6/6nig3IlTJ6kXO7sTEr4kL2lua2WAWLzGY6hwG8WtvUbz6oL37OWVLxmhSqHJs/TKgwpOyJ2ZT/cDJDXo0uzPcu246IYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774898694; c=relaxed/simple;
	bh=T60J2luyNs8X98q51YB2xQpfLJ1/4sX2noL3MI1O3Hk=;
	h=To:Subject:From:Message-Id:Date; b=aBRAzepexXPdbaUsJ/5Gbz0Oroe30K6IQCHymUjcXZtKuMD/sBwazrhD25mpgtrTVfCaiepTt+dDX+5ssOTY6Hcjes3alnlp4Y2jTkP4rEspOCPAHbF/+QUk4+taT2RSFacJ3oPcjr0vhYUQdkZVdtTYuswYep2fCFfTNfjAX5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh64rdWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh64rdWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B960CC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774898693;
	bh=T60J2luyNs8X98q51YB2xQpfLJ1/4sX2noL3MI1O3Hk=;
	h=To:Subject:From:Date:From;
	b=Lh64rdWxQn9eHP3SKYCphYBDQkAf2giJ6O92/zZV7qUwWpaGzitMCOGuwP/SCXmgn
	 kb4uUoFPC5keybHu6I8qGe22ORWATa89nUpoaIJhOG6UF4JgAMRnC5Jdm24iYSwA1y
	 WZoXefazqGlQZj9Ym44bRo9qbh7+YhgJ9BgEUBBAJSSTFHzIciCKWpUmbSwLmQArqZ
	 BDsSqDkQSeQQXRP7BWccsAxCQFNnxCUVhakDEIs4NmviVtaj6KmN4Q9FfcHZ9BaX34
	 +5PqlMyHUs+GSLUdD6GXrxJKHlwLtfSNfD2CMENkyYxjMCLXpxJqZ1cxGH85DxFOlx
	 2xd2gV/XEcVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2CA1061B1B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489869362.20533.311072943856161871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cfcb4bd20efb806458599eebd09431c3d5c21abb155cf9c298be7c9511745a
Date: Mon, 30 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774898693

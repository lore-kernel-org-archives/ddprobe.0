Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BE11E49F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763212194; cv=none; b=AN8pg4NpzUHTLMGOyOlO23hHG3DhJ1IioUNkUkeEcR4bZ8g/10r8o7ILLT1o2XfC3Z9XvInhWYfWbOu2e0WOZnN4VxM7gZxD6J3gxGHq5Zmn0RRTGddR1ETFZrozaCcAs3c1qbU7ljuuk1qYitue2+uUtxnZVnOOM8i/QvPtp0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763212194; c=relaxed/simple;
	bh=m2/dL5UphLkVqK1iXEFiZ0XlUnQmniCBCyIdC7wFpdY=;
	h=To:Subject:From:Message-Id:Date; b=i8nGqrgQI56X5tdvkW2plCLNA2+Vnao2v7LVQnQ3xgCJM8dCS2DiAASE0BPJf4LeV4wpTWck5jODIfFKYhQFChvgMGhWnkmPfcwGgNAhWPOui6RNSK752JtaMH0sAyZnVAuOsGyYfmuBM1foAv3LSleS2ejnPpjRhp66Wr7PNEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIhIr/GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIhIr/GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA51C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763212193;
	bh=m2/dL5UphLkVqK1iXEFiZ0XlUnQmniCBCyIdC7wFpdY=;
	h=To:Subject:From:Date:From;
	b=CIhIr/GT6Ije7SIosoboPoXNrlDN6LZu+J8KdYMpr5P1MPuT8XRuY1V4dfqTuQ3Ir
	 kL53CqJg7pI6aLPyxD+VUVbj354yDiMfskPhlRUZvyCeKCytvzejGvAfAtC6PlhjQt
	 5tDY+21IcU5K99xbGFADHCHkHMfB7NKsddIPsVNMixISYsGLm5GXuwjpWeojb58sEf
	 DdbnHtf/Eqtzl5cLMt6Wo0NoNXEn3sXTC9ul3QsHy1e7xaddrZJtvOEPLiFRLDkeru
	 9NNg2eeEHwS5XtWEV5FuS9nsrF6qrQrwJgDn1ylqCOsfqA+E+NbQ2uI8tR5wZJsrBh
	 JI6dEnTjIlGdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7894CEB2D4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321219374.11982.7012874574525132853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3df4afb86005b46b318bddd4d3006f43d8004e56c68299c42bc8c1500a8ca92
Date: Sat, 15 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763212193

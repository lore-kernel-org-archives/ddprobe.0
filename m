Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531B93D393
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720044323; cv=none; b=DZks5jT/rfocI/2LXaOvBkMPcWcqUlg+3wor4I0N3Ie4tfqAM0wNg5Xk+h9rorNVkYZ1avBao/ex6Sdp/5mKqIDm+Qeb3ejc7S794a0CYKV6lD1EHw7P/ltsckNUoLVSsju8rqjSj+jLlFcOdWNrTuAsqQJI120FCh1FwPzZ3bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720044323; c=relaxed/simple;
	bh=6zdd8cHk/vyNtMgxos8IY4wxdxHQS7np84L4XYsF+3Q=;
	h=To:Subject:From:Message-Id:Date; b=k40r7wz8dwWmcd8KMPJeFyDtAgLKRDGXO0X63sNbcCKVF1l+aCKyR23/Na1KNPEAlztk9LoCE966v7wqfjn1ZGx+FpebwaRgf+zk6kZxYeLDGupJYBy0T9OL25iX2INkHH6aDOYXNpj3M8rZK1vgDuzwSthCjO/rQAuTwylEWBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8HKg3ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8HKg3ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC590C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720044322;
	bh=6zdd8cHk/vyNtMgxos8IY4wxdxHQS7np84L4XYsF+3Q=;
	h=To:Subject:From:Date:From;
	b=H8HKg3ftTlL54J042gxls7f7vZslAvK/Nluzv1QsN4y7ansmP+jm+IQtVngJVVLZa
	 L+HWfwqrHTY4pf/1IMUwNQce7AaFoh9d1O14YgIePa13iRLwx3o7iJWzZFShSgb2hu
	 l2ly0MIEk7boH4SXJfMY6/DkKOKGJkOi/GvTYFdS6bn1zcFIEOa7epTf53TtStk+JR
	 AYSbKwfi1NfqiDI9hMmzeookTeAJyEcL3aEBvZxcoJdCsLD+5aoA+hYcU+9tlpr0gA
	 a4hNIt2X++ud7E0dbUn53GIL7dYMGhdFHPB3X0rx1/7tGMGjQXK2nQMK4oz9t59EYS
	 e4wFvqfdlVyqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A06C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004432279.7371.18385600152132692615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954d1a3cd3af9b2ff163c8a766d0329c188a45fbb0d993d7a9c330b281d10414
Date: Wed, 03 Jul 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720044322

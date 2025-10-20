Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E388149C7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760986194; cv=none; b=Juxfm06NfxM9cDLcUs4QVO2YNu2MxfzQaY6H3tbmz5URinE1E5tk+dp5Dh0iKacBf3jzXHgo+/qwX5htv9JrZtSlBVVrTpavJZf+XTupHoamIhJ1+/j5WQfqdEnTMiSOT3yEkdp5tZ7ht+VH+HD0gRzHC9SrR+GcvnC72VbXMk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760986194; c=relaxed/simple;
	bh=9Bj3Ca6hRFPczTScVZELty6zoi19VdewKNl05RKI+I4=;
	h=To:Subject:From:Message-Id:Date; b=QjmRf3fNXEPFq2jjGQm9F0ByJ9490ldQRB6pSb79SLC0zr3uSQWwQUEcvdRqTm1y1oRMJdAoJgnM9BemHh1IEhQUTIxgR/HdBpiwqggia+2FqlijpMP/P+7UeY2LawfG/zUUc99p3TxqN6BjRC86mGIN3/B/EMEdWj+NUoiSP2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRQnn1AE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRQnn1AE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308CC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760986193;
	bh=9Bj3Ca6hRFPczTScVZELty6zoi19VdewKNl05RKI+I4=;
	h=To:Subject:From:Date:From;
	b=iRQnn1AEW8zfUbcqy6JJyjw0Qt8YGNv1sbDg8tgPo7mydm7os2ftK58ztz4EpkEpv
	 VKtmEsLAZa4naHRla/ZbINsxL9h9E/jQrj+E/DatFATBB6x3UPToDL3UuJ9sYuKy75
	 FJgoJjbzJbJgf5hEPZSUST6vQ78ODXuFuG1F1IShlK+ysDb9yMc0Qa8C6Xqwhkqzqz
	 6b1grgT/G8glr7jdOjTKqh7FVwH1dDyMU+22eKpyYkaS3aOFLY1FuENc4oYWPvCvBB
	 WHD14tCcltTGRVaU35c1Jqfan8vkuxe9sgdhtuokLlFM/LrZ0vViLfq4Dj8GonEK1u
	 ty63SdyrJ200A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB9CCD1A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098619358.2480.14890894260880214816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b71ae3a79501b13b5694f59d2ec82f7d844ea625db4e4e2103dda50e9606c6
Date: Mon, 20 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760986193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E3B28505E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775251534; cv=none; b=jGJ7tfCGjnIW80HxcurQbZZ+9ItkN7lr7F0Uvg+3Ubkedo9cHjT8/u72bf5qdkllM5MqMoMOKTe0JblSEoqYUj6/6CTEcumlSk218dhTuujtdVVYSs7UnY8i6JRNp856Hi2fHhEyiU6lMxqpzQXX7Pj/kLLHTVjBQS/O/0gn/Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775251534; c=relaxed/simple;
	bh=8wDUY5OL+P/tMRZFUrF8lUR9XL4da9ysCExwgNNVF3g=;
	h=To:Subject:From:Message-Id:Date; b=eT58OOLcpfVrVaoi8njZ+mXldrr1Mi8ZAJRdXCY90bwBQrYNR7t2S+yKAe8LDmRcPhtO44ZtnthOHNXcpAWO8H5QaRYQLgGHAXMacmu+7626At62r7c+Dq+2VFtFdn9xkNMsJAX7yJq19ot8zz4LO11930Tzu3nqDIGyoEZAvYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqAUYO6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqAUYO6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8F0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775251533;
	bh=8wDUY5OL+P/tMRZFUrF8lUR9XL4da9ysCExwgNNVF3g=;
	h=To:Subject:From:Date:From;
	b=TqAUYO6f3G76x6SZlh1sNvrq1Pb7ETW92pZolHCpQTyL+1zz6EYQaIwdrGV1vW5WH
	 HoNyB+Wm9vJ0wtIifUa3q4owTJQb+YMvay1bhOQ7L4whcLEuwcA5sGndLS5Ltg/Ac5
	 DsO3TGtx59V/FricF1oDufbiHLJHA+hWo41150hViKRCnxUDHx7rDtvbadRLTxOk5d
	 qblxC/+j20tIUiuSWxmTLfXVePt6aLolWYkhGaaHcWWaR+Mkwsoc820f52Yliukncx
	 0QPIbXPuFJtx7u1JDmLYHOWBrWe9qyLdNZhKW7Nf5pzS2znbVif5fAzgYHNOUcu/FT
	 wlN8QqVypX0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E22E88D67
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525153368.29121.10434988982194314852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32352010911088fd77b10b32a27cc83f0ea187f26da03a892d6d4bf9d30038c
Date: Fri, 03 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775251533

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2242017A30A
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779939754; cv=none; b=WvDxlhh+pIeJQgu3ouHDlMvlI3nkl4AOyhlpusRA3yTZq5MDDM35E8YEkbb1LVEz/pDFuSWwRv75HPE1Rd6HRNhPu1QQkOKN2WfVgjWCfN5ChJE+QAPXGAfnN13TIV6Zxht6HRx5nWjRiQcUtxKhskPNh5xM54pzKemSugOg7Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779939754; c=relaxed/simple;
	bh=/KGxY3PICEkY20fRyp0jhfiYD8xkPXo8FC0cdd+WX+c=;
	h=To:Subject:From:Message-Id:Date; b=L2QdMPbDlSX1ZkmZQ/iskgn/acy7zbyB1Hz1SFKfcmCpx/CPjuqkWNs6/9zPou6Bz0JjA0ydfJXdaTlNnXXduSuhJSwIvRikmIT9n1sygnUYG/dHI51hR0RoU52bB6fqFFvTwKsxiGHa2fwNTG+5VzILf9EaXG+k6cnFhNNQoTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAyyIvwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAyyIvwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C111AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779939753;
	bh=/KGxY3PICEkY20fRyp0jhfiYD8xkPXo8FC0cdd+WX+c=;
	h=To:Subject:From:Date:From;
	b=tAyyIvwkw0RS178P9VVOVZxg8DBK1kYxVOGpuNWOEt2QLxIbUl416zJymePp/Zddx
	 QvGIwLe6FOxJoignzyOcZa6OOnwBP4+1YC3vSGLqLnVFQItftRM6fVf+x5JyCoOIUR
	 PkKsSad9rFJxVRa+KhQZgOUlRd18x7BEQP32bd3RGFOYT/DtyFyRzdj5mxri0jWAYC
	 X4iTnCbrxCVA2ZB9PVWQUH0BrFyhOLes1xkSWymOjGzinXzrBxpWR0P63QECX+KviJ
	 6FMC9k49WsRVgwLFbHVuLnipWGYO3yJhGrGrgBLmkl29/QhxtFNTTI6I2A+DENqR2e
	 rtmh+u5eTAt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CCCD6E45
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993975368.10956.10825834048478858941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558e9dbb22a3de7c3a2653085c7c59cf96e035ec180eb257b2f892ce2eefa34c
Date: Thu, 28 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779939753

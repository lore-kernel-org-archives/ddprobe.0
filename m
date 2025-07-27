Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D371A254E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753660795; cv=none; b=GSP7i1pFUew2qCL85xZO6AJe6a7gcX/o76ZMRvkZAyi6jV0lDo77a7B+27fTF0UEnod1pBCZyZ/h4Jhl+F9SOubI3ulOl+yVmTNT8UqsPejm/kuAzThvuMFF9hFljH5ON9pDYzsPNe1JMa3cX8dYV83mSFr5YGm5MLFffgHrBB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753660795; c=relaxed/simple;
	bh=P7pjK3Fw41YKPUyYPWYcXgxwIkk0ZubwVHZPbwoTnPY=;
	h=To:Subject:From:Message-Id:Date; b=X0N8O6Yjs/Qnh2OxNGnveY8e4zCQMuHK0uQkEl3l1d1km02GKCMm4bKewNfQx52DhhHDCGrYT9SqUjqXpU5ka9jFQVjS+QcAkVwHX39RF600s3d3cp41y0A7Dqctquk+CwReotjOFvrlteyNN73LAS9bsvyTTm+/dcmuaaDol7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A16vhorI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A16vhorI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753660793;
	bh=P7pjK3Fw41YKPUyYPWYcXgxwIkk0ZubwVHZPbwoTnPY=;
	h=To:Subject:From:Date:From;
	b=A16vhorIt3g+i6ebJ5rzAEwKhyfaPoDZ69sF1S3Kkm6lFY/K/Ttl+oZe6K+wArdtB
	 GfoKP/tnupYtQS3GgBS0ku8j4lNVsxWYHflWjxQJlOlXrPHburOFtf8tVNKeGZ1c0N
	 pPcGyF6GgiVVQoee8pmh8Ze3PKZoznYYOHV2hvUvEUq0inFaXjED138B1nnOIc654Z
	 FG7l1oTH9IJO8b89YRgMVGmjJy4KlI/bLTN1+kTf7SZ4VjExAgh5eQn+LbbWa4e2xl
	 gQ1Y9FLN2poctTFJaJ0WYNBDt4Odu6JQIJjU0/Va02/jY+HIXb1XdOQXWOVGaSDJK1
	 QaGVJkJySCdhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94826C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366079357.14019.4159390381010800018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2117072ba74e383499497a963987dc12b6189fc853886a11d239a63ad7bbdb
Date: Sun, 27 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753660793

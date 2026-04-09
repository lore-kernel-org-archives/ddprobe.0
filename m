Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392DB29D29F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775704534; cv=none; b=mmq3Z14qFV4yMhOqHiskz4BSkIgJVr1VkF2x5/1QErxudUgXf2YIXJE90Z9qAwHxRcTx+3L/JG167rESKs2Hxjpvw3voXzmPSqjVnQmP5wOXzGuV5+2AzbtG9AKZ7QXO0pWVWNws3RKhnU2jk38Do8+5+zG0HGZmtgl4Pijdlf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775704534; c=relaxed/simple;
	bh=Z7XjM1qi7PpKElLZ4EbBkvKBhbtUF0rSMhUOP+pxPnI=;
	h=To:Subject:From:Message-Id:Date; b=MfDR3TbO5k8p+C8f+3iehxgbbbtdw4jrk3BslssbMQojpapyto0qYKG8y3kxIh8GDH4STmtCocq8+uynKMFIjFIqYK/lRNYVUpfQJxBvFsgUKqStJuiNddacXdtI/Cl1U54quG4v51qoF/0r8/qPK5rCaXVixtKHqyCaJeOAMRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYuJzMOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYuJzMOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADA6C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775704533;
	bh=Z7XjM1qi7PpKElLZ4EbBkvKBhbtUF0rSMhUOP+pxPnI=;
	h=To:Subject:From:Date:From;
	b=jYuJzMOKSgucFBaxpRUeK0+XeoC3SJnVDPRe8wsmkYUp5sLIsCjjeX7J5iHXVxSEO
	 CEWKuwXFOdbDg+24L2zf7nCuPrK1UPJpxFZAKBVc5nZgTrdof4CELVyG8FQK0Mu5O9
	 HDYnl8NUuaO9ZyWvg/hRrNOcmEkkNJ5ambEoNKC+pY1z9Z2rE6oiTfMF8S8SKkU3hj
	 BCKnJYNE1H5alGuGMKi8/FKIIScijC8g3PjIxxHFXC7v8aCKmeET8h9JIzEcxNDUhg
	 di+XSKrWOxdSI2LqKcbPkWH7WWz0NHDyu0vf+5kU2G3Ya2DSrVINQnCsPs7l9jhlTl
	 9IB/qsIFM8jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B871AE98FA5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570453371.12157.10307515718912158977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0b3a1c95ba6134481f1eacb175a25dab4b16abe3909a2039424661459a6a67
Date: Thu, 09 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775704533

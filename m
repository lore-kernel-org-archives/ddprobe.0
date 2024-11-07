Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CCA212EF5
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730990154; cv=none; b=QUMp4dCXRfnPR31LxVh9oHAK/2BUHtjQpeTEZNMQUyfpG5gfYob+AICgYdQTMQykuWnYNGUNccDtVoHfPd+Tbxyrgru5ckDs20h9J0iF4j73r9PFL3FpZoXQao+hf6dHZv6fw8sPZlBuMDk44/NKI/WIblUBT00bjjYxar7xoWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730990154; c=relaxed/simple;
	bh=a67P9umpp+HjmToR5b1Sz7HdBf4+cC0KgnfpWKvMDwo=;
	h=To:Subject:From:Message-Id:Date; b=vFP7Gr4CvRLcFjxzaEOyBnQaETC54C3PGulxngsYNoGouTNLWx4+L06EREWYjXD7h3SdHSTgdfBcbW/izbPYJw2wRIJ8UhVhYa1vua4ruRuoeB+zv+tTCA1vhtQjNBuL80vun2fesAO7vpJD0jSn/piLXizkO/iJp8S8mYFlB4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dloU0s7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dloU0s7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFFC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730990153;
	bh=a67P9umpp+HjmToR5b1Sz7HdBf4+cC0KgnfpWKvMDwo=;
	h=To:Subject:From:Date:From;
	b=dloU0s7nmT8aj1CY3PxFLuR7hNQxOBO+++6S/T/qtaby6AH+lSoWQLV5PBRh14s3q
	 o+BbvVtJUZ+HVdjS4fYnSZir9Hby5kHEHEcECC5Om3IKe6wYA2blRoBmppZK9ig9AI
	 /usRJafFHsPK6pluKakafgAJEz+TTCb6k+xAcLjlTPopLNoij8knHXRpm93bJJrvRC
	 kvvAWIPRy81WOCRyKqBz8PpZTpQLlK5D9L1wc/HwunYIkhCrXKEedfaBSxR9Dp3lQv
	 6cyQes+zHtz7SQDPUWz657Hy6kVN3pXvPr9UyYlYsWztKkRWIO9KFex8TxnAQfcUu+
	 8REghPaa0yo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DCD43369
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099015360.8102.11986474299945006417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0978abfae9ab8e5a7e9935ec19065d92f761d1773bf9d240004bff479c92f29b
Date: Thu, 07 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730990153

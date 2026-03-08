Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C73368AD
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772933694; cv=none; b=L5zrt29dTA2fKmVogn8V+O07fLprJnUqjd0VY6gZ8nykj9mIgbNqTvZIBpKJgZpfuebHvY//ghFhsAXybXIBegM3Lh8eyWKC2oRwNZ59QoN0YEwQxxll1L86Lk6B/ivhJ6+a8XXQuECRy8PRf+bSf3qZy8RScPSq6+38W5Elw2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772933694; c=relaxed/simple;
	bh=/RSkso0mdPXtv7mRlj7wJCiV1M41EteosMjhbUczi5k=;
	h=To:Subject:From:Message-Id:Date; b=Ac/T81DIIjRAAwENT88gZs6vOwJAJJCEAysk2ilsqGHGwpUr//LARa845dPZbbmbAG3SzEcujQDJNrUmIFKz22hSo8SGvNmKvsKE2D/ZoEoxk5zxO52LMnFjASXW8LWd8Nk9DB9rBRsw8pjDxsR2/fxNIE6OdNdP7Y3iS7W2pIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPKY6yG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPKY6yG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6650C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772933693;
	bh=/RSkso0mdPXtv7mRlj7wJCiV1M41EteosMjhbUczi5k=;
	h=To:Subject:From:Date:From;
	b=GPKY6yG2YfXAlRUp1fREzTdugG/1ZHqVRmD9h9P6pHXpztBIZLM+k+6kvsEa1OFJR
	 0hE7hUm0vHoH+l1p7kH0qMW7Z2EYEEkwxrDV6Q4hfptpuSbHv3RA7D06W2Nb16nQle
	 Bp0ffpeUXq1dzQT+dLaWCDo7ysNrcPOUa8WqxNFYdzxJQ52FNNeep+1wFh+EtEwrOR
	 UQEdjpJgqXtWnHrsVGW/xsMxIfZeliEmd1KxKZVELf6CxkN8HEaqm22V9P1dEQiAMP
	 ipbLoOe1eJZrK8VjK/HXpgyVOhE8BD5uYqjxb9eHk3vGLiUs7a00BUGoqBqqMI8Fpf
	 luDKbQGAc7PJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94475F55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293369357.12171.6987608923955479740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee53946328bdbfe2bb9634fdcce1e3874015ed48f77cc47eb7ec9a7ae4b6490
Date: Sun, 08 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772933693

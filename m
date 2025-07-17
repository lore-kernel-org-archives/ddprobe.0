Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6318A6AB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752730794; cv=none; b=iaWVosJ4UBShUXhSzNL6u7AdFvbCCdUjz7wXX7nUFZvSGZxSbue7dKFmI3dkLJXil/ghsKirAFPukcEBqqVnR/Dr20UJoNfdJtanI+iIcWQ4QKYlTicVuRLsxDorzd//lMS2jBnkPGY2ehtsN4GmeNeluJjVoUMMdakcBxreMK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752730794; c=relaxed/simple;
	bh=k29TaeIroUXpIFQcAaO4f6NIOy6SncYd4NHiJcDFUbE=;
	h=To:Subject:From:Message-Id:Date; b=SsGV8IjL4rWTy0X+FqYy3EKc4eBKGPs4i6A+dQYHwV+Tt2l4f246incjn9vVuZEy5q/Wynsd4IAa3hBbv5PUNuPg7Y7SOxRFUOa6AzaeXfn1gj5ifcDYJ/XbXNyY+50gmb2LTKgIOqjRytz3jHCNTv5YlTulE+5t2kPUFdr9+Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUmmSxBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUmmSxBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4208C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752730793;
	bh=k29TaeIroUXpIFQcAaO4f6NIOy6SncYd4NHiJcDFUbE=;
	h=To:Subject:From:Date:From;
	b=VUmmSxBQ5oXQmfPwgQvma0fQg85U0QHAQKQm7HMl3wWo+t8QrQ/BiLwKDb0ZBws7g
	 k7gZK+TnyxE35z9+f0srU2gcRCIBZ2gDCqWcezrjs1oRcmv/V7KKZNGZVXT3zjOIZP
	 OPJ1T6NhMjJopBi7gqRkAKpQ8DjkPu4dN5xvYPw7qI9k1h8G8yf5/+KLfq9u/V07Ol
	 tORHioozw1UmFykTyfIQyla1bk6+8+nDvy5o4KCVSNCqI6/+1J+YdSbOls+R9HaG7U
	 F4weqsKt4Zn2+qtg21X/1y6qvf+SzNOWyt2L5qeLGrVyLw4sUjWkNb8u+ss6JbsxIO
	 MOn4lZybjU/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B5C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273079357.14252.16778978156584059118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b8fc4ae9dfb48e9ddc388c888bbbf68ab8fe8a25ebd17ddf48212cf0f41f9d
Date: Thu, 17 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752730793

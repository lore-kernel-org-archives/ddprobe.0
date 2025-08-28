Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408B9634
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756425594; cv=none; b=i8Ox86qMY9C7xZzUSiJ3H/X4ahHhEoVVhxcSsMs3t+QMIoyr96qq0L6yQTb8Cm2sfGvHv4kZY/P9o2xz5qZ33R1kIN/WA2hs4GQ6bIaORjfycYokgRbdR3SRWR6EPXPoAq06i7wdJie1ruHj/a1oN2mXHr9LApvnN8PLGqZFs34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756425594; c=relaxed/simple;
	bh=mOF2e0FRT84JPF1tPH00iNvjz/CO+N3nFgKDNvb+cD0=;
	h=To:Subject:From:Message-Id:Date; b=eYYD2JjnzklbjtEp8pQNbJncifyRax/TfeDS7SuG3kRa4kZmXVoSYFvoJSvcfxyLwFQVUwrlgvgGnudgUXtI6JzVhEas6Lj6OGp2CvQ5hvXgbe21MW7kwWukGdUP104P8Xza0Ppb+Cn31uyxexK5Jsf3WVNjjUy0vQ2yOgu7SGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUe5YtS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUe5YtS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7046C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756425593;
	bh=mOF2e0FRT84JPF1tPH00iNvjz/CO+N3nFgKDNvb+cD0=;
	h=To:Subject:From:Date:From;
	b=tUe5YtS8ISe9cgmLiOp4kVgB1r8cTbk1ALFz92fqBWrlQBhJBqRb41tjXQ0CwUcTp
	 Ti1IyV95o2c07HmO99Q2jUhY6CejomKeswhf4GJWau3smhJoL1LAQaYwNXA0ACMVqX
	 ekvyRWNg3gpdl4hqRaWdleYEWhq0+UF/xAehAixQsvgVNZR8rNdcGVQ2UGlT3h8bBN
	 vkFdbt2lWvPXaNeZbVdeAXM0qyT6a/uJtZLIVqiUU0JW3kpaR3XOYiAItog+pv+azq
	 rioSuAyEvcIwfPKvuDbOJlAZgRTlyCVKW28HD3H/l11PuIm4Ksjhy2BIa7QMKdEvL3
	 ZPwriT6jeCHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642559357.18359.5299349336118148819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb404f3fbcefccdc495f0dcb62af5afec7b17e539e4f7a43affe8cf3c22ee6b5
Date: Thu, 28 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756425593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A74C149C4A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750534194; cv=none; b=JiGYsulE5/EYvoexACH3gTF1kkXQIY5mf8EF84uITVvsmDoW7hswW8czBFY6NTgupNqiONbcIrMSKfpmJc05tSEpT8EehxM/yQH1lullrmcu4ECOhqrRy5RtF+Gemb/zR/yjkhuw4Ra42tCEmZvMOQiO8fYYOi/BlJOv2zBBeZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750534194; c=relaxed/simple;
	bh=oaF2sQs43s2pjh+KXujGVUYql4bScw/O0Sg/0MG0nCU=;
	h=To:Subject:From:Message-Id:Date; b=YjOnVQM3JlV9YfFLtoumTlcGPQq0f57K3yp2DD30xtmLZnqiJv7qL+f5I4xqpVnQUwrZLXKhejy2EjZq5aVxjWAwantUCDhAE7KRjbWwDXyWAvzzHLFdFUIGMWcBnM81vnJCv6xzhHgZKozSb1jmFsVYy/MoXdnnzbBMAlJUVVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vufu1YVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vufu1YVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A003BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750534193;
	bh=oaF2sQs43s2pjh+KXujGVUYql4bScw/O0Sg/0MG0nCU=;
	h=To:Subject:From:Date:From;
	b=Vufu1YVhZ84esuh4w9q1QwtovhB3028DUCRgoYAOd2B6/tJxUPQIP7RT7hFY4GF8e
	 55Xm0Ro1wduQvZlsMr1KHutdyRsoyOtFzP8T16HMz84T7CMHPkxxG0kLO+92MbmZ0o
	 bRKKPPC22MVSmhqWILs2Mp4IdX7BUbu3K1UqeuFxQkZ1B7+00dlNgys5FA5TQVpTxp
	 HjK99V48XLsrwFJ0ysv4UvejFxTN1kHHq6yuf7cHe4YjiKI65VK2uPa71brlyWto0g
	 NFwK5uAN35eivKcyzQbRw6UbWe8aCr+dAxYNGsZLKoM7VbctfiKIt5US/CM4o5lk9D
	 JyGkAeVVcO9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91624C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053419357.21185.10314376869287638180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3082545602a2daba603f69e9a8563ea6de74008d539398af3fd4d6b89fc666c
Date: Sat, 21 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750534193

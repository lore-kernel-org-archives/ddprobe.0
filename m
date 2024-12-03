Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463DD1E04BB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223954; cv=none; b=brDqJkg+lZAWG9uoItMqqZWghAvSZz3JOE7rNJXAUrZhgyz3iGl0PGcfNQV6Oh49Z5ortuo/TdQHMX3Xvb+AgXpMrlk4JuEgWjR0191bz8oIp0IE3GavIxO+1w7RcBhVTRW5LfiFEbZvSyAY4pxdr11f7LU5ewtjnNi2LApU4VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223954; c=relaxed/simple;
	bh=d1KAeS2zqV1Rxpyu0mUlCBhCOyxiBqqIMpTB0VLbjqA=;
	h=To:Subject:From:Message-Id:Date; b=iq97zQ4xl6o3JdDnONSvNOhe+HyN2SkV13FTkF3tuqikHamstxfX2jnY3+bM9LtWQzSX8bk8RxKGHIHZAJxu9aHhTe2ykVoBFnwuqrwgKjyiWzSDUHjF5or62mDnE0fVGs0klA6TqSgCXzK++X+r6/UDm9o6BeN7GFXomYMmeT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4JWuXSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4JWuXSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E04C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733223953;
	bh=d1KAeS2zqV1Rxpyu0mUlCBhCOyxiBqqIMpTB0VLbjqA=;
	h=To:Subject:From:Date:From;
	b=E4JWuXSw3htjVynCVeCx+ygjYssRa7hHujxBz7NWIo4i5xEZl99Qb3apW4AhtuDWw
	 dJ/ncm/vPadGTTzhjLiCuszDkKd8QdQ3NntkvRgVNU/74U7TdCgpbz3PEwMKKprpEG
	 828aOt9GtUJv7IAEkZD9tUPh1YlI611OqVX2Lk5vu/DYa4iqN2AQnZsdzrrl/eXHH6
	 j5/cpO9m0Ky2vwD/51cuTO+Ffsrt6JIEwnSVfOnN6ideAEuJnZZJDNmo5xbZIhmGTM
	 0buc+S5dOvE0UCS9o6zCl3Zj+McdUcYhOp+jG/YwN9zKE2t04cbafNHtENyeBaUegR
	 a9R4OdU8FSddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4230E69E9F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322395365.14861.12700526413742896032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e334c4b3473f263ca2adc4ea8ff1e5bed6a464bd7d79958ff03df0b20f87ca7c
Date: Tue, 03 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733223953

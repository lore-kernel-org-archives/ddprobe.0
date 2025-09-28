Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA5146A66
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759082994; cv=none; b=C+DfuM8sOWpIt2nYCdOsa2EPVexS9lGpo7D20qv2wAg8TuDXQF15j8IfuzJ3OaD9axulUUcS22kRzx8iusCknV28gyWOurocpbVwxWXMs+yNoAMyZnw5G2Od0BUYcOD6OZ8/qOovDsg9Y7ZEUCX3UCa89MiZ0Iz2Dry/Naxt7rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759082994; c=relaxed/simple;
	bh=j6hYfQxnfnJOjkqT96fCkCTnRrIPUL7W//G861jEcv4=;
	h=To:Subject:From:Message-Id:Date; b=VMFz27D0CtiIF/MJSGP6ow8ufoZaLrK7KBzYeQ+uRO07y4IKFWi2e77QYmAExZ4NrBI7q9rJesK2+ZeKpIleBRow7o0m1qC2Meqv30B58EUuFoKLOCvJnRid8zjwFMtwIwboC9mSt7G2c3CdQhz75o7HoMGI0GNUFu1I2p4d64o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFXyG77e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFXyG77e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AEEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759082993;
	bh=j6hYfQxnfnJOjkqT96fCkCTnRrIPUL7W//G861jEcv4=;
	h=To:Subject:From:Date:From;
	b=IFXyG77ez3S4OKH4s1Pk1QkdJr1KYjels9Z1QZpycOdMf1ORuJGuly4L1TTGpNgKA
	 eIzao/AVoIrgYpiXyoQrTMU2fMhefKG0nh9Y/Epu/OpM8A/7c2ARya8yjiFlSRZpBX
	 9jeNzB9aHtdHuXO4wMyhsJmXHFrvjDDlCgCYC5+bYc9cEmVEQmjyuyRbVaXAjAcuA9
	 gCmznCdrSK90DMr0cCIlvBOt4pbEcIaIgWJrkYMOUaAxanONQgLLhKbZ07Hg/ocD40
	 5FcZp9bpjxwMkJkLhe5T1GuNNu8daAfCxlFKzxM2cK8lCNnpiMns6XWYj5LON4rlSl
	 MUYfRiI0kKJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AACAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908299357.9895.17827884108350167864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3848f21dd7d36702c44e836e0084e2808ae6d47ca6e26abf04ec18fde2d1e55d
Date: Sun, 28 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759082993

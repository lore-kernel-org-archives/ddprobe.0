Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5483C374CB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719906323; cv=none; b=Vv0PI/8jiAYVzdg8lNj9V6Np495ZcQT9co9crVEHAu5PcPHv9ECEXeq4BNMRywzqJmnuRM8KjzQTMunlic4sUMI6ffwZl6iqY4vyFWgIZDvX9CTCyHN0k79Cstuebs4GKDvbbezhArsOzYTMXDHiJgUfoQEBHH4Y9xlZNRNveVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719906323; c=relaxed/simple;
	bh=7i4ep8u1Ijn46BYas1h7HJCs0zdlZ1iDGWoT0Fl8lj0=;
	h=To:Subject:From:Message-Id:Date; b=JI0iyYrgiZKn6xfOAPV9ZV1R5dapjq++kp1dVc1zy8qXufE7Oa5fMcRv5LAHqOifWE3M7UGSLXgDt0dBBBJCp+h7aBm+s92bN3HtjdB2TrkHh7PzhCszjfBp4YqcFTSOokWVuEIZpmJyYLmLxMR/372CfWB03HPc9bKkngvf8IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vN21AGDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vN21AGDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B4C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719906322;
	bh=7i4ep8u1Ijn46BYas1h7HJCs0zdlZ1iDGWoT0Fl8lj0=;
	h=To:Subject:From:Date:From;
	b=vN21AGDZMTmRxLnVzi3Q/yYaRUjnQYqYYC2SEbu6lC8SzlW0oPouDK8G/rlE94EXM
	 +o4pA6wq4oJn1h3/b31E2c01s++b9tvHrGZxqCULqhzAWmJ1yuir0PEodQNIbmveI6
	 J7ofeSENHyncKcVlE9J7qBazTqyMhyeWK3vSLw4zeZ5i8ctiSLdqPtPpnH0/otVYWj
	 jKzjSZ6XG5JXmPmKclFmqjHsZkNBvKmoiydfd1/GcHt1Am5uws5X6sNIMh0A9rOCBo
	 Q5SB1FEOq49qQfmRIlmNPdZvuQyqOmucBaVrrqyxIjuIgh2OeAsmiOkbe95fSPM9ND
	 +3pdEQfCuG9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A62C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990632280.17385.17938815285336244392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d9fae345b1101ade9b3c51f17c3d9ed54b762fb65c6da576c0b47a933b724e
Date: Tue, 02 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719906322

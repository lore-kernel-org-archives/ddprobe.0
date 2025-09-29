Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E954414
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759150194; cv=none; b=qbhe7JuPjvDIfZv38W7u4A7xZWj2xF4tKd95008WvtmMqWfbLyd1ODvZcpXKTt8a1DMT2kO/USZ5wFF7aRm+Q/9AW4XY7hRTvOLT7znqh0ffNAl9TZOiTrE3rJB+nwntd8QVc6K0tpqImpFuIiUxzF4qfwu4imf24gWjPmmaSg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759150194; c=relaxed/simple;
	bh=r1QvPKS7IuhbZPrwEDnbUn4vxXfg49hpfrr74POcSFo=;
	h=To:Subject:From:Message-Id:Date; b=m+zOyGEdEmohde4l7VcN7tY7LCtcnwQKOhbB7Kk7Jb1bA3P7YnYLKxmZdmtg6jtfrbKJiKPTpDPfVaKHc2kcGZI0YCIsraEDm6TyAAd61K2bjJAscsv+ce00TrDVR721MKxCLrmE8UzKJz3Od1k6FoYXPTrsE193jrAHPuyEChI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCa6z28B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCa6z28B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D5FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759150193;
	bh=r1QvPKS7IuhbZPrwEDnbUn4vxXfg49hpfrr74POcSFo=;
	h=To:Subject:From:Date:From;
	b=MCa6z28BHcZVwk73OUYHG7yDA3ow+ZhsEAqxofa0kglQXBay0ySHWFrcHr5c+2JjB
	 NVbtmKZ1kkDqzS/SlEVT1EylHgEkjB4fhmyAFsiX4aMSEOEVeHwjV62rw5RUmj+BVQ
	 bjb9EXKRRZIsVG2h0W/b5nFtvO4JMZwIpFe6lTLO7OjI7w2xQSyv0qiMVzZpoJrEsL
	 mI5/aFfgZTZ/R5wLOz184gt/ANuBC8Xl9nj+NdMeMBCiYewXa0QhYziF5GOku2b5Rj
	 HXpsep8I+UFJnHKwyX/Y7FjPXS7XJQapRAZRJJp5pjDzKh/bb3vfMo/UDh5o9T/5eH
	 iJpRmPDoBJ0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A39CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915019359.30330.4747701318683652201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b2e08ac4e8e6b4569459b4ef8b3bd7bc3af1ad6dd5aa4359bbb1bb69ddaa9e
Date: Mon, 29 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759150193

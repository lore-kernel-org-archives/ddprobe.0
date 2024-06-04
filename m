Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B73213E3EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717478123; cv=none; b=JhTsRc7HiBNAPdGddgUUGhbSnNiMe7uZXOFW3zcgTLjxUVVwjQAFWOun06VVKPd6i3kE4vVh/ExeBkxi7yb2x110m43Th91VYZaWIAn9L7J4SY4EyVSN15mDBmqzSqEzEfKBG17oNdFmXanYI92Jl7g34lsNoK2tJBPN9s2ThQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717478123; c=relaxed/simple;
	bh=z1A+BIRspQazVvtcjap0VHPv3aSDsTHOZfNu/2FeKCU=;
	h=To:Subject:From:Message-Id:Date; b=RVIiLgHdXkrmZJA2NP/neoL9D4InX92q2tjC35abrQh21V3NY5gjCBhsVUSktN+Piq8Aa4i3JdukkF0NpuT37QlCiZmpbZhPGqLd2RiExUWhey5Vyz252u9C/FGHdl7NubaEhaiqDY9L3coiW7+n8P+lAdUvlQtAWbByZ+28mFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVQYfWaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVQYfWaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28B2C32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717478122;
	bh=z1A+BIRspQazVvtcjap0VHPv3aSDsTHOZfNu/2FeKCU=;
	h=To:Subject:From:Date:From;
	b=kVQYfWaRhRAqoSTHnh/6ozmdKPoDGOgDhCUquptSQeO9aXl2JIjilxU3TsrXd6yCj
	 bvGknGrkMuaJlobi7ageUSS/XHwOP0RgbT73mLLeUOPfrbP82R3BWOXG3uoJIF4SIi
	 MAYAzsyXwoZiIlbl26VEd46relh8wYncnFQKysCTRY3+FlXsPy8lkXjVNOFfnUC2l4
	 cwzyB+VQWyB0roaiCQBJ18NNwXlGiwHJFf8czcdAXdid+jxLbP8VCF7EYQEZh1/+ob
	 6pp3ggU4QXFK0cKG/nEbwvbbMhB3NT/eOf7qUIev5P9ulg4LtHa3ODQSA8e4Y2A2VA
	 LkRZgK2Pwp6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA42C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747812277.32019.15744044270683571995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e03f5e67a80334ac91fd465b56c143edc05967579e5e0931f78e6350ec92fd5
Date: Tue, 04 Jun 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717478122

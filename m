Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DAD1B4248
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747655394; cv=none; b=gOMgEICha6hwB67i6+8l/N7Z6h7QuAbQnsLgooqCl9orc6YgoJYSj43WncZZYBr96yGSbOZ9SOV7pGjTWo3BVp7IBHU5LsTqSzpBjNVGk0ExrBkPDX6e6ZGHe59m3q0sfYFz2X+8RW/Y7VYRfC/IgytO27kdPeDw9Z6MHo3LrcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747655394; c=relaxed/simple;
	bh=X+qbh5PTV9G2rd8+Lgun+oS2iMEB9anXyPDkv6ktdvA=;
	h=To:Subject:From:Message-Id:Date; b=fCeEDY/y2/KkdNyEHLCaXqb5yKR0wCFtTlGDs1boO7zSmcvdfHePUr7na5qG0bqQqDSJztHEV8np+0Sj7mAjQ+ViCsKOv6bAEBKL/Njpsvcy65kJxO1WCUj95jCbwA2IR+ULmIMSrdWtJZOWVMh5sJVHJAqibZoBcziKbxL+29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8ybwfiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8ybwfiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E757C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747655393;
	bh=X+qbh5PTV9G2rd8+Lgun+oS2iMEB9anXyPDkv6ktdvA=;
	h=To:Subject:From:Date:From;
	b=j8ybwfiUgqqCkdR2vJ8GYB83YoqwQZ6Yj4QDtvin7zIZFhxCUesFdMdRJsAHeZdGF
	 qoV8NpSytRpur6JrjHrIGiOOovEbUXxYezHYWusOTGNeBEAmsSyWgla3X72m8aDJT+
	 DsHonIZ9rqZfevhsCdNsj7SieBCz7p7geRNZQb/Qe3kTtgrNnSKMMenNWGsduMlikX
	 mLkcmHpfVivIYM4VaPIEKT0A85Zj7j1X5v0RKhbFKQVBRTfhcCUYX9mVaww+eLKnNg
	 i3GkGs/7qNzBGaA5uOk24wiOpGumK6OJ+7GfyFDhKi/hYCSMOMv7q2Twdn8bfKp9OG
	 Ap0G0GpqIY0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765539357.13281.16816246863971318230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf6209861e87b5d89a1ba50fa4613550cd3e9f8c38edce5564ea1240df3ccab
Date: Mon, 19 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747655393

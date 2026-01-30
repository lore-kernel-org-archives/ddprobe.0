Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ECD34320D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769788434; cv=none; b=U3aqcAHlknXL/r+UI+HzB55lLOKVrpKsnxz99254umDBOnF14bbyf5cu7ojMOe5KOgoAwZZtsbyitKUg6CakVutoL8+BZpPuLtogT4iMbntjOpc5UTHb7jj2YPAqu3vbDi+yvTsBsLC1k1FuuRTprufMr0P9olXTQ0Ke8Vn6E34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769788434; c=relaxed/simple;
	bh=DKfLnc5RSj8Ky4CgbDGbnSMNpkSs2ahmYMUip+YVCSc=;
	h=To:Subject:From:Message-Id:Date; b=UBs8rknC+MAIz3MCPjX2GExb+MNYwtYio6hSIxAqSr7WcKkaDQ1BNw6KgEf0wvT8kyffv+8atg0/LZDTftnTNOTJxtC0UUuRYjkG1j/Bz260auuCWaeiMcWVcMXBzt0pQJ7bHyRYHTfcx2cw2i1v1TCiTjIN+lcxh6pdHZ6PRHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8185GVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8185GVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769788433;
	bh=DKfLnc5RSj8Ky4CgbDGbnSMNpkSs2ahmYMUip+YVCSc=;
	h=To:Subject:From:Date:From;
	b=m8185GVqpRw7bBZi71kH7NCUVKQX/sD8WbpYQC9eciHUL8jT+EIAMDp8JZgHzgsKx
	 AcCZ10UDwlXg/lm/eQl1/uG+DSeJePpA4X/FGZqQQb6fZHvN7OEYlgVBVlb0xMMYkU
	 COJpM5kbKSrrkovVBwH+2R+RFSesp3m4/LF4HZvKbzEd1jEVNqee+C4SI1TlXjJKUv
	 5IhHYB5t07SFOxhM/xCu93xvCm3gwPKXz6So5Cw/dFaPtHXsqZ56AkQiMpelQN6UW5
	 1bhY8lp6eDU99nn1fLB1IbUDEHTM+QkhmMDZBfRZ56WlhERZYRvwcQqRZnifA7S4z+
	 SPSXvjRjy/ACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122AE6BF21
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978843358.19349.16224466994051699391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7451f31b92d91d1b7847ca2268c4ea4daf1c8bb6c2a26d9473673b957b5d0aa3
Date: Fri, 30 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769788433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1559915746E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767266034; cv=none; b=oF3IBf7p0dmICqnnA2XgtbFcySTXct7OIs+w+LcJvx58LOSxhrDnXY/RP2GUWRQbp+QPpRqkhf3Lc53LZz6uhqdgVubhxApiPX62g39mR7F9zM/dou6QzOf8NWuOHKJIhyPtKVB/9eCqyovvoQlm4dU7BGIW7Os/RgkUtGsdw9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767266034; c=relaxed/simple;
	bh=0yCctYhDBuX7om3ZgE71CPDcwephDc2RZsIEqJFVY7Y=;
	h=To:Subject:From:Message-Id:Date; b=c9ofEp0eqpEyyVNq7Tk1GJEhDNU+QnJlie47RGr4JDM8T5xRMk5xXX/Mh76B94tE6RoxswaYt+7Gs+TM/wya0X6+mXqoM3nbPoeo7f0eeEe6RLW7sYrPSfvtGlN9bduAQS+khos6YIp0hFp/wFj1O9FLVvVcQURrebGYRu3j4EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytu8PBFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ytu8PBFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767266033;
	bh=0yCctYhDBuX7om3ZgE71CPDcwephDc2RZsIEqJFVY7Y=;
	h=To:Subject:From:Date:From;
	b=Ytu8PBFrPWQKifwkyCWQZzslrfLcfjH2QG0qdyxz6y7qtNquKDY6clHMoOJlm4PSN
	 y+jhofDQCoUw2qM6SqX12uEENHZKI1osNa13wvQg6EKRSx4H1mkiG1+YxUD4RfEIu2
	 qOSqToDj0cl3CxM77jonxrvOsTKTl8kFd81UhDVXMY+NvrR2bGaXknqrFF3j5bUsQn
	 nNZ6rjyVsID+FvR1XtQqEZtspb5AN03MQIhVJ3mUOHrNfqgzZSwjRCOoMQ04D27ovU
	 JWVhgK70OHhDeQQGJsB0JZVlFYXlZyUZNdX/VWcxQLpABZ0L8OQZ/6mDZd6UX9owqU
	 dwQI5EUwiuqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA8EE57C5
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726603357.1103.14642292048325179745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae9065ea233cefa29f3e106d5bacf0327d87a4a5792e0cca44b04c78723723b
Date: Thu, 01 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767266033

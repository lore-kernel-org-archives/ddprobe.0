Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE72222585
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766702034; cv=none; b=kaCoGs24DWU4Wewyr/rWcNpMjP0c3dOIYY99CUKBNWh4QFRef3ox2LNfoNoYsDlqRJ5o1yS2jetXyGAvRY8RHixoN9ICG0OZVlmZxIxKKo+DJedPFOM5A3IyEhz+2zhgNsQmEB0i68tjKgMoMX8i+ezMdHTohiGxWIPHTRTUfjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766702034; c=relaxed/simple;
	bh=Pn8PLkoybTzMyHt1bBxAQlIBoyIhrs/CEEhzkt+1548=;
	h=To:Subject:From:Message-Id:Date; b=dscKenf/EKUJvDuNCfWfzq1YZ3977NMD/aBYfvM3uKSPsGEV7u5VIGRbW7Jmie9nIvEXn7RQ1iqVqxZx0bse251RQ9uli+g0SnQJHHMxoOAwtBaKonrhYzD10vd8/qkHi6CQJUXLjINTtP49ua1M/YUKExT64+ndNg8YRS9qqnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnt0JMdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnt0JMdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3C1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766702033;
	bh=Pn8PLkoybTzMyHt1bBxAQlIBoyIhrs/CEEhzkt+1548=;
	h=To:Subject:From:Date:From;
	b=cnt0JMdBfwa8MHOtADrtmNi2JRD8g0yXvTVlrQ/1F0Qf9kF1nuNKJ11pLTqzCQfP8
	 3WFHGLL3Ru8r488+yLt6GDZM8viXLEitWbtHd2UiWy5gS+zvn9U3TOFNbdVBq3RmhN
	 uyDiVMn5jFUCtSmcK82OgUYKw3gyTbF0jGHiQHbKqxTeZ/REg3F2cuOWZrKoxeYaks
	 RdCxPhtFvehfBi8VN9JVJ7kEPCzVhYMQPdHzjGZNjgKbHQGxOSO+JxVhAnyvLMN9+E
	 KO8uNwcK3fHivN7IbZaHLHdidJBSKz6hEO8S2IwI96cVJVBYI75mbfJYI97kL4zWK5
	 dkha42H/rG+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986B9E7AD71
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670203358.15813.9614521617578690615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e0990f6498f041fe7a6da3442c247bf2a766ff46f261610f1374c3dffb4380
Date: Thu, 25 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766702033

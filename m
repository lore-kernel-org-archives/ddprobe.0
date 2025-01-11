Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636F723AD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736562954; cv=none; b=kYGbeG4fQ8t7JmwulRrugwEKrqEiI8Rz7l1s0c9TJE2QmbzBQ3Re5A5q7WftIWiNJ+gGMu+u54kIQ+6qrcbV7nr4zM4HfhR8teGdBWSzJewqHss+FPjgKmGUUCPYgjM77nA0BUxBV0lMVRekerxB+VozwWLB3EunusJBSW9i8v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736562954; c=relaxed/simple;
	bh=9dFTzMhkhGqUcRaggr/W4G0b4rMKO5POMlQ5KP8ym/U=;
	h=To:Subject:From:Message-Id:Date; b=kiZfCCNjbndl4yJXRXJljln5CQtpzWMvlYFaBjwyJ7bnMfSSvXzYOqosF4JLD4s+Pd+fGlczM7eVLtfCb/QhnFR29UJH+FaLp0w8loIQkyO9y7Xx2iW4v2Hq0UiQcvj0Df9Yfb7Xwv+IzidESNlB8RtbKo8aVK6oAyaqEqFGsTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxYt2RXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxYt2RXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6AAC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736562953;
	bh=9dFTzMhkhGqUcRaggr/W4G0b4rMKO5POMlQ5KP8ym/U=;
	h=To:Subject:From:Date:From;
	b=mxYt2RXe8sgWJmiHFCHfqz4IX61c40g3nDyXjx9S6Nu+K14XiNq/xmUJhQyKwFf4y
	 AakKBrGA5TNl0+xA6FQ9ar8C66oj4u8kGYfExywxEGnAwtQEZwUuWMNW3hTcL2mMLQ
	 dbvNtsdYZuNVR8CoQA5F4ss9QwQb2N8ou4NEkO/+8+2bThOIOs21skgNbkkY/HIXJc
	 r/NUjfHFAQyUID+VtAsE6MwKGpPgF5YFQQ2lHQcrBk0CBXgQ3d8dx+gAGWR6OaThCr
	 WpbbGxQukfUVmqkzFrfTcNZkxe9UmwrGp8VLwt4Yo8vBmNLl91sjZPH0z4+4w3Rr9H
	 4pffvIwcSbt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37E2E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656295364.12949.16856841335162202766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02aedcdd106c6ea41e92dd45c8f82775b638ffcc77be1d3af6cad4a1b71a603
Date: Sat, 11 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736562953

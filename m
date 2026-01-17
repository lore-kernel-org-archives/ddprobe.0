Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19918285C96
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768648434; cv=none; b=UWBtyaEeqXJKcJ9ZSYj82q82A91Jccav93YPXi1PHWGLtAc8PAcSe0UYsBsbthJAJo0m8xeL+zhww6gq74AKWd9hIMHywdU5msVHoAd3odVz4ZsCeNjnjsVNwYyCvpTPrlLajt6rNxHW33rQRw0+2RMNgUKD1eram1Lg3nE5lxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768648434; c=relaxed/simple;
	bh=PQBC26JXbfIhFi5MoGfuC9hRFjUk12bZVwc7qXYdu3k=;
	h=To:Subject:From:Message-Id:Date; b=rFckwsQWR4mOAfJexanyl20TBj5ITfFfkVvNZcQn/YnNfZNMoYXRjdaB+SMBwEhsK2uV2Ajtz0QNzYWQJndBFMCa4AUbxFE3rKeBuOtEATo2ZLYySP+IFegH70IU4ygRIF+QtCSYGjh9zLXsdyJyUxvH0ir77JDxgM3G8QwJFaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Py8wvBHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Py8wvBHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9442C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768648433;
	bh=PQBC26JXbfIhFi5MoGfuC9hRFjUk12bZVwc7qXYdu3k=;
	h=To:Subject:From:Date:From;
	b=Py8wvBHXW27JMnMAPm1cr2fEfJRkJQKGXzReMtpDnIHCZRF5XIw7JTE3tgobR47Rs
	 LwO4T7bRHWoGdMjH8PXmxdigdCQOenNJmStuT+adUxdT0Ez1MKcI42zqGwiCtyM6KM
	 qAmAusrXLhyJfNw2pQxO1oQv8J3wlHUpYUWZglV3s5JStblg22PDMeQTlPAmZr+DIh
	 Ivp9Tp7Jn7dD1dZOO43CaKBFehRuTkMmxjhohM7wp/YrZkPpU4jDl92ubKXBlkOsN4
	 V+JO9KPixnaz9S1vS72axn5RW/nq66a1y2ZvpXdY8dXdS7I28s+XE62/bc0ilGTpex
	 NxYiBCxRdrx2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4CC98318
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864843358.7248.12102414919339950545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c98fbad4b6011cfc44fcde980d053117d83a69a7c8effa8f6c64859b4b5406
Date: Sat, 17 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768648433

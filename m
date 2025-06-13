Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DCF274648
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848994; cv=none; b=NwnDatDEvFS4V4/Z+ZBiW+7IWmcteKYgNPgKwsEBYAFygqoq0rOFBtHdGqHqod0upuJl04bNM0QcR/SJjt/dwTgbejrCudUSBmjLS6nuS4bb9vsfq/TmVf2mN8cRs7CoZ6dNoYsUQRkHlMYqyjB60AS+rb+mIg2JDALOqWRy7rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848994; c=relaxed/simple;
	bh=sftjvwW/DpphiGhBLlfvfISdT7w54nKNi7rQYZxBTtE=;
	h=To:Subject:From:Message-Id:Date; b=nWNwzx8GsEpsmbENH0bE59wLl3CYEREo96UOyY5AJZXR7suA4k9ENrAqJ+7oStsQ2urNK59/Nxq4olzSTeOMBXhD604jQkMy2AsRH20Yggd9YUrBtfZc9j8DClJ/rwjWYP69r6b65bjUlTQPlbiyN/iunrl7Zm1BiRxGftjTGMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aldAg8Kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aldAg8Kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749848993;
	bh=sftjvwW/DpphiGhBLlfvfISdT7w54nKNi7rQYZxBTtE=;
	h=To:Subject:From:Date:From;
	b=aldAg8Kz1wrAY8otY91I7LAlGkx2hHsenXf4+Rhi0OdHGyEZlSFaoKRxZKBPgLjuS
	 ggO/IGhg3DZO/03bl9Su2v6tXlLqw7t2TeOMPEfORIC4owgeoFtkaQRZhSmPxRQs4T
	 +P682azLiwBtX5uiRDdoaDj8Ksn9Tvp4vBo4d8rrhEE2SddknqMWk8zhFlhafWQ80S
	 ItJX6kNMK6OyJfT9g+rORhD0jyHxGkdDzkFCxUvzjNL+goUjvUfvqqZg4gXfL+U3+2
	 6gwQ5yuNc5ODBURfhx1yIgqFXEb3kRDe3tR+EFXrG67A1/EO2LTT4U9a7pJCCI8NZB
	 /YxPRiHATySzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908ACC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984899358.30515.9008302355388947646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a542e9e7719edfdbaf26f89f8667d7296bca971b5e29ee9d43a5c17ea2020ed
Date: Fri, 13 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749848993

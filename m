Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2511B3A7825
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775565334; cv=none; b=XBUKUi0zc9orM71Ob8b9ulWgSI9KHQSRH0tiOSfPx8pQZIrlU9fcGdON4GbG4rAHdsa/dDJneD7JOgHIwYR5ax4J9lPa3lEu3+Oz6UKOd3Q48IIDgqo7p5nbCoN25CkVFbb+ImYhFJqQD20MSQt9XrAMmlQkxjd4/P427d1/QJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775565334; c=relaxed/simple;
	bh=3Cji7bcbvedPqn9M5zJNmX7rIdmMF6Szb5JvgaYp43k=;
	h=To:Subject:From:Message-Id:Date; b=Cuzc1hDWwBppUXm+bIG1ElHSe9DwB9xQqyr6QLDs4iw860M+G2lNxAnMdSwSyxUFCm0TWBzpxjQ5Wq1I/cFidDyJFngpos5yLqqudI/VIiPgHV56jB+iPXWYU64e4rqIYOBJqU+WpRyw/VpDw8m874G6JXvAefgGYKQKyj6mrsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0Q9Sw4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0Q9Sw4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3EEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775565333;
	bh=3Cji7bcbvedPqn9M5zJNmX7rIdmMF6Szb5JvgaYp43k=;
	h=To:Subject:From:Date:From;
	b=S0Q9Sw4KSNmg5Krus8NKaguXQrlXnPApmY/qYeRUxswFLkqwIVe2VH5OBNmBRsNSw
	 cG4oniVWuirhQ6lQHi68rBnUnG8vVD1JnAKjApHbCqcVIEIyJy1NAN96A3vh1WBUiE
	 fUgHNl4YCrgDeGtEJbbbgT2p3nAKhOJilWVKRXx9f4WqTQWy5WKkVGSQw0GSStTrQe
	 bifw4oZuooUSfvDMiKI5kZBrkNx4JpOYzMGlIvONaxrCW0g3tiGxG6u1kZr5rKSX3T
	 9MzEzyVOdkZ38Re5itzxmkUgbz00Eyf05smYKxaGIZJevnoAx8xzq+omuMJEzEG91d
	 aZbfTWZCXS9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1EAFEEF29
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556533370.15217.10941800425639239220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c348a7af27257896a270aa7c70397f3f66a9d6ccac6ff89af100dd48b9f1e0b
Date: Tue, 07 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775565333

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC6222AE78
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736765154; cv=none; b=fasAd1GfyAuEnpvSiTcge9RQ2+cOzccGQwwtpdmlw+gEICzFj6A+Cc3Qtbk8grJrsPGPlpVbvRgU7lEVwlkjN4l+6rS6TfBDRkyXEegNUA0iusAMk6Y8hwN/dJkh7jsD697hizE2YbhIx2UbHmifljqfldMxv6BsCS1woeZhvRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736765154; c=relaxed/simple;
	bh=Yv4hL58ASC16wX68pa2PDYhIbXKpBIZmQ1T1weMYD/c=;
	h=To:Subject:From:Message-Id:Date; b=St/v6yQvgdsDdwssb+lXu59RjxO0Min46iMciuYdJt7YLb4jsSRnOkVXwsEdBdGuGdgZgnQBjizpcNzDXDn8DAjQowZieSrr+qMDJ8TxXtpGFvtNMRCtzF9L5d3iG0OurqOX9FpNbhLuqIBmFJpFzD0Zr47/RJQH3mO3+HAkxlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFx4KnQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFx4KnQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736765153;
	bh=Yv4hL58ASC16wX68pa2PDYhIbXKpBIZmQ1T1weMYD/c=;
	h=To:Subject:From:Date:From;
	b=sFx4KnQPjuez10QHmZjbod7/EFFT1qxhISAMULIriprWvlV9cGn3mWEW5YDbjonRe
	 wCs+/dLpJ6LOIxL3DOYSmVhxVRMaBLnf0P3h+e1e+8rHtoXEksNff+AKxf9WCMLrfk
	 OsOjpZwB/Rv99sO7slRH3xty+OTumaaVqZT1KfW9qFZz+8pn4vnGXUWQbiqIgigi2b
	 SFATUYFixGERV1cETZbYA8hJ1W6U59nu4Is2H2ro8Kj9uVuAoHLkjABkHmplbi9pRd
	 iDI4G9vssqAcS9KpBkTgRwvxg+ImfaJs6P8Vuz12A9O7sjizdGGPjffS87qu9w8ijV
	 KZxRZEOCxl56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97049E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676515359.10220.1669230280483462134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6459c22e7f4c22c73d6440d48d12469807d2a87992c81d2ff0b557effe83dfcf
Date: Mon, 13 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736765153

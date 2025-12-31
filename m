Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334361CFBA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767190434; cv=none; b=Biw38Ep/mUUV8Ol+zaNq71pXTwzi/8dIfPB4HT6nDJAmUqcdHEEF+Z2QQr0VCBrcVyfalOuqIbZou6G2dNut1vKEFVGU1gcInDWw1r+UtJ0b4Y93E/MUbOTw5IISJNt2IThsH1E+maCyQlxuF153hL/n2uayTD7ifYzYb0eLDUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767190434; c=relaxed/simple;
	bh=W5svC4h9a/yaY/MMPw6v50A6d0hAARrsoprEhzqQSgI=;
	h=To:Subject:From:Message-Id:Date; b=YMcTNWXq+wOh7NFBIlyoLq4bcRtYx3JxbopsYDSwTdsen3FrRpgmKGOfiOA0QsUgOPi5PTu+WMq1my42TPtIo6L/QdpMm8B0QdVyY7Ditjn5nYV5miGd3ZsboyBOL4TIRW3X5ftNp18MEtRip0F1JKv5t+Y53+AUIfIl3Na/ncc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIIGastc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIIGastc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B54C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767190433;
	bh=W5svC4h9a/yaY/MMPw6v50A6d0hAARrsoprEhzqQSgI=;
	h=To:Subject:From:Date:From;
	b=PIIGastcMIp/r1ZWdvzMBJP4Msh1/+5pPYowdTLFHoH2qW4nKg0HRhuxTUGcSbZpa
	 cOc0+wQliA9WUPpBuuiSLVuqqFePqNribMdVxpcnwPg8zaaGztprZZgQJ2j+Xl1GJ9
	 OqwgNjAipSofF1fV+8czm07YTOXgmR/7QS7Px675iqBItY0qqfn3erfGS1AECNCAo6
	 gDeYV7cf/y2wcZnaph1dyF8q67foTVUN04w/KQX7mi6bGTsBWRt3soNmeJfq9APQkT
	 VWINmcXS3gGC0DjDA9VLgtSuyB0vVsebjT6Vek5M+LznzjZ1gKfKhNGZOVQaPskr0n
	 H0nIxcCfVfKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D2EE6440
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719043357.25458.15359981496639370173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7668a9fd30af842ee780de46572838be2d90fe2ce0586c6f25102594cc7b7f7c
Date: Wed, 31 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767190433

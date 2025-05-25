Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C22319FA93
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162994; cv=none; b=fo3QkmG1ND5h+wj0dx1oERxj2vquSejeZPertqVKApHqbVXRj8UwiRS7Leg9fg6cxq0/gDBW9xCW4XJLu2RhClf3H3p6cYwMJwIPUsYUFZsp2yeqzu0wXqcPRkNMWy6SvKmbyFfBcHlO7TGBHh8pRVgFyxIuGoaevV0NYq5o3X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162994; c=relaxed/simple;
	bh=Fo0IfubfCrz13EyoKqWBDF/CFngFKU7Y4tnY5vE7FkQ=;
	h=To:Subject:From:Message-Id:Date; b=ZCjpBk8/Gc8NtTgblHgICGwDblE6SZDt/VoVsOq1cioUH9oPe/WICAPrXT6x1aS5SBNGxz9NxmagXY/ePisJXN8NJ8dHRsiG9XmP04j69rl6wCfx3YsEoGfipgE8lDS1C5mzGr1HiYy0G2nmbehVsqc484RjzJt3iuy1hxbNgJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/8ZhaBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/8ZhaBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DFC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748162993;
	bh=Fo0IfubfCrz13EyoKqWBDF/CFngFKU7Y4tnY5vE7FkQ=;
	h=To:Subject:From:Date:From;
	b=R/8ZhaBCQm1b2/TO6+qZ9KGArlVgyhHfgRVu19pKcJmTHAF4XdLw0lZnyky5thTpl
	 QFWkDbc1O33qQI+ZC5Qrhm15lmarb7dHe9CLlnw0AWHlQ4yNo/X16hQyIbNeKJA/6L
	 MADAUPcOAT/Es2qhKKXxvYRKDlzvtBhjSFjzeBj1IYWhMIWJXdzPpkVif5Cx2IBB2n
	 sbtru7EVwRNzThbWzQCtB8VZKT6zeiyac0ScC+0J/u4Gu766wLnyIjM7VPLkWxGdER
	 c9P/hyBRgUejmUjYZlOG1UDBu5LXb3vK7HV1FRxsyJRT/moTS8Ry85BXa+RpqIrPac
	 0v5+WvsKboKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABEC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816299357.10845.8820661633304316430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28817256b09b0a8e5f25175aab1304b046c952d279728b1ce1285012426a041c
Date: Sun, 25 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748162993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389530358
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722118555; cv=none; b=h+h9FzOlEcgOe1xYTIK8tLe6nn/y+oUfiptx+WHVL8lHKJA13fXXYHYoMgWY0KgnStwuEnYdgqMh5b779OyEB4GvS1+avVLcDu4g26/4ulrIOlq6rgqVbsNE9L5wVm6KSIewh8NAHoAhDGilujxvup2Tc0kI7mq5vZhe3TuxcMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722118555; c=relaxed/simple;
	bh=91dMShtvAqyOqs6Sd1JEuNUhM2cjH4utzXlgGZ5Zpxo=;
	h=To:Subject:From:Message-Id:Date; b=hjBxnpr7mROlA98BXgklFhszxg7ZP4rVN32lKzP0/EX7TJUOAWch4ZrV47NpJSEGnNGSCyrpnPRhU5HdY4MB3GhtxHw+fZtlQ7iOXpQuel64v/BeDZ7wRf7l9lGswT36XNJNF8R0DOfv8/Fi6axxxBzaYuAd18q0+CzE2aW6buI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpl5Lv/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hpl5Lv/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73FDC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722118554;
	bh=91dMShtvAqyOqs6Sd1JEuNUhM2cjH4utzXlgGZ5Zpxo=;
	h=To:Subject:From:Date:From;
	b=Hpl5Lv/LJYaKTLUxNw0Ru9pQJRgcXLEd9A1FLmtwK+5q3Ltj8j+uqHdz3TaNLBeKP
	 Wv/ep0GJzywuxyZWPfVO3MXRpGAixlhN6zK8qT8lo9cE21XHvkruaC8uz1p0oOzO3a
	 fe9QO/aGZ+aybU1frK48auXFGPfyr7QLskwTQBma8GBWv5FNf+iF1kAhBlWWd0MTBS
	 eAVuei4L8uWeu/Qm6ONgPfGe9h0Q1+/jfdS9snVjbLwEGk+TnlkoRiY9uHwBo5lyI+
	 HT7WSX4zIBfJO2uWbzIrVl6aRXhcTUk0k7E/WNsOXU4cSQ0nfYdlbBYkmD8bdaBNov
	 If1JpGhZCoKcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E58C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211855363.18794.2999831346372055341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0598fe6a9514cc6412b7f0a55793a1a7723a3eecc7abb54a46f556a8e26e217d
Date: Sat, 27 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722118553

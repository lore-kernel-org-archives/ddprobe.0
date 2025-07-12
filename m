Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C3E42A87
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752303594; cv=none; b=t/+2bdyxkXrqVF3gZT5QSuCkd4ajBDGL/VT0ppsv8pc8EJry+W85r+z+vIjXDMUYWwdjOg9eC8uNIScvPF/XAhf0u+Et9OYRB7uIAPUuJUxIpurIvWPytzVZcC8xcP8ZHPU875kVYRkmaGaNbprtvARZv9yoJmfzzgVvwpBLCVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752303594; c=relaxed/simple;
	bh=RcTpk6IhZ4OYUB0o8s/Y4xDUxAWt0CXpM1dHu0XAGkc=;
	h=To:Subject:From:Message-Id:Date; b=r4nt3Uu9JTN1wsWk7aOdohmUj16ZVjmqwarPdR0Nifak2ehy7EcNpjAKm3rtNDi/TUeHenFfc3JVSl07f0BCnHnVln0mGaup3MBUPpFi6HOmiNN7ajmvwxicXV/RSmMh0sRTk00VJMSMs8YeRUpm3lhVnaOebYUkaVe25fyOptk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNKwCadd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNKwCadd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752303593;
	bh=RcTpk6IhZ4OYUB0o8s/Y4xDUxAWt0CXpM1dHu0XAGkc=;
	h=To:Subject:From:Date:From;
	b=fNKwCaddWQg266gab4yZ2LPYE1g0+bRy1sbtnt9d35A1KQyNA9X/JTC1Q16vc5++x
	 XS95zfapKmI66nQ6FG5+q1/b6JmOXohQG/SoU7rcgVheh6l6R0WC0fnayETXyEpcBZ
	 6jfiua4JKHGdpyXLYWL+7z2AwHMaHVhnp4TAqUXSr0MFK3YhvKq6Fs4HLrprMi38kI
	 NVNlqKCISqqBGPXEtB7SxuF06tYe4/TDJeol4xgQGsTxeO5ptGqZYlWN0T/U0I7c3F
	 hHLePATmqZGojUcuJJmJkSLGdH7/VPW4SXnWlpt4rOXijB9rm1SWWTkTEzrLOoYXR/
	 wE8P5f02irnGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230359357.17227.10555565422731454623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9505bdca3c239bcdceba1649330002c72a67f3720e905c2cb1396077e8630ff
Date: Sat, 12 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752303593

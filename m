Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530C71836DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718353703; cv=none; b=BG5c6hakDjQxePELmWor/6KoRQ5Xny9qlD1Zno9W67KnNzWGSfMFwY76QX4fHDuHK3e82jktKMkiGxgsz060gIVqHMfEeJKejxrrNH25wTlp+mPHl+fbMo5a7E9Cl8ggFgcqUDVYIyemH9Bb8GHkXSnBuUjShYXm8J3jfRJlKo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718353703; c=relaxed/simple;
	bh=XF+w19KyigR9OBbLYVcVAL6SkIa9HtXfmKUUo2JHHss=;
	h=To:Subject:From:Message-Id:Date; b=qxi9XdV/3ML/CD/xiYziiBgfM+S/lPJkUM5GW/MxHNSffVQyCt2xTgs7FDuJjpBA/9bjL6P0y3Sw0agUB1dkpIcQQVOKNIPEeesGzYtcUq21zeAvGnoLeSe6rFkM8MQ3Mo/2mDf95OFDNXY8S934FlK2u+6YG35GL29WWdrH0rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N30w4jUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N30w4jUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39EBC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718353702;
	bh=XF+w19KyigR9OBbLYVcVAL6SkIa9HtXfmKUUo2JHHss=;
	h=To:Subject:From:Date:From;
	b=N30w4jUlxc5aMuc9hLrRPfQAjd1MonW/hM1n0fDGQ7ChCSUZmywbc7F8ORUYiwXHp
	 DZIZdPbuXU9Kq8dnaX8W2eWS1MnHDeOlvTM3+v/LZ9ZrATCtWDSwQnXIq8PScS5/8K
	 9Ic5mkDvD0EQW04B/ZEZXAEGOJlBkkIe0S0LGCYUDbmo9TjIzVR4OKBcRXZu/zojF6
	 kgTEGvtyvYl4YjI8Lp5soHwjoo2YnVieI8aY+z56F0dtk0LbHr7JUYFZ9DtmxE65um
	 qYUsrm9R6VLtH6Jzo2fb4aAQgEn94AlL6w7hrPsA/w11nM6VdnKWoqMJKxLu7lAhjB
	 +4Ch7QFvrdoRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9F4C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835370277.17277.15800792754962029821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6356ebb697763c4048439398ee1155a517ab39b2ff7da7baedd1398703ffb13
Date: Fri, 14 Jun 2024 08:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718353702

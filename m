Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEF452F70
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719813863; cv=none; b=gKxcBvOxgjuHFqyWSGnAaJgqOexabTYRI6+CLYIfJehgM79z/Fl9AU+lu5GUL17TsNCQySPbEyQzWTThVY/4bZTwBriZquOupvITcb5m28A03jCd+ekdJQyypWZzfdeutD7qCnE2cKflmEtL2NsvzCSnvITpFDcZKcttXZCjrfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719813863; c=relaxed/simple;
	bh=5xLidvpCipZ49uwPzjKdk6bkqZ0nibCyYkHooOO3G9A=;
	h=To:Subject:From:Message-Id:Date; b=sJiMOGEExk5ou67n247IVwl6gRXwTfYagc1cn0wCDUrIIpAewFonP55+6MB3XZqFClweaE2rfXWaQvX/8PAkHRc3dGoB+dvuGbHg0s6FXpQcD5HA7aTuuCHjMWbpLS/F1BIsO97pT0ikEKp2Ecj91XnSiWGZjUkjg/sL/H0NDBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo53xHNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo53xHNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD717C32781
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719813862;
	bh=5xLidvpCipZ49uwPzjKdk6bkqZ0nibCyYkHooOO3G9A=;
	h=To:Subject:From:Date:From;
	b=fo53xHNz03Fhc0J7uBmH8toZ+SOw+bEokmBNQQoWicr3SiWJYZHrwXfxvT93cvOH8
	 wSVwS25JcLsbCYE8i/v4/r9sER/hAjJ7BBoPvQLbeE1gXbxzs5HCO/ZRcdu1WY7N8l
	 lkRzGwDvScZBIC0WrhJSC7UNCs4Dj0QL83u6XWpTxJC9Qt1/Necu4vTXl00K/PMdq3
	 HhK6TwjH+dSGhNZhKssU1AWkE7evCScI4jLKRFIU+e83Ti9g0gMpCrIn/9taI6HBWD
	 yvUse3vEEYBDJeYRH62M4yz3zvTdnHe7PB9NRq+b3I7jzwquTlnvDSebNsO+xY8wbz
	 CrUFZTvjkyrsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61D0C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981386277.9489.15361708093803118654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2afeab27e8d6642077e3f3171ffe6a4931feba0493df2d75f3c07e49cf2d60f
Date: Mon, 01 Jul 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719813862

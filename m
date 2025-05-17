Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40349433A6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747477795; cv=none; b=HoqtSUBc1+qsRqZFW/CYXhtLKzLSpvX3PBrLQ+pW2m21AtOpYKATiYaE3chnu56t1RLXKCMqHHmx2wyRRD2Cp9sD2Gl3NbKDpdDs/kDuCME/k/W8F12LiL6qof3W/OhVj8wiG43H/RyEOfDSR6BTCbpfuVJB/F1LuNU9hjlVSmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747477795; c=relaxed/simple;
	bh=HqzfPoiCuba2tCxc6j9CaetChxYrX+XLHAoh/0QukN4=;
	h=To:Subject:From:Message-Id:Date; b=ZLvHOBtdt8V9XTdQlwyRPOmtZ43Rcn18I29sOWPAu03+GFMqOnfmgtalhb/e7NRNOF++jMUKdscOAnyvHreqtOI+0vQebNlsOWExhC3PfRF2afTrhTFvNKlHuEIhSK8KCMOBfEXQhikdiOPSNY9NaKTUA54arfwtEmp+GMl8nUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVbZcRxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVbZcRxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A645EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747477793;
	bh=HqzfPoiCuba2tCxc6j9CaetChxYrX+XLHAoh/0QukN4=;
	h=To:Subject:From:Date:From;
	b=lVbZcRxxMCWRTWqs7LHBbDP94sJRkjvk69f9BBfj0lt3feYMOlgMpsJ1LoTETaphB
	 TJbrmS0YaGYWkWqcR0bMCrjPOBkomerJHoPWA9oX2z4KTQmgM8f4jrVv2RXPZVEeTk
	 DGY0PYNoAcE1nOXikuwOmSNlF151nXl/6Zkfe00K/D6QZ5axXl6/o8n8VIAC4sCsT3
	 BY3rOweLFsgJnj48pB4o4cCKdJq/ds8lb/Waa9w4rAndA/6jIvr1nYYM4h5dafUPfP
	 pZEHiDNUZFJx8g4szxnvKTJUYjcY3inS6GAF9mtM6q9S2dAw70U6qUeUGYJbK+bm54
	 k5bzWiwKmRa3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AEBC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747779357.17909.13458582336590570621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e95b218b90bb3529a9d6e0f0957be9bdb3444e77b1c67aeba9d25f458cf835
Date: Sat, 17 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747477793

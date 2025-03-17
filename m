Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590521CFBC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742225994; cv=none; b=lgbum2RUmKXdrTDVDAzzE+sh6R0mjKkfG1GMDoY6eqyjvHUd6HTX7f+5IIsxga/j4rQTb/x2wWvCE/9uxTDEcNRd5H5pqZV+TgX3REp5IvCDJyY/4hTZLsaBigAb9V0LDyWkuBbpQUPcd+1hENefQHATTODEZPKTSVYkx519J6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742225994; c=relaxed/simple;
	bh=FfU/H0ue58ZKs1GAjUwA6bJyg3KdFs+jbfkK/L1Kujw=;
	h=To:Subject:From:Message-Id:Date; b=ppKWi5RSYWPjfeOTBQBOU0KaJI56szLldg3A+SLIPA+JkNWXB43NRPayN7HURwQ0AQdecrveTTkw6uPO2+5Ye5ZIe61ggYg/s60Y7crrK5xoVUqYZLMbFloIzcE1D7KgOC8C0PEt14x8L/4sRmWJeiviJluPERVt28v/xOria/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbcdXUGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbcdXUGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB20C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742225993;
	bh=FfU/H0ue58ZKs1GAjUwA6bJyg3KdFs+jbfkK/L1Kujw=;
	h=To:Subject:From:Date:From;
	b=UbcdXUGr+jq+iTRgp1nIv0mh7HIUG2lr2oOhbEKzhzUBF72cu5w7dCDEgXAtlDiZG
	 YDtjpKWPu6mL2kCxGJZdQi6V56LFzZlFJhUbHter9dt9ZngZjeZpmfjKTJKqUPGw9R
	 M52rmDAbgEbHr8A19Kf5sVaEGbZxi88XweRxuzfffPHzRj+U701BvvittSFVCyyPfI
	 lDCBO8a4+6Do7hDho+PDeL/xMN7s1PzXS1Yp4HiHOyjBKJhWzZZeoNXfnxy4nDpj/U
	 yyEH1njdGDf5ZdrV7M04sn0iRi4J6xxkqt45eSceY4mhtzgFr1gpHhIsc29WnWsSkO
	 pY3JtHYifsqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D419C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222599363.15263.15568911293075492277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f45858c7f4febfd920736e1fb1f63143156645c266733e89dfd87f068e8c2c7
Date: Mon, 17 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742225993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E431D6195
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777931254; cv=none; b=dbNFIL4dkXxxdVHbvqFoMgEJUQOwRRJi2FB4HuLTC3mXUBQWjKh5+8I7RrX9GLW7vs77J0J0ecg+VHSUwn0P7yKhJS2ewSqPjwfAqZeGViv9L6gP1Mf5v5P9BTEHL6cIcbxRMeZw7bVy0xFaeoHparQlkNpZglScBKbf0OFAEiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777931254; c=relaxed/simple;
	bh=Sl+Petozzl4H7fl9JUdE+v5s1INbgA+u43wLv1O46N4=;
	h=To:Subject:From:Message-Id:Date; b=McpLBjGBArRVFwZLn+uQLkrVsgNoEYcUUwbQdO301Tibl9yhIRC8xyavD29q2ZzObyqINhdVgbZaoik1DhXdwBcBWi7VgKmG6cdhrv7fhkZZ2hCnaPM4W3wGd3e7G01DkFP3QbecTZzCBRKwb7KMgQIwmDffFBx0IhheNCAA8rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRjrlgRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRjrlgRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C150AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777931253;
	bh=Sl+Petozzl4H7fl9JUdE+v5s1INbgA+u43wLv1O46N4=;
	h=To:Subject:From:Date:From;
	b=QRjrlgRy3p9SsP/S3IuMS8ry56iSR4Nwj3eIEcptBUw4HUrtsYA46v9ID3Hq5hEZW
	 nL0uiWmRjxHJh3UWXri2O4GssG6kC1EOKAKC5tgidrElwig1GxGQIQn08ruJ1hHHsy
	 O4G+CTXsE6Ae/cEFgTcOwROSo/g9YO8IbkRzyZvNyxz0DwwRIp7gvUMbIPbGNjGT+i
	 PjSwfE0/qEJRzE7DHJZ2lSZn2hiyk8tnPn7Xn8/QNBu5ueHkZJ4x1jeWqLEAoSoC4a
	 EaSkUO5rKvrF2tghbDSMfn143s49ZVnc+FX2oIBltTgYnFkfAl4i3lo9+BIhexKrg0
	 lCeB84UULbYBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D8CD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793125370.1367.8250264657079029475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235f269448bb69a7e5416939ec30f73dd293fb9aa7456751faa81b24d23c7cc0
Date: Mon, 04 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777931253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0D346FA7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768306434; cv=none; b=cK6vvk3iFJWzq2E4puwbDCuBGttFcs+DwMvZxj4C31RTJKWiZF3ljSjflNd9rOiXuzaV+L2WQOkapllTJMfrR/yxfK2OvR4JHrBry4RIWVHTJa1G4HaqBGBgYFUnTo6QBeYrS7Ds3y7q2KsAxHcwEROMv+/91BzjP+qthpVhEP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768306434; c=relaxed/simple;
	bh=GX8M6um1q6uConQAxcEXM5WEV7YZxIiAkwhM6Dc2VA8=;
	h=To:Subject:From:Message-Id:Date; b=TRaIESyE7sriSG33cze0AZ/t89d/ZFRnT7ZONh789hHzwKkuoB8hK1oITh4Uj3ZAQo2YnL96TRYGWSLQtNO0bzrlWI/uq64+8aagZE4OMNpaT/3A3106G2IMkHxChojGeSRWCE9XepFxT4DrpzdUvA8Sj2h9KHbyKnULoqP93uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6lv/bCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6lv/bCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A4CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768306433;
	bh=GX8M6um1q6uConQAxcEXM5WEV7YZxIiAkwhM6Dc2VA8=;
	h=To:Subject:From:Date:From;
	b=Y6lv/bCkaCDvcskw4quFFvgoJsMAH3KWiCwkvvwIHWEPJIc4NgTd4Rg7Pg826/OZi
	 ANHVUIfjyvVeSPGDX7kz89wYIHZhR1hzfjhfWigZdgDlrubToqi4EK14Tcrdf5BCWH
	 aEbNh378F7mMaqdCuYqF3M0diaRcqrCCK8RHXDaN5+o8g8fv8QOWKpD0Gqeqm+FPJj
	 C+mxvY1YmLl3UrNWz0vJYYqme6p+Mhj1UbCjsDDU5o7IH8dTs0HyaIc7w+mfeTHZNV
	 iwEjmcRijYv07BRHmzsGeCjftb8qgCfIpaE+iDRbCLWxC34ImD55PCgxlKnndoL0jG
	 502eXjPkQPs4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D746D2D0E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830643363.26700.15076479812252608713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ef02faeb69dcf423ea59ac9349b0b50dc6820734d61a127b0db40035616ed2
Date: Tue, 13 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768306433

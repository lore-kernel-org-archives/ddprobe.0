Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294DE322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753514394; cv=none; b=qOK34DqivG8xoZG0GluA7TgdwpIe61EIOgrDj/Qh+R5dsbI8p3e+9a4V4cDh5z1TWgNTZaK/0j7nS01W3H67h6Td1zGbKG7yZaW2dCYrCO1XOkHe+u4SG1EbuU+wf9cEaFCVsULh35wmaeIIc4mj0YGkTcK3EXZntF2f8Td/lwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753514394; c=relaxed/simple;
	bh=F/X8z0EpcEuvgeiOfkqZui0UMxQ7njVdDwzFay44Al0=;
	h=To:Subject:From:Message-Id:Date; b=FJDcbVXAaagukbvDDL6tJSgnzDlny9faZlSl7LV36jpa2kcBWP5ym4xBmMLGMrBDFk27sejMO6u1NgQARl6UFYap2RNnjjGF9D1N91mCglCfYtPF+8ygrq+VnnzXlRmbK1n19VZT/ORPN7FIjsxtp2QItjCmI69YFojnIMeQVGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mymK2iUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mymK2iUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA52EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753514393;
	bh=F/X8z0EpcEuvgeiOfkqZui0UMxQ7njVdDwzFay44Al0=;
	h=To:Subject:From:Date:From;
	b=mymK2iUjnTNIW9mzJuAQHsRG13mVM5EAKog15C4HNSs8hS4VPxQIDH7xSZoeJkpW5
	 CE04M2RNsWgcSilw0/aM3TwL+zSmHZ6IjwSX7+W2t2MGPHWTq0ANzpCwnjHl4C/qm6
	 Iz/1C6UQXkY7afYkIkRhZ9HywGZsX7eBce1qfkrYTT3zkHi1iXcFsVU4zyXZQQtACG
	 LuyKsONjSfXQQZfhQI/pPZe+BD2TUoTVTG+4SvzRNj2kmmyh3RuMdyI0a9hOhS9pY4
	 /rXvQFpwGqfr4+h/HsOOGYcJGqqkRTlqWQWIuPWm8CE0XL06XFUMr0ajRNmchNuVaT
	 d+ZeHKCBBMHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6DC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351439358.25763.14089823011146380954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ec74098c4a48bc5912a502d8c1d0a3b141f4b54cce557581223efdaa764fdf
Date: Sat, 26 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753514393

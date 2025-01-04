Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEFE13A258
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735964154; cv=none; b=OOq8oGi734+t2+IeER1DAjAkAxTefAn4iW4QSXy7Br31d6U8W+FJMRx2Ayyb9T7UkIWlFwKH3O/qjEJYrTH+btg9bA5I5kkl6/H4H50E/wMI/nX7+FpXiUtPyCw0J2Fv9wOiP5nEXzCwFJuzn3QKxZ9xWqQ4LF/sS5yjF36Jx3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735964154; c=relaxed/simple;
	bh=u2G/0PcvSdC6ulr/flB5EkuJhh6/8MCxE4uy+H6wfLk=;
	h=To:Subject:From:Message-Id:Date; b=lpdi4y/VxjD3uLfSuXdnhud6y/gDOj+cy0K1KUqZygY99Hi7KfIXPtrn1JgP3b8TOxFQa23bzi0DAcdwD024ix4H73RQzlU34L61ulG5Vlt0U9aJ03Sc/PMIcjNwNkOLY7zFPpuWcgahLnNszyh63MR/5YDPjleK1EoYeaihqlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZa36GBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZa36GBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA07C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735964153;
	bh=u2G/0PcvSdC6ulr/flB5EkuJhh6/8MCxE4uy+H6wfLk=;
	h=To:Subject:From:Date:From;
	b=gZa36GBA1/JtA1liEgzF2mxQulmKLuIG2dv7QdzjAhG10EftJEMgbqUwfNGoXUfwN
	 Iw46QQQdtkXzncSPDrUmKs//PrIPAhnUfUGDeqYNvrwkdVwG8EWVkISfKjZ3E9dVvB
	 31QhiMCLr7fWp4DdTh+cJeyiw9hjJ5hTjXA6418GjD5L2f9FnR30zFsReEiZW2GlHK
	 tTjpow2dUHm4Kip/UwpfCAifdWtRIdZEyswd0zb4oRBlekU/04bZfmyKzHA7ZbiWda
	 uxwupL6VXWiohA/M9uUuT+xfmd1+aCWNSaWvxl4zXvwM8l6nYGhFZ3cbfGiv0o9wUW
	 uWrpRYax0CrGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29EE77199
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596415362.27875.1019271730973789256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca6947765efe3e472bd8ebd9b8c0bb1b8672ae5cedaf82ee155854a182512b1
Date: Sat, 04 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735964153

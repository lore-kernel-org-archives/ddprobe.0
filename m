Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EB5DF42
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748653194; cv=none; b=RfdCScYX22hsw2LhXFgUEoTQMJnPJSCjaQrfMIJF0AXwdee/+bU4ShmzAMbvMkkW2n+vfbimY65SqAKjI9JRs+3M29J/QuDd7Bc+N5bufToIfGaFuDuR6diYiKnEJ7ZZVhyV+3BnK1qO/K118GL+Js3j6Kt7Leo4E0AhyjX1e/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748653194; c=relaxed/simple;
	bh=9nIUMKo2mgOH3AkPVIIP2X6QXXTmWF9czJNQstfUHbI=;
	h=To:Subject:From:Message-Id:Date; b=l0EqoW/HwlCEQwl9nT47g8gFRbYQ3+C3vk+5xYK2H1vwnu3wKOuMkfpod+IZS4CR2Y2H/wgsfLEQ6bKblVW2p8Se467RymHKiLf8DbhXRt1ZWK5JdSP9QeH72lPCAW6pfkqw4JedmIxJy6rQPSAf21dTM7v33so8xxPb0zYbFuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YioqdAFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YioqdAFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748653193;
	bh=9nIUMKo2mgOH3AkPVIIP2X6QXXTmWF9czJNQstfUHbI=;
	h=To:Subject:From:Date:From;
	b=YioqdAFIu8531y83DSW7oXIJxd78nxb9izGQGW9ZoLi96Rt8jcPKK4+XjpoPZqr/C
	 J2t74tizaL35rdcJGf/iJl2bG0oxV/5LFIq2gMpy0nlggOxYEY1yz959zkx7ivWyj3
	 8r+jWOfdAvB5ym6bfRn7Qn+sSacFJEBlvYV2yBPlxn76PcNLaTghOy3HjTcEQcWBgt
	 Gfo9ZiJIeM+rQsEcZKADFwgiYf9ylC0jzOZASNZaJR+dXLtxZAPAYQEVQbP7300bSl
	 VwGoe2rVc+F4A3D9c6jpzFoQKupsDcZIShbIHe/ss7+OhJ6/2A7fS+Ohw/pVLtq95r
	 TtTWiHagtaU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CABC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865319359.1645.1743673545629224911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c9fce050dbf046bbdecc0c1bef0e9b87245df8e56937ce5d2d5d3875014767
Date: Sat, 31 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748653193

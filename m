Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F433A1E7E
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766786034; cv=none; b=UzN37yeiYj+oTDn2tHfcMaZauMHfECWpPBt6l4R7nfYZo9iKOFFGqUgqKkIRw0Q3Ndi8zQVDTcN+5J1BcQaAKlWKLVia7uwduRjwP14tV6BC3KO0/ig0EtEIc5lvjL7WAjPQaaKC2Gd4vxkLFasPjdZ6w3di7eWRmZomjUiMlXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766786034; c=relaxed/simple;
	bh=HFsW+3+JjI828/YJ1WTyWbP6ttZyUZXbR0HjO97WoJw=;
	h=To:Subject:From:Message-Id:Date; b=abOXnkJEV/QKM19U/tPsjH90jWC+WIUB940nOuVqvWTrk29BkYhlLuXrgRUgvD4Q53DMiaVdUi73RbFaGJGh8a6J0s6334RcsdBapo/pEf8PA/cXa65hAVzB2JoHzG29Vxqn1F1+O2jgI4MUYo/wl1HF+0Gy7tDb4rmI0Nw2MgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5mdQnlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5mdQnlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0A8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766786033;
	bh=HFsW+3+JjI828/YJ1WTyWbP6ttZyUZXbR0HjO97WoJw=;
	h=To:Subject:From:Date:From;
	b=u5mdQnlJ1Qzg5LXMqXVpDCoQgIBLwC8xwy7RPHJ9t43ZM/zjsBLz7MFmy97WGE5q3
	 qTTPGTzk/YODdHy9KSa3+HFAKDYxH8Ag2nxm8GTgFhcr79KrpRXpN8CSZvnEhtgU7e
	 9TQbLHQVrK2WUYcnOJ3fFpI0wO9/UmaHL43hcq2unim65qoNM5Pv0dzyc0Y/8OahEr
	 qUU8oVwsb361xMIPclVQiSis5frmRm2VrIeKEvnsSH5sNJluFkUBq/6s8JSBeQmmaA
	 Lpnb1NUiSRxbeKaOwP3HVl/ek84A0LSlsfsEXA8/8SsH5TWPdw9jvbNCPrJqCavHcM
	 X6VTzz07tyNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4198E8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678603363.30138.14547560667118657696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa99229b51900a5ea49866de3e8508ea12e4b265e5ca537ad1940f1a11f4bec
Date: Fri, 26 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766786033

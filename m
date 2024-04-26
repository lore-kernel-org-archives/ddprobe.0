Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFB413F01A
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714131143; cv=none; b=UU7teNAH7xFC5Ppfj745P/DrQs8bTOHkArTKey3F6weIwcbIaajjv1a15ERamYw0zlwq6Ao6RmQnwPfM42AhuL6MBVVKOlA7lkEDBI+zBlfOYBc5BdaDoQi8K4P12BSgmg0hys18A6xsGk9zoz0qMEQkPy2dx3QTjIMh6/rfwYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714131143; c=relaxed/simple;
	bh=qct5FgpNjN2leBPMtk4dw6Zj+myBQ2aQEtC7DFgxuPQ=;
	h=To:Subject:From:Message-Id:Date; b=t2UPzDgxmKaAhcUo/eYS6AoVEDtoSRJJNpjuZlOknxntsH2IoPrCGzF5lFL0Q69vMb+uYTdQQCowxg+deosGIF6asUd4HEvpvDHuTbJWrKJrT+0EpQnv5dq1jUy5mr2i3gWOh8f+xlK1wu3XhwcvcP1mO4E4V52Q6YFjknsyJMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADtT47qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADtT47qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E951DC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714131142;
	bh=qct5FgpNjN2leBPMtk4dw6Zj+myBQ2aQEtC7DFgxuPQ=;
	h=To:Subject:From:Date:From;
	b=ADtT47qhBsx9Em7C2pT6Pv/ZgME+FdUGWfZNGWk1XSIDWVBgSstf6oV6UV17Rciza
	 PJ+n2CR9jYTVRSX851A5htbgXC9IrmDnnV/7dGhXoBWpp5cj40sEwHilTIlDYirzgE
	 oOyZRkcWNQWHFKV1/gpB2qYj5B1C4lmbhklmny96RYxYleRnG3uzQ1b3BRFrQyFKoO
	 YQFyU7Wlw87lUTOuzmgUgC9+mQR3hand35i0i62GDhMkUHilv6AlkUlcJ2RF5bJIOs
	 1WZxhh5u6QoypX8Sg2tBCpSg+YjDngMJ6taII25rewAy8KvJHjPo7QvgSRLW0uafbl
	 6MS5UR1XLRJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C2CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413114284.14847.10822787552778613836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b98b0f2cf4a8701ca9a9e72fcc6050fc34e19f56b46fe3b9654b7ab476d8065
Date: Fri, 26 Apr 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714131142

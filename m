Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200B5249F9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746439195; cv=none; b=AQtmbRIoQp7kKGuo9dNRitzbmdxmj66ZA7pYq51eJVBQAtowpWgPLyKuxE7n7dtu3k4rXGdttqW6+YPbg1uOVw4la5qX2rV1jvYRx2/M6Wml05TM7+rCbCueE+KvFdYmC3lUpyJseoYrmjRUKHxBqvewDurBLvt62uDzCIGFEKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746439195; c=relaxed/simple;
	bh=Igkcv5lpA5gG+NCoEBV3NqgJRZrsl6ZdWeVB0nPuEww=;
	h=To:Subject:From:Message-Id:Date; b=U17cayOV44j0Vp96zOBphOc1kXHqrY7KmUPLv4ZAqNOck17ap2MyPB1AOxgRcimAjXPeN6gAuRriamOHpjxELhvg5E+otgpDzB/XoE0a6Ka1NmHiArTj0Txi3Z3v5LHyy4NhsdRi+0hi6jZkwJ0KtuqIPMfP4z7A+dfVXoMq4U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/et5L8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/et5L8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9EAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746439193;
	bh=Igkcv5lpA5gG+NCoEBV3NqgJRZrsl6ZdWeVB0nPuEww=;
	h=To:Subject:From:Date:From;
	b=R/et5L8kkAUHjwXDC/bWnGRLB+KOT+XtzQ+4tl3V4xd9cEyik3iWppqDBUsAm+HxT
	 7jRkGDDOMHlgG/zpHG5Je5wkGsPsUEK5oGDDhs+c04FFbY6Rwh1l/ZI9/TzrnbkA0v
	 9s0b8DL4qloe1DttZiRqMLDETYD4XQx6DgAb2Z9semgIDywfDQs0KT+XWDt0ROZhxU
	 ceCCLnGmxkg6udjBSTu0jEx23dw8h8OSVaFVRjsfMXdyhPtSz286NjY7C74hpUjgi9
	 Gjq9g8o7vBBNDCz8UTzKsNcnV1/pYX3EHLYrC8omfdd8R7vQnVKieotlukEldyEMl1
	 6uarPxfftLTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643919358.17476.10665809408975206826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e14e32d4bfc0bd7128a35222dba7c12bd055fc92c00caa895f677daa81c57d
Date: Mon, 05 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746439193

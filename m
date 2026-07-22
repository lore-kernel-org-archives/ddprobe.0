Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C0E361972
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784736574; cv=none; b=FM43HOMBgDB+Fl9k+DIu5O5FahEaFu824iA/huAjEIXkuXaOSHqKysC59oxPvUQ2g0DA1dvkx//rNL4yNqvMzePS1xi6kGgBh1gdzXxbQWRtlpOwt9qBk/ejb+/7it1GrMdEgHb1ru1VbU3188+GC1kJpeHuC26au9+tju3LhwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784736574; c=relaxed/simple;
	bh=+Vj0GTFPHSlbSWfNub8glok5oL/py7zDg9F4k1Y0Gps=;
	h=To:Subject:From:Message-Id:Date; b=ll2U0VEDSM0JzNPMamYY5faZlWDccXLY5IPHRqt2OI7tIIBO+TNbCltoilbm/ewCB7og4SmTQ7ter5UvPcjdOSVHnkFOnvX8fScanrohBjClvGGhcmMMZqWjWnq8nNBTd1PB512gKt3feYuUp4uXowcUDyqyihYC9Ks63p6sdjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU07BsWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU07BsWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 154BDC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784736574;
	bh=+Vj0GTFPHSlbSWfNub8glok5oL/py7zDg9F4k1Y0Gps=;
	h=To:Subject:From:Date:From;
	b=kU07BsWuwe9+JeVAcbOV6wikO0MPpiQc+cdy49MChcEgT7E3/31zwepeRp1j9/q1I
	 KXawHrNIYCKK2NdPJXJ+kHoZ7mSPYLAudpcOSoKii4XU0oRl5Pnh9aRubxCKeHDWqc
	 C4xLsho9eUvOzit7akbhZlMqSkjXStqma16Yordz7c0KNeJB4gwBXADNsG1TnkNWH2
	 vc/z9DmsaxsVp3+HWXpaEZ1DgRt5RG00BQ9VtS+aVikZ0VwbLTsaysOUcl1r5bWuQc
	 1Dxfio0loD6NQw99lm/9gB66stO0BZ6zZ5WlcZDKiChwPbmizDs5vrru8D0wo7uWeJ
	 RAS6MMohJsO0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DBCC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473657381.9494.15710157679626201244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de94ec776801c2bb0ec68871b1eeca9c8c5e19a783b4089aac1a528d662346e
Date: Wed, 22 Jul 2026 16:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784736573

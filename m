Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2814F25B2FA
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764805374; cv=none; b=ABwt00Uvt/3wZlUs9Hz3E7paL/vuk/3bG1uK/nSHA098k6p+RIxOs6tlizhGLuwSMUBgRZfZEDGkRq0sMUOKGM7UIodN3P6TOLc+5Sr55/6rAWVpIFxXqezt2VJcK05f5o8Uuh8SMQ/Qsnae6tslS9WmyBuOui4vUNwLxTQuwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764805374; c=relaxed/simple;
	bh=JTJOJPVpnaELiR3gc+O9TNdGK5vReqeDGNLSkm8hmGw=;
	h=To:Subject:From:Message-Id:Date; b=e6C85YYPYDJQMgoL+ZqB7uhazE2tk4b5Fv1dr+V9yd5kdiHJddighUfEBrO1he9RKZ8Meh73Re/aVCfPUxCw67/+gR8V+pvNioGEsoLqiPOM40+UZasnBJ4gFjGe+dEylski66UtBFUnQvQ2Jjmzhgwr5/hv8qZqWxJUL+9S4Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUB0CqnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUB0CqnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764805373;
	bh=JTJOJPVpnaELiR3gc+O9TNdGK5vReqeDGNLSkm8hmGw=;
	h=To:Subject:From:Date:From;
	b=gUB0CqnFgeHE65Nl8CzOEjxy08+KQgiJ+6Y0PSNI3CpORTh5OnPMLbdIDHXqMdDlx
	 /t4n9I3DivGV1l9KhmzYpX3RqUgylumfKJj93sym7bRcR/0vVmwyfXIiU8WnHu8Pkk
	 SXIu0KqMK4bSmwHo8mKBCgNr8v7HhslC9CplDBS+qb/PO6cp60ZYmOVRMlosjf/5J9
	 lCRtKe3OJtOnD5fccYIqjIBDgsQOSXyfyRFwpqHmVmh+2Ierp58PKKYRDdoYPVMh5j
	 qlI+xYZJ5pNTFIYZ+inArE4VZXG01VaHuGwF+WOqNOQ4aDX6SJFKb8FodVRaUrYXbH
	 qLx4YVQLwp58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9CD1CDAC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480537358.18532.13836706531923831333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec273fefbe58b927a0774324164087fad22def74d351e45da3ba07a96f45f03
Date: Wed, 03 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764805373

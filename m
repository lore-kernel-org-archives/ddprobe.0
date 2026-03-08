Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54530C62E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772943294; cv=none; b=Y/euXP6IZ850jf8FRoaTWQWAw2POcM60hEnzRubDblrUFHN5ApkVvM3GHCfipjTkVuqQLia6MEsTRm9iciBmyqqHho9nHZs5lyuj1EI2W0yOEv7d4w+LHE6tq1qnmF0dpI9C6Q02dzIYu2/NkCoJE9Kbkf37CtOjVDzrMD/Ohgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772943294; c=relaxed/simple;
	bh=38w2EYGmtIAyZQGMxgDKVkMB/cPnklyfJlN50q9/Tfk=;
	h=To:Subject:From:Message-Id:Date; b=jLz8OE1lmM6KVd1+NVpzKlcf7bT/qVs6Bg2rDEDMvQTtehqLQu0UTpEB5YG6qD7DUUQ9sk6jvnGRnr938SWSD4CK2Ld7x73cdX+t+d80hBGAUKfbo+M/XXRqjOVSBhB4X7K/fgh5zwkGQ9AfXokFK6UMW+qtIS/DagbHVWbJ2Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDSlOYwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDSlOYwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94EAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772943293;
	bh=38w2EYGmtIAyZQGMxgDKVkMB/cPnklyfJlN50q9/Tfk=;
	h=To:Subject:From:Date:From;
	b=QDSlOYwZVdOZOloWB8Y1uzEaELxkRZhtDax2Ui22Y0ibcMd/cl3ZvB+hmMrK/gSbQ
	 VGf2elVNowahB7ZAjXL7c/ArDZG+YbUCBxIFtZB6n1guIi7hxTPcccOxPDJjTsbqLX
	 ItoO/cmALzfKhkHC1lvWq+XVHFJyud2Y6npG03C6CAX4umVLL3shvAVEDqtcJw659v
	 UsksvK8Ngbmc5rB+terkL2GkCoi3V3r+tiiphDYl1+lw0Qk5q2SM305uvOOuM7TVu8
	 xG6hBkx/fosIzrjQqajO/+z+dlmF0y659Qri2DVM42+p9MvUJHi7lhVuY+lnF3Fkg9
	 S7nM8OWKs338g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96174F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294329358.13008.9734224414600415437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e338467f2e80b331908645ba4b7f988adb5e8712a595c543c726a7ed5a1542
Date: Sun, 08 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772943293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62354707A
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791243634; cv=none; b=NA3jX+4trcuJ+I7ofWGOari9Tm2g8ylE0SB02lTrKrsByDU61I+E2SLbUV+HayK34W2+vWwNC78yzCFT6ypKzLPuX4byMboX++p/Ev8OJE2/fxPRMETnoO2HFiHDMmWsI52l90aBqN4Yt1tIA+Ez/XrrsFg76oJg998m11/xY0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791243634; c=relaxed/simple;
	bh=1NylYAcURIZ6GPrzoVi8oxTag5eQ20V94k10PDtKiJs=;
	h=To:Subject:From:Message-Id:Date; b=Rap96Zq0xbmxC1QdmN1Z6OJpbQxSsqX5fJiJyfQYx6/PI/reQ47j7062xHUuKNPYRU1rEcL6MOC6HAdA3Jhq5Sv3C/adyjtcf5cZuTsk/a2p0JyNc5cLQCVl+19AdVeWk/3X1Os56ORtcRdWytY5Pe2wGKsJ4yhrW6mmskVpN4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmYchBzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmYchBzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16C5C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791243633;
	bh=1NylYAcURIZ6GPrzoVi8oxTag5eQ20V94k10PDtKiJs=;
	h=To:Subject:From:Date:From;
	b=rmYchBzxj4FvSe/h9rG4/S5gw2m+UNBMnOB925/NxnA9HtfqM20Z4uwIa8DQLr8m7
	 TRkZHkAh8ChyB4GbIkoRy7ZI464kDoje65mBwdvnrhcsUf8t3QFP7e1aN8fhhFzzJ9
	 Enr9CtiyYwZ5dnzuM8uFVMw4xaPLPJ5Ec91+UmNQJ3bhbe5T4Nv5Ht428wl/JQcDCj
	 m3lz91GdjK4s9HGA1E15YIE8DAbi6uYPFUIuOkv1xjbtWbGxDj0LM0vrapam6OmsE2
	 lPCpeVeYI4+5OkQ3vGnqdvHhDVHgA+C4qHBSY84qrOwsGj5QtuDuLI4DEGuHdRI/FO
	 4BmLsJYDorP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3C9CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124363374.21948.12511967948444032595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f24cffbaae0b03dee69158132300e6d72f4178abaff3853eae2499f7abbf4b8
Date: Mon, 05 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791243633

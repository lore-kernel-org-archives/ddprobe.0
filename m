Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24260347BDC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779764554; cv=none; b=Z8xk4XRuJ7wkeBz2IRL1ciRp8JZB+iOOqVky25sWeEs2wOPe5t94pD08RJngcSwcHkd7doakj1fKQhreSPvpo0tvxWahbQVgz+VM/M7fR/OjExKd1vufTZN20wQCdSmUewpsR+81v2JGmKp5RgtYXHcaOE7IpNZ6pvHNUYrcxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779764554; c=relaxed/simple;
	bh=x0TIT/A28QmNnE8SKz7vpncBbBzZ8ZCeLvreRocMLfQ=;
	h=To:Subject:From:Message-Id:Date; b=qdvpsBPT2LBI8zuEu53ROGEhfDfHIf0PAZCHWt4tSTv8lyT7OLAZoNI2W7nNKSUM2QMRVTwztEQ91AOfVf+6ENniBO4QtVTs9Lj86nsqaKNu5rh2jJ8eHU/wAHYGPsxnhX4pIPKkujWr0OvI10n/jJD3sq5mwmEoIl+9TGwvVnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaedcERx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaedcERx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB664C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779764553;
	bh=x0TIT/A28QmNnE8SKz7vpncBbBzZ8ZCeLvreRocMLfQ=;
	h=To:Subject:From:Date:From;
	b=QaedcERxm9CutnB7GIAKXo0m2eemSeOxTGg/2XZowdbFzaCY1Ufv+esAgmFKlNID1
	 15iRVsa+khTBCDR3hjmuExbmpWV49YB9w0P91InVW5a2+0sE1pmbW4Xju0JLKzkzkY
	 PTC9yU7jRT02aQo7ZjIiRm8Q3HzvS/+D5zkfSywt1lfqDgwU9cApOuAQGo+ZR/eJZT
	 Ks4etWMWvvvhq5gcly1P4jweIUWVzhK0lqiTaFfrLJ3cmMkC10sZjnEeTBZ6Hy3YDX
	 YY1KTb/FnemAQeBPlxT/4h0uKN83o2UFSd+iC2y0S6B3xvTOcoRI2uxzxX4YFEiIMZ
	 zCJtjyGu5g75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA6CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976455368.28041.16081108345579792818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0203b78fa0c81e09cd7d62d7692c67290c2889cce913007a2dc06da65794f612
Date: Tue, 26 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779764553

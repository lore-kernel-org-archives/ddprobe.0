Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525EC32C8B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785664834; cv=none; b=YLWxqUcZq7P7DnKPDMQ8vxX2OVthE7S0KNneVwDKdCbyk4fe6ViSey7eHNgxeLwG0YoEoAT2Ve5Tyxv4BJPhIyi+MWraO+RvLICjRK67uqW7/mNqjhjdlEhCrMEm1YVd3dXV8H+JBVh7umAG5J+QsUCrR3MX4z35L3ZFL0fRwSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785664834; c=relaxed/simple;
	bh=TZ3piusT/rQ8KA6Daj/prvjKcmuXn1AxTqjM/s25oL4=;
	h=To:Subject:From:Message-Id:Date; b=M1RduDZ6JAN+Bhcf5MmwyLXLZTC35qC9kUEbVHOr0AD6DDguaLbVLNJMASzyrZDDWs1ySonQ9LUrmhshfGr5JNpfcG3T760RlnYWxQgzWeGcgjsMKOkjR+SUOBrcNLxlcyUJvdjkgPyuFMZhtat/imbtGTMydRXoPxy9HOThHgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoUIQlwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoUIQlwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA679C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785664833;
	bh=TZ3piusT/rQ8KA6Daj/prvjKcmuXn1AxTqjM/s25oL4=;
	h=To:Subject:From:Date:From;
	b=KoUIQlwu6b7kEx0lDHk9xxM7EemnCuC4gbzFYj8dcRRlefhi4+S7wTf+HeICtZ8l5
	 7saCxRRHA5sD1Q2GF/2ToemaowH2J5/+bdZTEamkxo9wFG5vcURgEq1eW2LmcI8Jrh
	 HpZk3y9anmTayS9KNwJnED5GJvcCn7VAvNQNMVk1TuFUG0REnue7ZF3oBaORvDU8JD
	 FEAFAFJVOPWfDgr99FOpg9iThTKqfb+umjI3gmHrbQ+G2boIg1jWxLvAeoUrEd3vm0
	 DG8EVkiFGuGeoyNMq3lv+AwxNG2uDgpsghpk6EGOKhZkJ7D5vB0DRRngAlIwAvnm49
	 OMsojz1RZZe6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8927C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566483368.28328.15914126022206349029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77809928f68f85054f79d18115f8c672cc247e45955ad1f5b5d83a248af6cc4e
Date: Sun, 02 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785664833

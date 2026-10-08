Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607FF44239A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791447034; cv=none; b=Ot/NGKhhKDxvUsxo9vNk7QDrGF4uzaQRiJ+/Nl+lT+GfmE05dWqwUJjQrc5QCKT6zlSb8LzFTlYkAn5wemdQUP1Jh04KOlizmJTH/ejdSqhtRBH3h5t61JW9CiWd/8Xx/Bq1pBC/FCZcJ6hQkNsrqylApKLuLAMXa0WVDJYlNgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791447034; c=relaxed/simple;
	bh=jpNkx6HC1iJhDBfBxYN3hSMvtCKKvXFGGovfIRuYUUc=;
	h=To:Subject:From:Message-Id:Date; b=LOgR7ux+8/T23O29HZ6Hj8HqPzHBYkk0KAmkMSrvjqBIFnip8pqQIkxPX4aa3E9PyWH8sNax+xIDtUmkgn0klUiKLeq12dNtE8HMfZuRJaBuifOmgi7Ir0ck+yMWZ86zxg0j44zQsAoCpnQBuF0HfD2k9NUL0mvtsxaLOJYDWLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGHMWwgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGHMWwgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EEAC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791447033;
	bh=jpNkx6HC1iJhDBfBxYN3hSMvtCKKvXFGGovfIRuYUUc=;
	h=To:Subject:From:Date:From;
	b=UGHMWwgUbMqUsvxQbQWF3WQbMam6Y7kJuP0Xvg3nvbF9vbxqYN/xBN4+0LyuWm/zy
	 F0EFbQdHvlLKxmbT+IcRbW2Qj01VS7EZKWkVgoEPaGITtFHYNLrePIZq4kA+m2QDlV
	 1pQlUqocRFEZXPa1BGEH6cbvQFsqkxI34ZF2Ud0JSMkQowcTNn4/sA8tYRo5y8fJpW
	 sOx6MO48e+o4L9XvPDwni3tNNeFQQNpwMMssKvaG18+NSZHO9evXbgUYc3STRHDHOR
	 A3YZNmBKSeobHPTtJjfr3E4+aVcxJAoDf1zVLzfRMeXmEwTb0w++dMCVkMA8ttNNPm
	 RncdZranJWc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B01CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144703371.29508.4669663202367248112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b4496899be4b409d54bc8c4082ffb15b85a43f9fcc21e7de56bd7fc3f44e29
Date: Thu, 08 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791447033

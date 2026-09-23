Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B251C53FD34
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790180436; cv=none; b=mL95yxUGcmniFtE7OiylqAg3Dt055tqXEuUMyEPKGA0i2rwRzKIArZUXR3HiycrV1fmfoQsRUeXLYCc7Yjyfcq/RCeWhDjLzbIxWhEoEjPaqus6P15LhLkDMdBPM2qcP2d/26pJi22YWBDLs8NMmqG+/H+EXugECZiqhFXCmO8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790180436; c=relaxed/simple;
	bh=e3gIZw9sdjMIUpn47sNZ3mbUHI3hKupAGEH8pV+6gew=;
	h=To:Subject:From:Message-Id:Date; b=m3q7o+diXzO0h0MfWyL/izxZcmQGEfZu/MtnMFoEg9y/Aa13vnQhc5oERAIZUxooepPLEw4zdPeA8b5JnfOvM9kZ3kbOMkRVqtOpRWybQ1xUdb2c3jPnEpk40YHsxRQ8QMtNYmF8kelDHjPAYfjIOv5vwMitsOf6DL49/j96BMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MntXnyVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MntXnyVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790180433;
	bh=e3gIZw9sdjMIUpn47sNZ3mbUHI3hKupAGEH8pV+6gew=;
	h=To:Subject:From:Date:From;
	b=MntXnyVZDPJfGbJ6/o+j3l7hI+yce6r/CRr0v/uG9U2Yuhdyte3ezfY3btoNqWVfO
	 7DuKtD56Zcv1TH10nSbXXwCVl3dhTP9gd+zzj4tG1VpdrBOT73y51tvHgwKv4MM8io
	 On2bCg8NcF6kOB3/a+cxhzds8y2e1thMyuwJyrt8CfwygOeGjX2y6KET1zYstHtZJI
	 SLpFQWE/xePXDLpK05dRR4WzIlvdjcBKoWduH8iqulV04jdP/pk84rxnNtywQua4IH
	 5lmY5hH22/ZOWgBLsc9UxF7474cb3MbU9qI4GVIIk1YgDhs02vG2CvHRhQluJrRAnZ
	 +X2BkGUDCoMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B207EC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018043371.18806.8037677160750548844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5388e5cfa348f426e5d8a9aa8112dd924fd21540081b4be178712d7a3ecee7
Date: Wed, 23 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790180433

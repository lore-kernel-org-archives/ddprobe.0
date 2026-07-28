Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B041531C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785207634; cv=none; b=jBIVt01VTeKlmTCk/XE/eif82c1j81WXqaarz10ImN4NxPv5YbXhzQd0E5HBGah+C0Yfg1Z4P2kOHRzd/pSQXeNnzC2QekhD7jzJ5IdjtMrg3PLWuLtJc4pWIFCD6FiLbz9ht4paEDH+SWrplaqGINo4NCYFNJpMFcUIypYErOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785207634; c=relaxed/simple;
	bh=Dt1HVHHAuzspbcozzjK9OI7AcyrsACUkCxczqX32GRM=;
	h=To:Subject:From:Message-Id:Date; b=ieeepZVRR0sBG6wCOL6TVvs/YkeSyqPgZ64L11MGhKikH/Ec590MwbHI9dH6pFtT52FVoN77V/n+wgzZ4oLWlDbhOTbRebBaERGmimi1oUIfCNCVj4fqOITagU2WdkJL5lB5J8E9SRUm7Cn3SlIP0kfYU2/ca4DZbZMZsNwoMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiTL3yyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiTL3yyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E10C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785207633;
	bh=Dt1HVHHAuzspbcozzjK9OI7AcyrsACUkCxczqX32GRM=;
	h=To:Subject:From:Date:From;
	b=QiTL3yyfWWl8P+ptZND54q0cXXatkA4GLVBa+678LBzRLg1C99S8SInym8Wo1gIVj
	 ZfcSBwHata4Wwl6yQkaluR3Cogqnf7YhW1rTsekpy3+wzUM1woIhDSO901XUXtKFVO
	 MoDFPBxyTIsXTkV7sIJKOYis329RCYtNb9u1qbDOS1jlFdJe0OyXwXeGt3lsLVNltE
	 qltHnl57kb0cQTdBFPbXQ0Y1go/WXCq+620QpT11/Uuw/8nuNuqwVjyNMhVCJsG5UF
	 w5GOoSpzYXPmkHSh4/TxYqqdsrM0rDtXOagzdk0h5O8N3rvvRBk2Y8ylscrImnotmn
	 1pOwcjobHRZ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53DBC531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520763370.5545.7175063735024231401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f781a5aeadf792e2ec6bd0a0faba06dc27d18d977fc5b29b205ec825f7b3c542
Date: Tue, 28 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785207633

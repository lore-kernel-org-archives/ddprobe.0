Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CACF39CCEC
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786210834; cv=none; b=baph70hpYKO+/TMHcMtwVVn80y8b0Y7/EN5vKeMUAagqk0VCfnQzM75HVgBh0j8cn+Ey5aSPnRLi130JqswrNv9RlUziAQqL4viEqj0TJyuqHW1BRQCTC+qwA5BKxUh5KslH1O60NXO0HwEuzt6Zogx5WibvGUkr9Fi6CrHuZ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786210834; c=relaxed/simple;
	bh=qNQ9uERZdIRbuRzJ8HxetSIogkgvqEDmqQBH4TS7ovQ=;
	h=To:Subject:From:Message-Id:Date; b=K0lzZrVPy6qi5OWim6jfNPrsmYZJZf2YW+40Cl6utNEinGQ0JbUBjcTgjFLD+Vsl9D3FBZRE2q7PZm+ozCiykZ5fww18G4VXWbLNdz4nP9bv7+afCJlxh2sWhQ9+gVWQLsxoSyTIRXotUWf7cWZYoPehgxtufmPZTrtkC09oLck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDckf9/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDckf9/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5925C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786210833;
	bh=qNQ9uERZdIRbuRzJ8HxetSIogkgvqEDmqQBH4TS7ovQ=;
	h=To:Subject:From:Date:From;
	b=DDckf9/C+Aqy3G5OS5XvYLmrFoWxgeO1l+4GjSZF9KFfhc1x7dHkf3DjVri+SN1/F
	 CUjzdVM3RfvOVKkUM491MaF52Afw9dYebAk8PkVfwUS6D4aVuFpKnrvj0PUh4jjSRr
	 KynubyufyF75PuHElwBLNHd4tgtsChSQ/e4SQpjGT89WbW2zbrmV0LSWx6BVyZxjys
	 NxOIHW+pti4G69i0tuTDIvVs0QTdtQEFbhc87CQvAQaFllc7D/qMTFEI0pGQbm2elS
	 LgJwFBz65SmbvbaLb9Vi/QqIr7W2qp1BQAcnTxu+SPJKZ0L7sV6la44EzLdcOfPzb2
	 Rf82h8z3GBa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC852C5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621083369.31849.12555313158105258801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b33c31acf6411bcbc32f95b445eae8163e217053afa1f8fe432d5b0341e1915
Date: Sat, 08 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786210833

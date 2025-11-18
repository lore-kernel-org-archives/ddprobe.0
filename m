Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C533726FDBF
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763439114; cv=none; b=qYmWqiSMNVUKBehn0DwfJ+e1n7+u+GZt2Iy5kNKdq1LIjAc77DPuVZOHGWgDLEnV11dlkeZelIEfJ5Swd7NjcUQbu+K+HHr76X7+dWY/JECUig33tvWPLj2/6pJxlTwMdRAR8KNrR3HJtEVGIJ5IItn+5xrL4frG0D/awbV4HTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763439114; c=relaxed/simple;
	bh=HB/cPUR2CTw3k9eW74T0kyp/mXm9SO4U/AUT+DuagtY=;
	h=To:Subject:From:Message-Id:Date; b=T6eF4Z84JH0iCTbz3BUrL2d2Wy32K/EuZFtO8kdU2vU0vMXrfVX+kwqJDWLkbdTjpI4U4q/glvF8tHMiF6Zajth9v4NsPcl7rawAEf03DuDkAnNuSRMuA5/aavxQR/TmcX0jwv/rSX3LA3bJ6a0vi88SYvZ3DpntOtWmecBjaLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWeanTeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWeanTeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C1AAC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763439114;
	bh=HB/cPUR2CTw3k9eW74T0kyp/mXm9SO4U/AUT+DuagtY=;
	h=To:Subject:From:Date:From;
	b=IWeanTeDWnVcDvZfFn2L7vMuODcDBV/qnriWS/uu8Wccd24js23Trw3RQ1jm9HFlb
	 EZWkjYBCn129emuNW7S4d187KYMmMY2NyLURQHIXB4rmLLS/6iMndWeiaX/RJFuUH3
	 Yng2ReF9N2ZkyI6FeKtCF52M+aa5O2cOCGpglWguNILJG6pWYS90Q+7/lClJ4rHpnV
	 3IdrwbaOZdJIcV8DAPUFIECmN4Ik0wYyR/DPatUDhVNbJYkgHH+7uQ9H86UkzWafHZ
	 288V7jyTlCuEtDGtGI9PlMjzGRsYNya9R28sdWXjEnL4XeGsy23p20o6eVqPpe6Ow6
	 mKVZoXT3rHylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC6CED243
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343911362.20629.12185574559026118388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38412cc0f0e5e8b6c80d96d2a22045f57ec674fb484facfef92f35dd3ad3f12
Date: Tue, 18 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763439113

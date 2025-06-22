Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BD1BEF7D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750591195; cv=none; b=l0ik0srnsEfca6thrkH43m9P55AzdOsAdsKoyNAUCiC/lnHRdWgKR469zc8/XRd1Evdi44kTJxKynobpyhSk1eu5DoDNbQ6GfAE/Bnb2kFXhEz1elrhlSXTQvZ6WcFSIlpAulEPkgN4CEciqGFTtPEHmTZUgjSKe+wA+aEOSsZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750591195; c=relaxed/simple;
	bh=L9SIT+485EiUtjFzhvqVA4kGrkGVca1ofhNa0bN2o2o=;
	h=To:Subject:From:Message-Id:Date; b=VYUaGGDNnercuNkjlMnbScntS6dF6fDmhGkeLE2FomhzjWDQKBptVASDSuH7GtbFUT6yz+9egqu1LtDZq+Z0PK4hLdAFa3nD8TWpBKG3aSiwT/MHVWH6je7GmKl6XtBptcC5HzZutw1wpKO8A+MirzPSj4ZuMCqxRx6C31gi+EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVlUCNfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVlUCNfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750591193;
	bh=L9SIT+485EiUtjFzhvqVA4kGrkGVca1ofhNa0bN2o2o=;
	h=To:Subject:From:Date:From;
	b=DVlUCNfFpRnf2d76aUfOduzQDSoDpclf4NJ7p2CR+DSAk/Fpgeo2it+Q8G6uKizJe
	 C5ZFR7/dJhqu5yEYYLgi+GT9CS7AeNMIbqmMUZzhY8VeiHx5ZD6yvP0Jj6Bm6Gei2m
	 Z4mXejUJj7UwSrR5nwVur4+O7pJ38bforap5HKcUIdvlzbePErwxjPKDO59bJtQlqU
	 mFt601WMYtaBZuhX1t9vfwtQAYWvaWdOZtFaWkV5ExPAP4QRNCJWQSbFZg6JRQ3qKE
	 DVfgViYoW00ShbexY/G0WCAmMGZg6y+iIeYpuOrVwgYNy0JSLLC0P39NDGVi7yjOW6
	 a+sWHlDUZZKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09C7C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059119357.24139.7019151531382903104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b0a9f5ebbb956d6d0446b3737e6d80f5bc64246275cf2485a76f2588e67ca7
Date: Sun, 22 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750591193

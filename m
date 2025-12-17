Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D213370EB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765959834; cv=none; b=n9/mo8xYjktwe0fQJ5hXpBG6h19McI1Z/R2Pe7DmOhdvbtOsYWshEGTiudaEpgp+H4/4tmCRGmurAADn/bbCr2vl3k29pAgXkw12QIjvA8aj/2dy7bAyJnNxJKyfuG/qbGDRjqSkMqjN67EI9LAN3ocOpbKqGEDPpd+8yuJrnvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765959834; c=relaxed/simple;
	bh=XSLFKypR3VL+Z2gtvrgmCxk37aQXR7ZB2o+mVYCCJ0g=;
	h=To:Subject:From:Message-Id:Date; b=spUWqzulRvt5ZvLCpHSoVDp/9NHUNjCf1qOjr+E6ONYvfNmBMvYMC5mGO8qKcgTs7vDpKsAHHaveJLFrHLY+zj+FxZsSTP1V04R+5zMl+9x14CGvDpjFULTFFP46wOhtfB2ZExZYiXJo4lNbUZ32dN/FK6XWCLkfZqXiLzX4Cpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaZ152Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaZ152Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765959833;
	bh=XSLFKypR3VL+Z2gtvrgmCxk37aQXR7ZB2o+mVYCCJ0g=;
	h=To:Subject:From:Date:From;
	b=AaZ152Z8HofTptrJIZpYe+nf+aJ6hrLSEbYxCNJTJ3CmuL4oOtvghFgnl9noiwFPn
	 h1tGTn1NBlIOjpT4dg2cGJ70AqcDVYPSwugHI/AHqMAwXJWHLHenlwQn18yXNB40v9
	 nhBCwtKtByjIfTQcCew1pp2Rjioo/isQ6bMj54ebSMoZ7D4lgjJ3meE6BghLQuQQ5P
	 pFHuSpC3H66ebdz4VXvgw58Np+xaR8h2rYactPvhmalfpO9UhW+foPJME3i6Z3DiwG
	 v4ZSsWd+ieSP4KUVvLfvEYok5fc+MvGaHB9QxteOeJ8cPyNC+1Wc3xm4+6/NrK38EZ
	 1cKkrxSnRw2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B28D64088
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595983358.21160.9755189405082116160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df7e5d730de4aa745178671abca115cede90b697758122389cddf1911922429
Date: Wed, 17 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765959833

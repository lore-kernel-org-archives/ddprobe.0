Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C9D1D555
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733726754; cv=none; b=CO+NylpkovJZ06aaHSBPuFGEOY7CDwGUSg5d228uZIiiiuL4pnwzNSycbUn+2NIaUCiGNQu5rAVdTF97Jeq3RPGa2k0nHeJmjcmoWklRDsOgv8kYFmEy2VhHUz/xMpP6ImJYyxZ6j4aYspjqFm9gy9tK7rlVuMVBdFIZFeUtAm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733726754; c=relaxed/simple;
	bh=I3TfOT14C1qOCvreDvYEnAOIBxvg8/fvDtd+7RELHvo=;
	h=To:Subject:From:Message-Id:Date; b=hX1OmmKdIJPIX/co+vR5je7jFMFdtcH6uB3mg3bR56QOBtxRIaB1kSlGqTwszyQfhYXLtMq634Tooh41mm9EsTYmdE5Q4gAVi3CyG6ry+gCSx7BfVr6aQ678noDx6GkfCEVtvUGMuUJpQqUsTTh2zqQMvyODw7ZTrnF9zlngC3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYBpZduu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYBpZduu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC98AC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733726753;
	bh=I3TfOT14C1qOCvreDvYEnAOIBxvg8/fvDtd+7RELHvo=;
	h=To:Subject:From:Date:From;
	b=aYBpZduuVfyYceNhvt8T/V3yUzfjiIYDF8o+IvEMszHRqbV3jSDSyT0OltOJo4RhC
	 ADydY8WVBl5zcywwadPWYYtv4Cx1HDoDrefh1oeQjMVDfpA0A8ogRlgAf6BLUYzk2o
	 ixFEUn/84nYJtvp2dpvqk9zZSlfD0ePgZO5k9P97nBByJBraUGqB32ZxT1cssV3k8t
	 m86xJQja5nBxc5aQQ9W9PqUGL6fD4YzViI5uqW/0VywFwmSEQjg6jqBZpLq9cj6DsH
	 qHMedLckH8CEa7pCfMJ9KyGFX20HiFGLDOKBsa58QjVakF5Ab2NcyRffdKXMcDye7Y
	 84mbTz4VZO1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96703E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372675360.9797.5212715402541975497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3774cb63b86d5273cd93225f777b40be5a474f5dcd4e0819e2ba038e7de554c
Date: Mon, 09 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733726753

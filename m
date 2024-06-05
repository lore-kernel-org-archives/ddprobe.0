Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2251A01D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717591583; cv=none; b=M438CUEca4SWvyyHi+wR6bZfOr3Q3iFeEFKopfatjeYALPSPpfCEZI0U8Sz7odqFnEBB8aejnYwfKF7Tpr2z7w6slrYqDqUhLWWHKrepQRA7px+puDvLqV7ShOKUgBNTHlFLROYfFUUzyLVF/W0SCP++B9oetdqCgmADvEvmFsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717591583; c=relaxed/simple;
	bh=JrZpAAyGrHSV6HzEFAFRl7wcs2o7A7wUFWI8PumQWNg=;
	h=To:Subject:From:Message-Id:Date; b=JjI8IA05oDYPljaVRc1nNUvt3RwzzFbdqPkaS68Beq+bVP6LvGRqQxbpd0W4DE6EikvbEkrH2oJEn4ACX7Ya3mQhufPBlJqnj6dSrgZRzKhwHJYYV8G+erT4WJfJFNu0zJ4lFU7Sgd1Qxd113e+uJ9onDc9ujlL7ogDXv3vTX5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7xnsJOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7xnsJOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA554C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717591582;
	bh=JrZpAAyGrHSV6HzEFAFRl7wcs2o7A7wUFWI8PumQWNg=;
	h=To:Subject:From:Date:From;
	b=V7xnsJOKv1KOIXDv6V6NvTx4fAuXHkiOWkpW8x6mNhYUR7yyfsAKLYDLCYROgXXqX
	 evvLY2Sb6pWzjTA7YTLGH3zLSaqBfS2GAHBA/WMj+Gszoa1hCPqyQ9/dTzsw8A80PN
	 FHvjBGWGnac7OuS4l8D6frvAD7dAagVYr7WdbjV7RE7g/Uc96BGJEf+pyvCXQu5YBM
	 FzyVop+A0Ryr35QPWxrUyKMrvO0XHhg98YJGTBw0bzyu2WaP8S40/LBUV/p/JCKa6L
	 VhNmIf6s8Xt8Ii1Mp9hngHFpZkaFhm1TvEVg/jDWejCmPa8KelhnOpLw9fvEodx0Qg
	 vpLvRhICrhozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54B0C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759158279.8444.17046660186071810861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3814197711dfd2401d59b1f122334ba662ce3b242a2e49a58abf824bffd2b29
Date: Wed, 05 Jun 2024 12:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717591582

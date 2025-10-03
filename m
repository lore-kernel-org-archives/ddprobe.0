Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C403267B01
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759529394; cv=none; b=rsc4XK+BHQrC5wgoATErpY31JyBe7KqevHacrGJynvTT79Qk6dgSFv1VaY2SFBFu0SbJ93Ab1qRhNFYvx1apuP97Hsmur8SOiTB9ArktHhRDSMDrIqGs6Wrznnf2k93rShwuA/BMz/fqYBPreaQmPxETrha7Bh9rn3OUXZFY5U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759529394; c=relaxed/simple;
	bh=kwoX6D5v5gujxmBrjhM915UxEFcftayeLNS7hSG+O6g=;
	h=To:Subject:From:Message-Id:Date; b=YNHEiUv4GHVA77vFlBTd/ZpnxHnk6KlyLwiy0owwuC6nK/WAgnPWyc87C9w08vBpMY0CPsMUBH1Scdg2/Cbgva5id35KDBFG7krVa09/fVKI2lqTONeADj7YrVVnE0kaMGRG1ge+u29Bk0t75LTPpv4xS/NV++E/+uvywSu9t24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6vpPZ4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6vpPZ4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0BDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759529393;
	bh=kwoX6D5v5gujxmBrjhM915UxEFcftayeLNS7hSG+O6g=;
	h=To:Subject:From:Date:From;
	b=B6vpPZ4Vk/I5R+IkoRfyOxX+tBljh/ufiXPODKWJgmzO5jeE0TGvLqUDWAAya9H/n
	 5DA/SosEOBpHeDOfznRvjQqo/lp3N04PRfz0h5LeWO0EDXf3Ac/wECxZzZ1/2B3DPU
	 8TujDY8Z/dJS0XwJ2O5EO0sYf4bzwJyDv8/CYmUlFg8R5HW10vblpj19f2EaeFpCXt
	 pHxjHB96HftOsA0/Qh7EhcF+eWqusEyqGtD3eZkzsD6ldaL0E+viNoF3SI+dUeIBEA
	 iRBvgAzIWkh8NCK+DSdwl1sWrcfmLYObo/N0j71gMkDF5qqJism8xlFOuwoDxEYhP/
	 /YA4bjaw5HzlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF6CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952939358.23145.15797123143975687006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5c8aa87b202d6f32944d97fb207be067155e2858ee796e32e0abebf99e20e6
Date: Fri, 03 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759529393

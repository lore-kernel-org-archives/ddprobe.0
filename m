Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA81482FC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721415354; cv=none; b=Sz2IsgDv23WTZvmhy3UtzljJ4D/bH3iQdq26Bg7dcxuPZ//kXLiTGpQPZgpxOGwMIllPPd2JO7JscqCtII2EiVvIf1e3Mxy6U9faD9QfGMCjCLZLtNCJDLaHc0QRq+zBJK65CJLFwDUBnqPIhET/mnPJ9ZPf+9SLXwPw/wfNL1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721415354; c=relaxed/simple;
	bh=jGgyp+chKhgYH0POV5ofSiJIFnamjRv2Z8eH+keDSec=;
	h=To:Subject:From:Message-Id:Date; b=FMpOSsVrLaSq/UMwDtUB/UlMkSpkHY6Yhq8yDmevr3HkYVzJ/wHK70vBtjQ4iuncIY66mjiP9ZvupCWyTPOgVCJbLOfgFMR7e/tdmbykGHXdP5dok9CQb9UtqGTDaLxTfiBJavrn1H9Lf2cYLAREOpMi5StpliV1VDj4uUggzWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdsJw7vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdsJw7vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B235EC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721415353;
	bh=jGgyp+chKhgYH0POV5ofSiJIFnamjRv2Z8eH+keDSec=;
	h=To:Subject:From:Date:From;
	b=pdsJw7vS8Gc1HGNQCqXQu9uYSEm9WBkLDk9E+/7zNwg3a+pNajXVRvA7RQmxek1O9
	 e4XlV0/nS70eLx1XQ1ik/dio/eLMW+DaPTv2lwvD12YT90arEbPYumgkuUo+zHD6hY
	 78R7CF/zz/dCuqEZRt5VKLbSV250lkGsnDMh3BlpOwV9y2Ok0QjbOtxHf6u9x4SANF
	 41d2PKDTZiw3OB3O6BEtax2T6te7hHQ47IgT9A3uUtyx+w0Q9FyTcVzPiPX3J5ZuJM
	 0LvYxJF/FjVvvGF0CV+EnEBUOGY/kdGwq1vxJdoDbRattycHgP0jw2VBk/p+HIEVjG
	 KJDEysuSHWu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A81C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141535360.20988.15044659530005704612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a71dcbddefef795e3159e225a0df68dcc14ba1ac94ed25e4d2effd7d1f2be0
Date: Fri, 19 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721415353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3641E23F429
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746767394; cv=none; b=CiAiYIn2u5zGs5mibY2tLyvB1LnYQH2Ja23HjnCuzPX3nLNdSO9yR8pWHQGDiVD2IRzbd2DTmZphQD6SO8Fii8oIhhoQ8cipUSc3pDhiF5ZSzX/EkWo8j3jbcJyrWF0nk2zLyVcDK9Yg4OoIcGSWG3B1LTM12APCaKcTuq7a0CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746767394; c=relaxed/simple;
	bh=wm+9NlWYYb3R4OHMA2Hs2gYiYnztH9Yp7CgWtADJEhc=;
	h=To:Subject:From:Message-Id:Date; b=jl6oYvoUpNrj3ta4+FC/X2noflZMl70f0r08xhfy3pmI2huCmLHWuPSIwsbH1OWsND4VWxXBdu0AARuWE33adK0zpaFkzHjacAAov91CQFfG/9rZvBriZ/FMYtvkhX8FKeXDKBhorv3S4OdZ+tWfl4/BamoOAtUHINraBGKqK88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGSjvqlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGSjvqlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4881C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746767393;
	bh=wm+9NlWYYb3R4OHMA2Hs2gYiYnztH9Yp7CgWtADJEhc=;
	h=To:Subject:From:Date:From;
	b=RGSjvqltBIdAkZMYljjq1GnJx+2DQT1WOjdjmCC0ShLsNngoYZn6j2uVLQfCZipmx
	 p3aCh7KGI+9Lp1EcVvbx7/OB1TCgLSV+yc72E4/p91kRhGpm/ebc/rB5qL27r3h/UV
	 ZXQvuK3i+M/NYnxlyVgmeI9ywEe0DkHCvzm2gR9/SbpCaSQBpGc7nPd2vE7qXAKKQF
	 f+xPtT0AWx1x+CECd46hDhnojF0sNDaZh3M7+RGhTKJ4AGTUZ0X6rIZgnrF6aSZxvd
	 suiFJh56RJy5K0FyOGc+NqqDB+HEP6OuDynzaTFyP7jqDnGVf9F9Axn3/7grOwPcGg
	 f87CCG2o7YhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FAC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676739358.19790.15781039821845133618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5238949e6295284f85fbe560b7b67b1f4c096510c7b1630db3fef4788b24c365
Date: Fri, 09 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746767393

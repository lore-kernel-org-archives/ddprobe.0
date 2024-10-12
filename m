Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306CC136330
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728730554; cv=none; b=N1ueZv1Ix41hIZjI496pwdg798BXnFOMevAt9NJQfk2trRWL3OuHfj3MCaCeMu/UvsEbM8arJPIUMFQHBUej56FKmbWKKr7DOF/xZ/+BOqZAoKP7OSS4BQ6QjjbMd8MhfP+jm6LtoRVij07CU0soOYoEBKop0EY06L78KolZYD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728730554; c=relaxed/simple;
	bh=E8vFAOoeS6vqcT8som9Wwj+Hhb39MnUa5xUPQMxRHiE=;
	h=To:Subject:From:Message-Id:Date; b=T0pyiR+lxmWzHVLHSvSljw1r+vf8Pn5FJ8Korpg90jQ88RfIqU0AkrTupGFqr6UlpLtGf0NADtmwvUwT0T/+EVaVVujr00S3EF+AyHvO9FTc0mUjHEISypvBaRxNKkdcDyrrg1fL87PTXkugLErmGQz3/1knLIli7rP0mrgVbtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0j+1/TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0j+1/TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703CC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728730553;
	bh=E8vFAOoeS6vqcT8som9Wwj+Hhb39MnUa5xUPQMxRHiE=;
	h=To:Subject:From:Date:From;
	b=I0j+1/TJg536bkXlzk+8/iecgqf0m/OZTEnNrOg/Y8j4eb0C4O/v9F/QlF0MbiT+4
	 7AqwFwUuePYtc5du4ka5b2dcqSiwZjIApLLW+Fmu+cSZUI2nL6GOZ3Qr9LhMXmPOSC
	 LUOfJx0LzqlLDBrhKm+HaW3yZ1Yd3Tu5bJL2JxeziwtqKu2cS4d7lkYdyoivCKrq9U
	 PcmyU4Gej3nO2onD9O/OC9dP06JhmuHWMnTVtZ8w/3WvPIhoyhzkTmJBD0ApaLTD8D
	 DPoKF5xLaqgAYsNEB0IpB538wzcJUUzyOh9Kq6cW+IiLGNAgE3tqjwILleD5B76o6A
	 Hj7NocRHfYfcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95213CF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873055358.19528.8868478191851475055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc0dc57ec5dea2601e58287512ee96986f3c02cda1098ccd96f192a4cf41aee
Date: Sat, 12 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728730553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D94B17BA6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761454194; cv=none; b=IekbJgTIlUTfh5OkjMCXVwiQxaaDAYsN1exGMA+9yhk/aZCWmHQz+Glq++cSy0jcCPEZnFB+O/jwbAoC/n1ap1mf9WXxnQfZtdlZxGiYm/vsGTzl2/ynNIj4Rtw4WK6xvgOjSHSSI6hjlSuXgO6fL80S9J3MICiF9ht/jBOlxk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761454194; c=relaxed/simple;
	bh=HEJeeP12MESEuvm+jqb3h3M/5bIcXB4flx/9fcpioXY=;
	h=To:Subject:From:Message-Id:Date; b=W8/9pRjroe8u2B9ea3FRTMKhzSFXGRSk9QqpsbNpWXJU4rgN5niPYWnp8UenNCd1CGkfb5hxqUpHChDiVeS7aW9jYnb9JBDfw0q82wRc90kXvaO5+ZN3I1BTo2PTPSNhZjQkUf2GI71v09Wj5/RFlTUKQI/W/Q+3Eoby9xOfeRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkJjhhLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkJjhhLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761454193;
	bh=HEJeeP12MESEuvm+jqb3h3M/5bIcXB4flx/9fcpioXY=;
	h=To:Subject:From:Date:From;
	b=CkJjhhLPuAecdAp9ZW36YkodrCCkOsuTGztJcDoG2CeoKTiUj1c7BcOUNOMcoKz9T
	 xa7i69OsepGIXd2vzQ94732ZE4dkJk9Co4t+BdYRFzBriIse149KttHmUdWwGYxrnk
	 14EznS/y2LgiOkG21bm4YUOHX7EiasWRtJIfWY6zTyC8TmInIav2X7rMCaMV1AjFQI
	 OkccPl06d5BoARZL0Txd7WDWMWqI3r5NbuPAfnA0wfM/6jjB2w/YkBNTdo7yqBbqNt
	 7peBd67VZbHTbQEt+JgadBNGJ+aZ4OiFQSnMtLwCn9OtFXQkQ9+n2cXVG7J8g9l/yJ
	 Wo5mziceBIBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145419359.20624.13297993325167596188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205809fd4710361be758f043f43a9cd7fcb530dd2462e22207bd273c47ecaed0
Date: Sun, 26 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761454193

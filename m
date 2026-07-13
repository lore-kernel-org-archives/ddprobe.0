Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68A1E5714
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783978714; cv=none; b=Rwd11osidjPQX96agJjFH4NriLh5qlwpvZPVxTcVmtj87gS7YRY2OhHU/rVnJ0zfsBYdsX+MbdwM7ccEhoVmIjirlngObsgh2Vkv3drNC5miCsXY+AvwF37hqNWL0XBlbbxJ+ZARN4ba0wHfnU451+nHgf51/i18MA4zr1IKIgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783978714; c=relaxed/simple;
	bh=awk6ma9QtvrSWIkX+26PMKFALXbhk1Kf6i8yhZdymNw=;
	h=To:Subject:From:Message-Id:Date; b=pC/Xrvo4o06Vu2vE3e/Z43FN3AtGwS8os3XnNV8IzdHOQLqAJk4pRH7xLDwpmSA5bOVa9s64V4mC9VyQfkkjaalwBvUQvX1a3k+F6D2g/T3qZ9ayDRk2xwzdQraACA9zrQrB8P5IQ59GojkMD7l7KhyHy+O35Y1BgFrWPkqw/24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6GZyYAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6GZyYAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC922C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783978713;
	bh=awk6ma9QtvrSWIkX+26PMKFALXbhk1Kf6i8yhZdymNw=;
	h=To:Subject:From:Date:From;
	b=T6GZyYAuMuOVsomeMJcjqgTaxTMTc8ofkvTOlxhuSoGBmBpliWy7q1635o0GIPwwm
	 BnrTgtz81HYR6ecGVhpxLPzH9842L2/APsQWKEEjAn0/nxh/D8rPhV+8AUyARCMIKx
	 UuytPlegtPEEFV6NLWSjXKP6ELxQH77VsBYZ0VpsIHZs+m64OqL1B7wiVbgmI+ZXv/
	 9c6TUBrxulMltFK+5tDNshkRk53G08K+8C10l8h/VCkbeLv/HmqIm75uwpmlqznoUJ
	 sOsa2BBPO7mOAru/UEQHb3kYD2nux2d49xwB+VpKCO/JKysJfjzTnmHnTtK37NqckF
	 RwQ/+OP83e3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9404C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397871368.12161.6770318971380783759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e41457743f510366a596acc014d6a602eacd92eeaf8b0b54cb808b4144fa02
Date: Mon, 13 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783978713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA8BA92D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722557754; cv=none; b=TLiIbTcWO7fnQR+yjEyirXOWsPaYemou9bz/xfWqC/AvjfCvJxh7FSgwUMbMA8Xr8MZQsjZFYfbuTjLaR3NPKAwYVV4+1pihlHL2CB3vu/CQ1XS1ixPf9cUIUKNKfmHNVVX12u6RpktyFue6ObmWmSilcSqh2ewwTT8OR65D/NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722557754; c=relaxed/simple;
	bh=NGPfOOKt56gMYhUswcCvuSK3rHqMaRbwKU/1+PNayig=;
	h=To:Subject:From:Message-Id:Date; b=bPR+7ohWqJKQSkyiRKnHVFCWJzedqZlNOXZAWTaczPkyxgQjv5I3q744LQ/rEEaiC479KoHa7wU2IIR2b9haQZsuq/4NdrZDpbKLCxM/YJf2jbrUJBoluklc9BD+pFmWepAYbSenVW4xwm1vjJxxMYD+t/bYcH3Wakbf6J15MoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAxx6v+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAxx6v+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3300C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722557753;
	bh=NGPfOOKt56gMYhUswcCvuSK3rHqMaRbwKU/1+PNayig=;
	h=To:Subject:From:Date:From;
	b=mAxx6v+kYLj95ChnPm5sL1orjSRX40FzAyprnhy0LWbqtTW5RR2+fWiaSblJeNUru
	 dibVHhZ7Mth4Tq0qSYK8sVzuDkufb7P62tJXXW/E25edzS6Kv6VWGx5U62kjO4ebh0
	 NCv7mRtw1QPclqcDIEbCLBOcJe1IVeP/DXOyxyCVdAvrnhmmXJpi/+hdafq237mSed
	 D7YkMCl2B4S3+0r/q/iwhnmOqo508L/IjNGNOgevTqFgAc32iSAuaT/nb/A9q7Erl6
	 tSr5K4A8+k2hdOekF4xAAyhDOL8cTwAqI7nFmT9vGWc52KmXlL9gmSANKV/ZjzGSj6
	 /9M8qrsaYtS8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4A9C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255775362.3872.12615160938811754224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71161db5d154ed043464b58bb45b0ac1f63ed5331d981fc3f113f75307ddb37b
Date: Fri, 02 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722557753

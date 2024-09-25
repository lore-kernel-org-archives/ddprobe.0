Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124B013D62F
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727247954; cv=none; b=h/CcROkDXQNxV7f5lAg1WKx2GmB0xA1JgXpY5J77Rd1rk0YUBuuN03gkh+SvJ5RxI4l+1oJT7KaMdec/9gvzEvP+EZ2EPOa+C6i6pUbOX+YD7Lbvql9XucwVOR4k9EaTVYBrSvJH5tiu0ja8gPt7fvZd3umvlV3oQ0IuTW96J1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727247954; c=relaxed/simple;
	bh=jepnuKsX7aciCHx3w/iRiBBW3gIksMKHEBxJ5lScumw=;
	h=To:Subject:From:Message-Id:Date; b=NVd/v6Oe2ueKwx4nFYMwqPOXxUnmIpNRWYomrIagNbHFUy/mFls/BpBVAedUoXtSf2PNGOo/8P7JCfGwWIuflGh/yxtoGazvBM8fH4ZvPpn0APIiZsLf5ARzsdN5KHUc46VRoIWy9+AjQf34VaE5BKTh61mFgFO4hGsZB8/MsH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVDT5z5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVDT5z5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BCC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727247953;
	bh=jepnuKsX7aciCHx3w/iRiBBW3gIksMKHEBxJ5lScumw=;
	h=To:Subject:From:Date:From;
	b=RVDT5z5bHnUhlKIgv7Qwkc+ctGBuzWtNicx9/rY1+vnrBtHvJW/PgGFhRrmy5QFZ5
	 sMEThVzRXZKJhRRhz5KdMcSLNR+k9wg6bzZLejYDTP4l085BaXIjgkk3IyqWMrODwF
	 IyNg5tBwZEjrExLJ4WwCDj9BDZ7wcQc++am+rwhcvgshycq3M2BI3zONRpJ3SCucf8
	 78PLNDt8sZtGe3cKzsSPnGleQxGDS4B4VIaOZxUewhoOurNVlUQo5KcFJaYpu2mOdg
	 LxbEwObG6BX3Qirc+APz6lX7haJYzW794K1+yQ9ZZX15PiYKELNIAmhrbBSkjTaCP3
	 u0glDRYmlbOUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB00C369A0
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724795358.24458.9749854001320597287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cbcbb50ea06d7692c92b156a848191e7b72eec884e8aecfe5cfabd98f0dd30
Date: Wed, 25 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727247953

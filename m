Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF1C4431
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747696794; cv=none; b=Jj1ce8f3Sk/hyJOQURe651/28sUIqRE8Bhib6eU+jiDvRd18R+hX+xboUgwtYVGDIcBGJzB+/tE+71IDlerjUL3jUQYa5VsVnQSBgd4IfgxId80ezVd2o30YkZXhCZevp4O6rcbTMEEV498NZqqP+R0XkBquupc/sC3DLpLTh0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747696794; c=relaxed/simple;
	bh=8fUwD6nVLklcQ/Ky/V26ElRbJNRu/+MYe2Ng8PHL2B8=;
	h=To:Subject:From:Message-Id:Date; b=Tuv51OY+Jd8QI4VEneiNEolEPaA17EHmlJ/MW38Euaz981SN6flb+4Ltya6D9tvB63wlBwnWruRQgEBnpCqVOsYZ21u5iRieIBPwQfKeFgtJ434Pdv+WJ2+oHpADTf3LyvudIcYbsjN2t1hiJMmagdhfXjmc3HijQQm1slEIkPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HshlVv4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HshlVv4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747696793;
	bh=8fUwD6nVLklcQ/Ky/V26ElRbJNRu/+MYe2Ng8PHL2B8=;
	h=To:Subject:From:Date:From;
	b=HshlVv4Gq4REtsae6tRzHzparlDyLHmVcBqIoCYKAA5wUcmC8AIDk5HG+JCIaLRnp
	 KeqoG+aMtTqs+hZuGjE8JRSLfRjEdB62Inf6Dw75xx0ceNndOqLQXt8v9vzN7KyAuW
	 gIJBA+qTgpd6vSRqQiqb0fJoplkdA2bR04AnpHxO0nkbjHefoGRz6mncU2tq0Ztdnx
	 72y2D1xV4jkzmQsqtjdJEOtRUDkw4tqndvK4DFQWp15mBAUY97OAgkpZhk6+u+XNw4
	 yEuPzXONn4BO+cSqX57kjYszzVHMWO+SLqVHrD8peHysh2/nn6bAz+YYZiJwc29qwV
	 IYo26U3sFs6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FFC54756
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769679357.4025.14418078146444550901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be863e7d49ec2b74bbaad81922827ad15da753e2c0d629a8ef8fad79e23e842
Date: Mon, 19 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747696793

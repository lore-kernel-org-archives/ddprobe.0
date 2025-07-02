Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4971C84D7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751434194; cv=none; b=mON5dxeqO5JXiE6fLEYkCNJkc065UuXyRwESu4b4RH44GtRgfwHTKkjakruE+THSeL0EeKJwpptkpFg+/shpO8jlQJqXIIQHrK26/bDrNnilpav6P5c0O5dYDg6JCj1jwYbXtDJsq5b24oPxt0tEFGfc1lexSdxn8v6dIVaT2I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751434194; c=relaxed/simple;
	bh=aqd4aR8Bn9P+OZlG/7bnxKZxv26AJLwk2SwbvrHPf/Y=;
	h=To:Subject:From:Message-Id:Date; b=syR5dgxpD+oeLHZR8T/Xc7BnOaij1FWrucahPLg+obhfszOVOzZrkZcbA5IN1F3LGVIy/hv6zO6s8PE8kp6+10YCUdEy1+rloo0onT0qorFIC0ajkD6cKirBXHqjPNpaQU+ooBYI9mit+oI4jCE8Hb6jlks8USNBNtDT5Cv8ohE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzhez5jW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzhez5jW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2728C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751434193;
	bh=aqd4aR8Bn9P+OZlG/7bnxKZxv26AJLwk2SwbvrHPf/Y=;
	h=To:Subject:From:Date:From;
	b=Mzhez5jWNg4kPZ8ShM35BKlbY/U1YnK7ECys0sMdfpJvrAEIpXdE/Xh64hJRARzFx
	 I2wXFwc0l8ZKh1qHjGR+3gqhJ7bDAw6wxETezfCY0Ye8HSxLJYt9gckMl/WLTXx/aB
	 t+OJpH4Ll/l5oVgTDUVN0zc8LYsjxXTfiQCbOrASDgttZECO6JDgO9zlQsMLkLd6C+
	 oEtzr1Ccf61DFiRJ6E34RruyeW4rNIHXgXMdU8Sc4dXS97H7jldoSaIhoI2iMRaDN/
	 06d+uaMw78aJPA6efN2aj6SEhUJdB4Sn05C/1buqdnQcxKtr1Fgq1eR6QShZQEJHxZ
	 EKcbFukIdxsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F874C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143419358.6550.14196713062600849792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1657f4380ff1287ebd1e29b9b631a2325caafcc7f49cc6785435881d18be34
Date: Wed, 02 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751434193

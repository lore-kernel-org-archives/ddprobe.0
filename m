Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9BB29BDBB
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785587434; cv=none; b=lELQaLNCD7Mw3dgt/Ikn1lnqnslRFdx1v2WXrzrciIzsT8Oy33eoLvTZVNFX/3QIK9KSngyY4XhL5tOKGs7yq8oM1P2+T0YsNSy0W/HWbIdQsvrwb7RKKn9VFVZBWAAocz8a/bbHW+u2I9Nr6EiqhHrv9XOTQaKespwf0zQ10bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785587434; c=relaxed/simple;
	bh=njYe75uFKDTXLOqVprmo5pkH0gMTU9wdOL5IguUEDeA=;
	h=To:Subject:From:Message-Id:Date; b=V6Sx1GlZD9WUlzY405UdEdf3LYpZVM1PNSMxzy1XbZTsZylinACIQGGgfqVoBKg42zqasVdGlCrGtQ42x5hydPJzIndITBgz43jMg3FvkAUa06DVS/8fjOOQH38GGn1/9ce+D6tnw76sdj74pnO6tVJybjbKuR+8DT7BbUKwOU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEjkBP/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEjkBP/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAB1C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785587433;
	bh=njYe75uFKDTXLOqVprmo5pkH0gMTU9wdOL5IguUEDeA=;
	h=To:Subject:From:Date:From;
	b=GEjkBP/s8FsKzwomlx9EYBvbU6CzqMwIOYmNAmu6srKtEDPfeRayI1Fk64BK98yO2
	 doG+fMtpMrIwBoO3NAKA/SEizItvF5abWNU2IZ/wMfw08Y6xUsD16ZUw8HclK+F5Z9
	 pcrSeutfDH/uOTQK+vz8bZCEkF9Pxpy7zVcCpuF33jqjF9gOkywbLzU+z32m+dt25Y
	 9hWCWXJ48DeAjtciZf/zgqE8Y+5DjrIF/hx3REGloQz9SF+RZ2lfjD9BPoHHs9wNEc
	 ubrW+yrJ1Yg4OoMvEH3Wn6gBQx6REJDW7k544Oa6NVAQIueGBglTo9q2iZhwC6ZlI/
	 a8TwSX2xSeGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB65EC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558743375.27325.7908625294194021201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335637d4e71e6b3164ecf54a96267831308c71407b686478c7ba68f075523053
Date: Sat, 01 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785587433

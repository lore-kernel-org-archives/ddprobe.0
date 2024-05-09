Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557292BB12
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715217743; cv=none; b=WkLRU4Mn9MWWpC+uF1XbV+zSjizHyy1KKpOjXf9y9W3gFfLw2JcpvHT+xEJz1aIttAaUI/1Qg9RqcgLbeeUDe1J4IowkesAy0ZjwzqGfddRPb5k+SJl1+FvAn3kp9i90STgDV9eTgoapWkA4G/tWP31TVcvj++jssc9j6hjMvwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715217743; c=relaxed/simple;
	bh=kLWqDcMTK925eP6/fH5Ei+ABCXx/QnrL9xGt+hVbR0M=;
	h=To:Subject:From:Message-Id:Date; b=LkHf1sxBz3NGq6dtYlDXm7Qf53p+V0ZoswzPHZIHTK+6q3ASCeHgIkZO1ReypI4a40ZJkRteZQcmtc/gjXrKEXSSKC9TEG0G/LkdqEZmmulnqTCqiWs1C0917AlkrWSj5ftKutC1/y/O6ojJngWkMb7jqWzA2e4xbK4Y0+FaZDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fh8zuAx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fh8zuAx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADE7C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715217742;
	bh=kLWqDcMTK925eP6/fH5Ei+ABCXx/QnrL9xGt+hVbR0M=;
	h=To:Subject:From:Date:From;
	b=Fh8zuAx77Sl27apVflCn1XYot1vU5Ekv4VlEpEWCVppFZyB2w8B4OHfXj91X+pcO5
	 SPah2PlwElM4bhDV5sM97mtv/ejQcfStdfgH4Ik0j9n41JAMV6lffavtsE/JZsBd5m
	 zIXKArQh5B08VCANcLGSmx67BQg75YZ7SACkFPVWQCKfD7x5AiuJfRgY9ydKJ3zePg
	 XHiU9VZb90detXIuM7uGIKJPx8xhncv5uaDfjJ7s/jfzPzNuom5daOLoIehsbz0VrA
	 kpDgHKBvxC5U/Ng2oZoRTLXjnlXW5PT2THcTxAl+EmKaOVDJmCcTCVZ4lh47xBI/1R
	 OI0KnotFa/v5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2001C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521774277.24726.9646251826661419846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db990d3dff973fd1a42840eb01bc5ac9509c6b1d80c3749cdb5d0b1192ffe1c6
Date: Thu, 09 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715217742

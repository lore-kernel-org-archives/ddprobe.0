Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243C328136F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770246234; cv=none; b=Y63LSlkvmWZOKtfflYEXpGofX1+8I4NKSGwxudqTgswmo1LDD/GFxWbwBa7PeYc9FgXlil9QIWFgSdrDI00z4CTXdNrMEvsp9aypX1vpqK71ZO5Xc5Flpae66IEeJJeHlu4jbbK3kShfbMI35fiqR1XsTXqv6ZcPSZQtpq5xmdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770246234; c=relaxed/simple;
	bh=NZ5z/i9S6+/pGU3EKJrQtUZJNbx+71aoczuCyoRXmYY=;
	h=To:Subject:From:Message-Id:Date; b=OvJ8NNeElgsjJNHff0uE0wrE9Qzb1d0zKQfPOtawMjCWosGusKpLTB1p2X4cAgP0hAs+OZpF2LUahPbqwat71I+pEh9n/Xp2RMRNpoCqIBbwzTdCjmfIdpY5KxJpSV6M5/Q71ettqD1w55ggKArWyaZm2iFvzDQ3mOrUFMbm4/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD8FhGTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD8FhGTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB388C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770246233;
	bh=NZ5z/i9S6+/pGU3EKJrQtUZJNbx+71aoczuCyoRXmYY=;
	h=To:Subject:From:Date:From;
	b=hD8FhGTTjYcricldDlvLwybe5lIaUtGecIA2zod9YBXZzunLg/XgG5NjLLdQ/rbLS
	 8ioGmcmag3fJxFaUQxfJx5EEXdr9vLH+fhVSEK/4788NaxbPTuGUsI+J3WYSPa+rth
	 LGJRQXrFkH/xExK+7uEI8jlP5AwmvJiA2RqW0nX/8+g8XJWsWJCs9tZNDFwT4G3FNp
	 ZQnUILo+VzWOlUKbh4pjtqjlWcIVPMSq3Hcdh0vzIoTdqZ0tVBwkCpC2lJ4813HsMp
	 rwJb9tAgsmgUPJfHWDeEBU61FyoBxj2DiO00xwnXA+Yr3Rrdf5c14XPZZOWgkr5bZb
	 sfJ5+xbXs8oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994FFEA794B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024623361.22773.136517903626263167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c2416584a119e7ad4d3efc1264dcec2256eeeef73adb178f90dae6395080b9
Date: Wed, 04 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770246233

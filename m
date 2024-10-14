Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A029A0
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728926756; cv=none; b=Y0+TVDuxorRmSffYk8hTXVX4JHN1FN2KraL4Z6S+MohcMLg8SBT674wzdh/yr7uHxD+l58UvosG4OVXK2xSeqOeTZBDlTEI2z3513KdzNwbsU072DV4I365RUBwlvoWN0ggDGMyx0V/Ludl1TFMe24pKQIlJnrUdnh6vsP7scno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728926756; c=relaxed/simple;
	bh=L4JtJynmIleUz9ZDGkWyBlBLEOUzaxWBIMYpMBE1Q+M=;
	h=To:Subject:From:Message-Id:Date; b=GznCOqFZzgDpn6ZxbNKAAZYsq+tmrMNl2Eo9bdQBT8IuPSsDE1/z8WLoFey6sxsnKLsqkRpzh3P3EJ1+zlODwEVxnFmgXbXjlYC+p7FA+Hv8aIF0FwKGVTRVAUDxwLou859dywcwrlQobSFX7kCmvMXAhrlQ/kyAFhWF6CGM1j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EehoKu/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EehoKu/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4992C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728926753;
	bh=L4JtJynmIleUz9ZDGkWyBlBLEOUzaxWBIMYpMBE1Q+M=;
	h=To:Subject:From:Date:From;
	b=EehoKu/fdPJUetj4lvKjl63EL9epxgG00ACbJlL7imQB/Gd7b1hcKEUnPimwKetdP
	 31vyGINs9NkMISfsHD4N2jFWzdpUzPx7Ca7rvYckB46KCg6QfpUrBmXxD2dZeFj1Fn
	 Gc7j7yO6X+3uVhW/rX4GJvB4DHqEev/DrHw2cQbAxCo+/kGPHR9gJjLCb9ysj7zqRY
	 jpfpq+DuJiDu9n6IOkJiWhB0EI86kgtEOaAbQqAdj205gwXo1SsN4GDN0/AlLS3Hq+
	 qqWkbJeio7Pu+xWRM5sjdkQT0IHXcH/9jKAKe1nlXxKNmzbvAZHZT35a0YiyN3b03X
	 Ch1OEz1qWEzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EBD18135
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892675359.1693.12009170646323463789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decacca0e2a1dc730cd61e50b163249163139abf8290cdbd22375b4922fc96f3
Date: Mon, 14 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728926753

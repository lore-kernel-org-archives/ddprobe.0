Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1920D14D719
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774761894; cv=none; b=AovAO5MRFbulX31uGigDGKuAxFcVXD4Rzkn7HjzLh/zUxeilI84d/XqsMtyzlvdRFWkApHq3Xh8YZc4FUqB/j/0babg+8rIJAqVegeIyReqd1C1jKwDTOKPk/jqcU/s6tc0Ljsdj0qr2yaplFA9Y4/WnEuQypbma7EoZEmPvpXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774761894; c=relaxed/simple;
	bh=k0KK8tXPuQHr9SF92w8rxAbDkH+rp896Sqt1LsXB9Tg=;
	h=To:Subject:From:Message-Id:Date; b=b92ESsAOm2dKDHzhapxlZzGhuyAjEwVyu1JkfUKIIXXOZNGIYtrWrw6e4IACLY3Syi5cbjJVlUZnn0Ay2G50EmsFmvcOUAvmIoc8F6P9YALQ9uzn9cxLf7hPbskRZxobv6vQQsoQUvkIoUEkiaTL558/uE/4u2Y/DDpKd33r9J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6RQzWGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6RQzWGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774761893;
	bh=k0KK8tXPuQHr9SF92w8rxAbDkH+rp896Sqt1LsXB9Tg=;
	h=To:Subject:From:Date:From;
	b=Z6RQzWGBISvUtn7BWWexxroMdtQLxDRnI4q+3oJks+QOqk54LoeN1KIMutQo7X1Fw
	 uiUgEoYitd4gMV61pbMZK4J0PpC4li8vYatyj4/cq+hbnbT4qmjpL8ckKSu2HbzPcO
	 uOz42lx04iPcY9MFSq2JRVq2bWbncHsrNqkA1oPsl2ODOgM6k5LDfIII9IoczFvPBS
	 jtl16MspwTkR3vt2oktPOzq/NjStLXObnUVUxspTHUi8BazbNUu5IaRFw30Z4hvVXi
	 OsFEfP7wuwPXFe3D07yEtJY3PdeHLd42abFpO9ckVcMC1pCVOGax12xOYBcliqziNo
	 aq0BPENzH+80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA4F3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476189358.4549.12216090700312230266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a37d91cc1b72258e3e3fa370ada940153c5ce1c26db013c75318150ee8c85f
Date: Sun, 29 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774761893

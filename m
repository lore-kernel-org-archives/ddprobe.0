Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5A8289E12
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746629394; cv=none; b=Cq5PbzcwM03ETeBCSu3ONk2qLdP3bb/3xip7LY8dKrxBGPCe4bQFi25pYpzlBaHoS5WF4266l2xL51cThunCGMVQF5Hcs4RgwFQmqV+MoJJgM9ZCOiK0fHSOv1FMqNB1FgAWT9Sa3JQ9lGjqIXy7SCwOWZ7i5T+iI3qO0MJO9/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746629394; c=relaxed/simple;
	bh=5ggJBmeuf8fd9O15aVGGUyWGxhUOnxmVyVzo6IrgpWA=;
	h=To:Subject:From:Message-Id:Date; b=Ax/IpQmiGGjngtTn/jsJsI8bdHfEJpVaI3M2yhyX4mIjaiFq+HvHVtzmQB3lXVq4COlJS+2xxTc40EPwY6cwUZN9Dmdf6R/Nn9UcthSqqNrtrgsrp/eCTvtUQUN1UMYK9xpt/QPgrgiHpBqo/98fR3VlPGe9+1AjdWvwvq6LSCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJLgTFDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJLgTFDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746629393;
	bh=5ggJBmeuf8fd9O15aVGGUyWGxhUOnxmVyVzo6IrgpWA=;
	h=To:Subject:From:Date:From;
	b=oJLgTFDecf8Pp02BUpOTxnYuIuP+NBK9Mo+jmAadyhSsTgFlZX2u3/eF5SOxFnpNG
	 SjqVRx+32NKUoqggcC34I6flYmStGHtDwasSJZYd5ZcFN+gFXGURcF8LkQxWi0W0ir
	 jGsJS8Mej59qZNPL8Q4ylL+oDwrBq/p2XIaaxIzi2qtm5IwsOD2WV3MQ8vt/h12JRy
	 cMPUd7Ku9Zq6hZjk5G0aeYEJUwdLhavNNFK7CzJZAZF/Ia57VtpukMc/hyiqFKmhWy
	 ZHLSjkcVNm4z0RanzE/qnduAWhKfoGN3DDlwoS2te51m1DL/CwHiPZM9BAWJp2IQVe
	 JmCbgAbgjDVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BFC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662939357.2590.5325478125635204098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e8938286187373bf2f18ff345d3d551cc665195942e95764dc7cae3962dc26
Date: Wed, 07 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746629393

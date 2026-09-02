Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C33AA1BA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788339634; cv=none; b=oayBJIudDN2L0T/VBDMvuHllJst2ZBoRj4Df+Wh1mJ7lEt025Qpt3jkXmT4w2B34MoqpaDgVcEbroo1LettHuTmvbKwOPNGo7rN0Pd3ULCWBAvLZ2XuwKCy2NAebXPPl+9EXglTMsHZ53DrPNuR/diJUmzPxc8fwcmSXDRrR+04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788339634; c=relaxed/simple;
	bh=oZ9yYwJ6wQMVBXVDdICktjMUNtgsMH9eAdSgqI34OnI=;
	h=To:Subject:From:Message-Id:Date; b=d12NTCxIuBDpB53TiRXKI+ajw1spDrkj11QFJ8IredEQ8/UsZYls43I5bNxtzrKz0+/TXASwPC16kKPj7djEydY3jfDLjhn8E7M+6psN+C+oOEN9bDNkEF4qnUI+oyk91L+LvYKseP/XPXyrszcNOdASZ2cPNPrO/ywV92AHRIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShEcjek6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShEcjek6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED46C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788339633;
	bh=oZ9yYwJ6wQMVBXVDdICktjMUNtgsMH9eAdSgqI34OnI=;
	h=To:Subject:From:Date:From;
	b=ShEcjek6GGmooAU0bRAdshruNUde7haZcQqg+rSd1HIK0bADO+k3A7n5Lf3vFkPic
	 HpXVD1mQ3+KRFuP9wfUFXCEI1RiPG6sb0Id9LsvNzFxmy+5q5dYQZ7aqFgppsVc7D7
	 01AVu+VBuEhN9XsdRJNp96THYnxq/q6NxSIYmA2pqoE2eCkeR2Uz/aWYMmo0ksObJs
	 SJO8MwfykkxhRarBhsw/JfeWwTRdKFAvA1zHdPCPigRkRFM3QU5LY0PS+hGKxSNf0W
	 QFj/hXhGMA1v3IOo4jRJmNGGGYeEClXuJj0B8iCc9C/8msYIJdvvDJqm2BEfnjqGo5
	 qMOJfJZ5JnijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD49C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833963368.10470.5371734368354950621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8926d98cb1bd1942d9b11e10518048a66c7168d9f6fa93e86461b568850c049
Date: Wed, 02 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788339633

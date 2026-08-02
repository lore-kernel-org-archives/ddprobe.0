Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9205335C6A6
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785705034; cv=none; b=epL+NglchyIZVVNQslkGJbvYUS5NNQeVgXoJI1njQsQxNrIw7KydDaazr+fd2zE60kWFkfsq1MQvSkVwMJ/ksEqKiJnXdUzymdeJFVNOyTlMgdM1tEt/HsF6PvAfzu1yTZ20J+iARGTBEo6ZyPmqyH9u/ojalaTmew4SZXrSUPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785705034; c=relaxed/simple;
	bh=yvj71PBB8m6y7AF93h+QG/aW+InDDz/gUF+PnEVJ7xw=;
	h=To:Subject:From:Message-Id:Date; b=iODZf5FQetWFrTfUN0+FWTcyGt49uXBIQhaQezOlVXap/Pw5jd3JAM0V/zuWFXnVmgXGAazF58ci4Le7Uj3iuHEQ3dtOnh/r6QWOP3G033FfkjCRuDgha8T8Yjzi7ig15kV+QosmP4xZ9Z4wOYJHu+R2njjtlqOcKcqqwf9GCcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhAA6ynW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhAA6ynW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF793C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785705033;
	bh=yvj71PBB8m6y7AF93h+QG/aW+InDDz/gUF+PnEVJ7xw=;
	h=To:Subject:From:Date:From;
	b=FhAA6ynWDaDV0NEEHYHQNTMHGMhHMf1K9dsux9z73RyYib53X/9KFnKwB9/D463Pi
	 NQlAgYtgTp333sm29fM/d1k7lC9BDwpWN5hLdu2lMIcECfn4OKLEoTmrus33m0Od4p
	 12Tg8raV+iuHNcxvvcmPD4VCBSxZtfLzm0i3gdCpPcQRjznVWOsMNrLm8H57bAwCSz
	 nIdGUvGFMuXGpZ1BDEJeaox6KAqL3DVgHgBqGgALmxYws+DE+ZmVCMlJPyyblCntSs
	 47/72JVQ1xSADovUU3XRok1omUCP9NMTlNyPy44hHL/yaC0kp6QAOmjR0SFRqa5NSr
	 36kEf92xofdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE37DC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570503368.9363.1385000954579835750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84d25d828a946f1d9c91a7d0f8e638747faf843e78d095821b23b684bc8536b
Date: Sun, 02 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785705033

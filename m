Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F231D8DFB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769412834; cv=none; b=CNCHLYN6gwl/LdQMEciOLCjVX1DoKrwdrSpaMogHibMneu157Zcjxtd2ijs8+OJn/+M9KyO5WcU0CvEnS9lfSL7RVjObfwgRfGZh4Ey7LKHHVXZNgIiBVp2hORPpe7BPdk2spUqpsAKn/ZHDbbn3FPPxd54V2kl2K/fMEhZUfjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769412834; c=relaxed/simple;
	bh=58HUewLQZpZ7VWGdK+0tCsqxJaALw2LvceBSukBbVlM=;
	h=To:Subject:From:Message-Id:Date; b=LK96i4UpoiM0KaEHaY1DJxG/eXQrfP3BGSQ6qOQT43ShwJTrH06fhdXcmXtfMzlrNn+tqoI+wQHf11Fmda8i4z1jH4UczBdP6oNcrVrvF1UKok2IPiATmRsEDJPxGtp1W79JvAaZrpVH19cgsdaL9D49JnqikvsRXw4himPyRuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH59z4uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH59z4uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6323C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769412833;
	bh=58HUewLQZpZ7VWGdK+0tCsqxJaALw2LvceBSukBbVlM=;
	h=To:Subject:From:Date:From;
	b=rH59z4uFXrZhVZKiktaO2oyh5VFynIH+yVdVDBhUbJ6ExHITeUHxUFsuiL7jMIXXJ
	 f9sge+9dHRMEqfPfArA37vtdtmHs2i6VvBZivAdzRFEU1tJ9l1nbuB+olSUmuyZAmo
	 0cbko8DhoSQMNoCrvwrWBskU7LVaiMmlDkVuT6sGoI8w7wSB/PJ8yCH8XUUKAmAx8w
	 9yFdSzWDZ1TDvfKOa77OLeV9t2H8puDMsvYBYCwQ2vQcWR37h/3+qbrMoI4bmXNDO8
	 MCbn2mPHgNyW94QFr480mw1VtOnURBgRCMRcWLSX6Yd2UjwSGZPvIahXP/opEyASZ9
	 aBcVsswE44CKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946CDC88E5A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941283359.1752.17041690138558291589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79460921e6ddd30d2e0760f66d7a4274af1802d167186c73a4498015c55bfd8
Date: Mon, 26 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769412833

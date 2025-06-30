Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208AF18CC1C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751257194; cv=none; b=OhyfIzT3RHhyYxptjD1dbF9mRREueBpiQtNPyPj0dPzBvOBf5cgSkXm5zm61Sc7TsbaA0t1ikwWBoaUDFVRAbMXJlVerawbo76UPVpkTz3xatCarrR9AikzJHPhv2NxqiwIvvLWUtTuq2CMq0Qp7OwOjeRh0A8oXmFEBpc0ZszA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751257194; c=relaxed/simple;
	bh=w3uwVZrfth/nnTOAWuvIxAo4WySb5FK/wYjHN1U5IKQ=;
	h=To:Subject:From:Message-Id:Date; b=hGyTljuvduVbJlYx200TKn/u1347PPA/1UxjPtjv9GJr/154B0qQAOpf4QiVZUTRvtUrpWYUW5icgfaOcOawjVoyOLJEp5xU++tYDZjdVEacPnywPe5yuyp1FhEEYpN4ZD2uT2UfLEoH5bhARq2ElBVsvpG0Ys0wSycn8fPNrm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZhpaGZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZhpaGZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D56C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751257193;
	bh=w3uwVZrfth/nnTOAWuvIxAo4WySb5FK/wYjHN1U5IKQ=;
	h=To:Subject:From:Date:From;
	b=PZhpaGZT5lS51z/8JcEg/mBKqHSr4o/8hka3Cj4y1bHSK4oYLmHb4jqgp6rb1GABB
	 7IWO5dRV8l2RMEJZ8+g+pbj18qReYadtW+CH9aQHsXS/DD58nVgCg5sel8m30YkQE9
	 S4qDqZOfrRq3m/sknbwVxy6bG7mAULEuuBPP4OmRO+qCUFvb8KHdZt3buN4CNTvlSj
	 J8ANgSd6EHEsSP9DdovHSXqhqVMjejM/+B0DLMLhEAdjGdmyBzr1E+sTfydkw1V2Nf
	 NZWBxVUrhUE2R3b1T8jU3EzV8H/NqRgRmTkdf8qLGzKe0Jj0VLeusEo+UIRfjMNt6w
	 z43IVQkZLpZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EBC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125719358.6835.2102494487989942371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceeb2d429902544c69e7e3ef63e992759f493beff70b45faf9d42f69457747c
Date: Mon, 30 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751257193

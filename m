Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AD61C2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723172754; cv=none; b=jumePJoSlQMxtyGPvEhdfGsncwhc9ZzppDTFpVeI4U+N1uwsDpfUfsQxY9lPFHAINyeHScZWeYPJCg1jIfefQmELBTZksZ7drXtMdCdKBfHD8yYzHKYNK4yuAgRfHaUaUQCL9ARIGUk0RQWxTZk8xfGF1zZkX/oqBua5WJ65HGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723172754; c=relaxed/simple;
	bh=E6Bhr7VWn4r1UzGPYSWmTOaJdIk8BzWcDtxchR/SS+c=;
	h=To:Subject:From:Message-Id:Date; b=XxnZNZXQFIC4Q7cDLtjeEGZhd12xiwvuKFCMv9TXgU8SC0MqR+BfGpDA0dTTPQL2mN8nglA9iOlBHxY7xkM527SJWyVoMaw0TD1O+XvqB5GQIeyVfj/U8///8gBQBpqVF+yrWyGv0OABq5DAvQBUIb1vIQwQK03dusJCwxQtYTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7x5WsBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7x5WsBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E8C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723172753;
	bh=E6Bhr7VWn4r1UzGPYSWmTOaJdIk8BzWcDtxchR/SS+c=;
	h=To:Subject:From:Date:From;
	b=C7x5WsBbMGR2YMpsK3KPEvtZkpsjNMuWlxbAp3mCzc+0GdZT84Bv8SeEYuJ7OYE4a
	 dgVNDS6GP9DQ5opNJABvHaHDY+7SCTGGCB0cMTciyd0DEs2d8/dg744QDh4ZwhlkYO
	 VslYSS9xysZoo579JmkFsFOfTKLFzzYgGBOqAGfR+KblqhwDrtXj0hua5nrEmbPNvC
	 05IFB20JAgsSwJphFPCFwfAt/iF0FxQVtZNzPimRfSxc2NmAEWooz/gukoFNIeSa30
	 Ha7syM8ag6BOyAqYJ88s4B8eWwv6ynhmhoW24c4PeABw9FYEL+PKE349BKHnt+xNBy
	 brOH1KQt/r99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B85FC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317275360.18407.13656319643858160656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b371813c333a08d99f13e100ecdb8bc4a0cafdfc3ef9bd52acdf981eed2e5b
Date: Fri, 09 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723172753

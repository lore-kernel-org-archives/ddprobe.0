Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520662AD33
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713639023; cv=none; b=M/prLmIeYWxj6CNR+z05p9lAqwiEXuTdEK6tsm8BsFeim6vOmN8QuZID5QHfLNmQWtLL1e5irPzN6TKnHP7QqXv+mmvgwSfZc6rgXAfN2tWzBAEKwUTlxMLRZbPPtURlsdk1bA6mgaf8koUD11FGP0VGAm+CUn9DdS70AvepBTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713639023; c=relaxed/simple;
	bh=xaubEp+aJq+tK0d58hCWEFcA3vMr7bZJV6if0KoTBSM=;
	h=To:Subject:From:Message-Id:Date; b=cdji3Pjselrz2I8N61PlZ03v8b+FT47/dtqeGVRADc9bPzpvwOxnCSQWGRd3hUegU68V0YjvR2xoOwf95i6z0ySz/DGkBWvHqHLztEO4xruSrSDKo/U0YFi1OX1brFanoyHBLmTIiCRtGEP2t2ksaCbg4VecLwIggtlmuvs4nrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK+Xg0WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK+Xg0WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C9DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713639022;
	bh=xaubEp+aJq+tK0d58hCWEFcA3vMr7bZJV6if0KoTBSM=;
	h=To:Subject:From:Date:From;
	b=SK+Xg0WXnG4fY0g537j31Fh5J+6/kyFKIdqNdqvDsFs1+/MO7BfqDhMAPMR9HZUH1
	 q0ZRbyLaLwHEQ7QuADtBiGF6hh98Z4/MswZv+NyFRC0DdsrarEj/aZkvb/TTQpaRrL
	 Wr65hWCWgTklaa0JMSgxexb6Z5yaV+7pf/FFdJ3dRw+O/QkhLqVrHDCORX7MVT+b0T
	 8ZkT9j/Hgio9u8sMyoWM8H9xCcsLgBHvQZkjh4tbFy7NJzaCT8TRUgnBDigDWxgvJ6
	 ExwhAfbu0rUjA8b0XH8NlZn878MMHCIo6cCqJclf1dRviAlgAZqiMyAicB3kiW3muB
	 UflSfZsXerl5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB124C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363902277.20689.7005705649184946222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8848ac34d35ee4584bd52248fc2536f02106254145a9f80eabad2b7083f0b002
Date: Sat, 20 Apr 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713639022

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACBF48987C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785538234; cv=none; b=V4UA6wLikbvdT2BrNqIuVTNIUYYmT+ZIlgvdxhwVIG6zyUxOO2F8sRL6j5z3jmXdv0J5GQyLEQOvY3/4o7orLaD7RS+XEiBA1vobO3o4dduwXtirSEY05rkbWqjU9dgV1BQytr2SkZ0xEGODtYT1F3WVJ4VvOKsgQpTsrQyZtx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785538234; c=relaxed/simple;
	bh=S3xjI5aBgNcMSY2k2RipzLrYmJMhQOYW1Ojh+ge3BBk=;
	h=To:Subject:From:Message-Id:Date; b=aUTP4pD5lH3YFgNj+tbUeud5J+qS3iBu/NLJTt1E1cRNCkPE+BOJnCqDmWwY+FlEnyDVLv2y7IQis/YZ7X7JrgbkJLPMn2mCYhWvOqxLsxxhwsXBEIKsMZRKZZ+qvsfdZHMOe3Q94BVl5q9P7CoDzm3QKdKFpfqY2SZkMsQV3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNM3JF/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNM3JF/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DB0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785538233;
	bh=S3xjI5aBgNcMSY2k2RipzLrYmJMhQOYW1Ojh+ge3BBk=;
	h=To:Subject:From:Date:From;
	b=XNM3JF/5iUbrZrbfX9to/CGz40jo4ZYUvSDN6808i4SnMwBSMWjTB0uh31DVGFrbs
	 AyxdO/mkMgZGxGaycA/h6Hvv8DLZHQbk4cTHRarzi4XxCR0f6xWgg3kyE86WABfMHU
	 s4cz4Z0ZHWiPJ92pQ1ykJze3N+R85eVonXCQkPIaIkTnmEnKo8NXTvA0cZW1YCe5xg
	 viPPqC0enRFPy94nGVSTUmC9v7fxDSnP6DtbXoVd80OqFCmvTWg0/UPiaVe3m00reE
	 vfNNsW9XJfc5QnYIYXqIuqdVqdyv6PcqZqDRdheefJNPtk/2or8b7F25Z8DhknGg6m
	 uOe0wcD6nSoJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEECFC55171
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553823368.9020.15685394511470544217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453376c33a47c642fedd97942119b194f84ad47921787473c4c3535193f820f4
Date: Fri, 31 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785538233

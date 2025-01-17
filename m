Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B881DDC2D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737121554; cv=none; b=ayVg6YkaQiTxkAqsODPcoDibivIAsQ5MMDysWH/HzVvOjl2vN/uNG9HErLWZWvZKZz0zQ6CzLWZzXjlbybY6ykzFcSvFHa73ar++sQ2drO95jpUnT7Z645MQOzS5FHcpqK/5AH3HnWj+SYJQMuDxai9tQOmzjvM7WAe8FLfO1O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737121554; c=relaxed/simple;
	bh=wvqP0gDCcMVJ+JaxXn2xZF1HnZH/MXWHSFWR1+BR124=;
	h=To:Subject:From:Message-Id:Date; b=j1UrJUehF4im2hoHO7RwJNgBeWjvpaYYrx2KgFtOYaYewIZdzLE25BGAcxhXeMEJEpVEFYVFAs3YesW0hvkfEkwuh5mnp2hVYxw6JippFxVui4saG1u2jhtPLEGXKuAsbMyXFZUz0izI/2lVFAP+Y6C+7+JHr2z0FMRC57l7b0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQL6X9in; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQL6X9in"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737121553;
	bh=wvqP0gDCcMVJ+JaxXn2xZF1HnZH/MXWHSFWR1+BR124=;
	h=To:Subject:From:Date:From;
	b=tQL6X9inGVQFVScIsqqjx6uWcHqU8DMFJ/YWpUUlBGiy7+iB5v2Qnqi15QjjdQm7s
	 MMhzUih87KoeqaSs++rJVOIsm3UEZbwKC9kXzXO+Kn1Ho7X6zwHTGKsCkQKpEFSOoP
	 7l0rvEXqsOq6hsS2+AJVKy30GhsVZUNyib/c7Bt4y4svWi2NwMNPqBO+xS7TQKVhAG
	 i8LUC7PJnnlsw3S8a4vIdHWIPeevkrgg6Z9jDth/a6E5FYgaRETLfcVhZuqKCYjHmB
	 yUq16QvCg7K1JP5aQnlSXO5jddWJ04AFYbcpshuIeWE/CGb+dRM4T18OZRCLSOI3JB
	 vg0O0q7KsogIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91855C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712155358.7249.7458248817632337061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad93c6e6d8e9f418a0240c1675cbf65aa71b49c35dbb5de2c2a4316d5f71fca
Date: Fri, 17 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737121553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A81E1DE4E5
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570994; cv=none; b=QxRID0iqUuXAUB2UcMXjPJxNwNgoAXEvVCbFgtXppkqh6ZVnonOoiV+QdjzV5tewdgAbxgAGlqAiolC6RRcQlj7kg9nkxkDBpiX+0gcf0PT3qY9XIs+fYI+ULMflEq+4zin0Y+kckrVYsR3jaSt51BNOH5Tg6+26TjVturxWQqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570994; c=relaxed/simple;
	bh=X1QqZXHBXuahOQWpTjRjZl1uE4w3dv+sUPFdPOJpYkY=;
	h=To:Subject:From:Message-Id:Date; b=aBwif3/4RpFxM+HEIf+2ZLkdCleXI/N/YojmZZJcEgLn8X5+mCXjpSdv7WMg4bJicY0zefsPvHCneTZQIvajo5XzSQaCC7OWSyHZo2QGpTG1NeJHb4667SPwXOm5DarjDIU+P33On2SRvOQFkmJ/nXEb/7Sh7EBuYDpNQVYUG7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9Ycc3gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9Ycc3gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8638C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742570993;
	bh=X1QqZXHBXuahOQWpTjRjZl1uE4w3dv+sUPFdPOJpYkY=;
	h=To:Subject:From:Date:From;
	b=G9Ycc3gJDzskTU/4auKheglV6fIwDkg0ZjraxHmDt8WsisSByWdkeQD4sfZX9Jaj5
	 UGHk+ofATvPBfcyJ9HQPHZ+tcbn18GW8OgGwnkK6JCtzc9rtJkKJiJS8SrKCu+8jsz
	 nOin7AjWvVxxqBqczD9iGFnL6W2GB8groqMssjDSGUofuCG9ydhyA2Lr7cEOBVP+zg
	 aVjh/V7uF4dXyMRw2mLrLaLE1bC+JZGwqpYZM87JQMHBtKNLBXkblhErhvlzrVoVAu
	 eiEYg4iKqRYN0hzJpQObjNUbDKj6pdEXy0zqoYUjYmxGm3zcMN20bFBQK/NTSlNyIV
	 W1YC3k3S/vZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B4FC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257099364.32566.5343909185372762728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739074c64816f9379cd49d7ccfefcc2398c411cb5a9b31b8cb59d6fa0d37dd10
Date: Fri, 21 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742570993

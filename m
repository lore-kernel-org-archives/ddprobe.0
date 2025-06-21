Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DFB13B58B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750540194; cv=none; b=J3eEzV2WaNCsky4P49X+6n2iVvXTMP61metNFeJ1l/K3fDxHhdsQJwjsN+dciAIcIH15nrIg8FTJQwf2NF5qzlylhhTNU0yqzIZ+RFHEQB9riPSOZOvZYz7QUnUVUrR4ZnIHNk5qqlyg82edCjneaGFW0LFdcYi3i1fphmYk9sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750540194; c=relaxed/simple;
	bh=zOAyci7LvrxxxUWBNCDvPqDqHKs51R/8nGPx0oNM3zA=;
	h=To:Subject:From:Message-Id:Date; b=cY/vC9O+aPb0PfcZq7nBCv52KktCyjeKvjPODsL4El/t42B1cBKucQ/RptHnLH4Rz0DnWtxm88taVhPMJ5axkqUVVwoZ+BAxvfvBuw+kJSp1VRYEk7a8YGKeFpBWeV9STyBJnYhlfFSX0DdYMNvcsJOgy+WSAoxmWThTuesCejs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckCF6ij3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckCF6ij3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E62AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750540193;
	bh=zOAyci7LvrxxxUWBNCDvPqDqHKs51R/8nGPx0oNM3zA=;
	h=To:Subject:From:Date:From;
	b=ckCF6ij3qrkOnnV4nfj38ysT96zLONSk8Mowun/tVv5nd9Y0v2ywDUFS0PvJNS5Xi
	 zRp/iSuWsPc/QwJN3w75YHxdkQKF8W6kxmYuMCoWbwB83s/KrXQRc3zZafxTDzK95e
	 oKXnk57/HP4p1RV8SH3rbgrj0GwhXvZYsd5kLG7Vzv49/TAFXnqIhFcdGRWACRTjOt
	 HK47TryeqNSEdfi3nkYXJTC2ujNS1N6slhNtD/KwUAEltGrJ5OWVdyEq4HDDvIaE+O
	 AEJ0UhAeTh+EmE3xOO5bwcpvPdQnmiTNurhvOXQZUwHodru3Z7kF8+5VJSiiwJBuZQ
	 ypU+2e23iYpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90846C7115D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054019357.10416.13443761198392318278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9dbc43700e27b6deb0827e2478c1b11ba5849afddf69fbf8a604667790a38b
Date: Sat, 21 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750540193

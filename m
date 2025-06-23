Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CE41C68A6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750662594; cv=none; b=adQ0To5udJEqVl7YLDM6hrucQjYXy6vH3FugmQzuwKB/ORCP7J3/zWctJYv2JEB4e7ah6Kpn0xMp98k0UOjgTZfYUeWU+M+xBJiNIBOSmdybT1qAOGfJPp3HiSZT1FjoA75ruLvHaA5mfFPu401yonCk17Ygy+5EvD3a+CiYhb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750662594; c=relaxed/simple;
	bh=a376ilETWdXRKqIzUgBSlRrna1/cRqz/Fb9W6+QM49E=;
	h=To:Subject:From:Message-Id:Date; b=hLud+AnoL+gFG6erkMGZ9M9FP0SH+KZb8zSyfiB9/P+cLoR2H1WXJq9829vkdKjqzNqAIZXq8BJq1t8bjuxa0jHNi3L8vmX5F0CIGjRV7Oy/TFE28vrFVF8GR4Y4YxtlTgZTE2ug4XRpFol6CrMMi8sDu422QBDcnQ9zHN20pEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcWSzBRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcWSzBRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CECEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750662593;
	bh=a376ilETWdXRKqIzUgBSlRrna1/cRqz/Fb9W6+QM49E=;
	h=To:Subject:From:Date:From;
	b=OcWSzBRZI4L1XwfE5FAvNCbqmVd2nuevm1VtqpPftLetuTd6WLAhfOW8bvbVm9xtK
	 XmmFOfPXKbTMtxPP/2FvXJpcWpXg+6/5GrdMDFQ1b6zB+QbUqxF0NhvEYFZIt9BndR
	 SvUE7+NdF7uBW21fzeoHmXT79q+rGXBc0thI/Sw/dAiaDUjR7WNUgej1pfXoERBF4g
	 wCS+C6kDIwKugF2S8vx/UU6qCcOU26yLbA0i3zhWQR5byzf+QIKHj8k73L4yCyOTIY
	 D8YWWqF6aEoKP2EFz+cismaxK/sQx1CFxFeLKp0bsseK5t1GPoiRCVAAdvjUqSrwqS
	 pZeEgAmwEd25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E642C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066259357.15145.15783305399144370013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6d510817fa0989178f9bfb55bde8b5de0e287d9165378b27f1d62dba1f9495
Date: Mon, 23 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750662593

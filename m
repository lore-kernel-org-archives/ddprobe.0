Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FEE1ADC7E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737662754; cv=none; b=EnABpkjuH/GIhiMwzCcwfexXrh+1t9h51AgLiZUWQgkPxPPUPcs/IpB4U9MzThFKH3wgkLE9RcuhTV4FCD9gvHU/CG9WDK3CVbOWYaM6XBI1UsvVuFfuPRW6X4WXMToazYHpGGA61pPxuq3O/Yw/xgxwQpXf5JJymx92wFKN40M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737662754; c=relaxed/simple;
	bh=lD8j6m7Sl54+IPE9WSivXLPgsj+jyqXe8ArlvNwJHIU=;
	h=To:Subject:From:Message-Id:Date; b=BjX5d+8b+7G8tShLZ9k/p+LAb2dF8M8AmWX3NyvLr796OCPP+Z8t2BBUjCV5UG/BPUbS2qWz23HoPqx9sc0Duy+4gugayzLL2IPpcUgT/+Ewy2bfnSU/N2uXIqSGtwVkf6/F0W36JUjeZ2YD9hWG4lCNkCCcbYzcrDeW4wpmgXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSvi0y9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSvi0y9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79BDC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737662753;
	bh=lD8j6m7Sl54+IPE9WSivXLPgsj+jyqXe8ArlvNwJHIU=;
	h=To:Subject:From:Date:From;
	b=fSvi0y9/6D4p4ITGzpB+oUQb7f/CNOEmd4zySFe0NYA5+JGevAkCiizCI+rCgJu7X
	 2xZ0E6hunoeTEhEQIThG10LXZsoffOuGfmWPF7QXoQqdBqXzHMcW9pxPNkALNJsBm8
	 IhVTox9/VYIrAktis7yJ1qE+gGWwoo1RfpWbN0jJ4g3lYl9xfwjatjSEEo2bjbRKKS
	 88Qy1C15lpDbMIPKIjxE0IH5fXB78RMaxepOJgBviKNk3MSsRSCfK7aoDx+6PuEQjt
	 Mlvq4EPkv2zY/VbUK/tUyb4GpFNVsTGxvxfHnfISWDNGv3Gl21fDtx5/IZF1kZJ2uH
	 gayjZfoPwFbYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CECC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766275362.29888.16116899444838378593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6181af1d0af79ef407e64d70a1faf9f4321303b6d26b403e0947ab2b9a696f2b
Date: Thu, 23 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737662753

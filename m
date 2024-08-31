Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A5524F
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725125154; cv=none; b=NheYngHvm8sao1sQxPA22VMrKCums77qdLJetnzPgyiMIWRCMojcZ6DjoefFjy98kNBKNU1s2ghs86sYcxsxefiVoaSOBXqbY4vkOV6zSOFaQdhqsX9xLTGl3ULI8gFMr//Cn7gkDB/nEiam1szbqzsCbpEucqPIDbt6bX8maE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725125154; c=relaxed/simple;
	bh=b3ON6MrWr8H7G1YTc9hCogPkZxJK10i86LNI4FvLVMQ=;
	h=To:Subject:From:Message-Id:Date; b=agGIysMHYc9yK3YrtgMcbXThKkldM15TwVdh5dehSwfbEvjtAXUAkLqfz7qZpQ/F1/f4gEO6+SrX6crCEgQjmg8za04IzKeZUjnYYVbxzZ4BLo7g+sCfrDJkgc5t7pppukxcbA5n4k3X/VS6D3DTzXaobcWH/R6q3RLJqgDSy5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB3bxvbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB3bxvbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A5C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725125153;
	bh=b3ON6MrWr8H7G1YTc9hCogPkZxJK10i86LNI4FvLVMQ=;
	h=To:Subject:From:Date:From;
	b=UB3bxvbAiMCoWRA87jFDj1u4G+HHJa3ydyaGzCYikQVaq3h5X0Sfgd/fVme/dy7SY
	 V6HMy+I2oXpIfRXChoJoZOeWz5o5Sf5A/bcDYU48uIM6NFal66SF/TeS5PrdL5adKU
	 weOvGoUTUav/fmws8ctnwZxs1XUrT/SjbqfzEMeP6syBT3S5IWmsvSlzn9VWgtWoE+
	 ST7OtpfsTSRneqWqCeMuzOzFcjVdEt7x2NLbQGgOoTjjAq7Xf6WodXnkKN4gNEZ9a3
	 R1JKyX0+TLxX9VAG5boGHTWwFY3eqZwiC1dBn8vP5sLXmNRJIs1d46NFcMv60rm1/R
	 8ZVONXFTKvGEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF8CD13DE
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172512515359.32490.9564518198538476011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22bdc8b5de37e43b9bcade98faf31c01b4cfec9442d423d5bd09987a429f3b0
Date: Sat, 31 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725125153

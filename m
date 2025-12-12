Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80A3C465
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765518774; cv=none; b=rx3Ey3TD4+3wxyN10Z01g0670tq5AkbVI4we0Extwznv4+XuiEs/wTV5rvjf80zGBPsIWpFgncVzan1GlnRJnLPHi0FATomTc7rgviaL1ZSWhox23vW3hwjCXPui9xBsKqxFj0VaDE02vMSnnIl84I1TyPV6rvvlMr1nXl70IhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765518774; c=relaxed/simple;
	bh=PrYSBF3fFFV2+Z9+uVw3I5/z+AN/A+pV25kgYp/bu8w=;
	h=To:Subject:From:Message-Id:Date; b=qjiGXPhW7RHvt1rUwmTH70Sw1vg65cJcEdeCEgmFgJ0wYYa0fMCex3daxNbEKSqzJZZ2NP77f+NCoi1hPXXJoX4/gRiiFCvOsyhcMZCvZXPd8NocIE0uyQUDAaQkhkZiRFe1r5bgKGXnffkj7ydtYontj7eLgA7xJrMxcnkfnpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VItjAgFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VItjAgFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765518773;
	bh=PrYSBF3fFFV2+Z9+uVw3I5/z+AN/A+pV25kgYp/bu8w=;
	h=To:Subject:From:Date:From;
	b=VItjAgFABvn1Dv2cpw51UC3gNY4dtLXMWDA1HBnFSxwKg69vnaUmWp6kSX2AJuOiL
	 l1e7mHmp4bAbkoQ6PQzqCcWBYitz37SWDtMpY2bubCn8NryzkLrQY8ZNnor4XG7Rtr
	 NbgNg1Uz8KIayUb/CpHrt6Zy0jHrEEUTHS2VwkYAr1lE5OjpapNyXW/21DjoZltvwH
	 tzjc45mp/NvOm3LWTaQCQI1wZNXS5PRkneb8fTlWkvCsYvyiU9EJ/1bopVBWbLlX7N
	 NtCVKme2QidiAc8tUP4ExbJgRIGtp43/cr5IDRB8JfGvayX9Rcx5/4hU/HFjjYfc8M
	 C4NHzxfP1Auyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CDD4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551877358.8996.14645176107047647513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c46a91058040cb46db39f1ba8950d6aacc5c3f3d41589169ff416cf996172f
Date: Fri, 12 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765518773

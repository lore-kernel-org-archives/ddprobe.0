Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E040855
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764912775; cv=none; b=aoQiUdl45JWIKAzi62egvuLgxriIi8WHyelW96pF0qPy5nlNLSinNhr6a0YoCDu3EpKPTqTlOl2t+KFxXHxWANLbifekgy1DAvWsvbT3/jWjyqCFutwxNpnypdXzjF0FBr0WcHwAnDNpa3bl6ygmfui/PWNUVFTbhpbX0sYHZdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764912775; c=relaxed/simple;
	bh=WYasXEIKEB7lchyt2gLStfgI+FfEH885fFdAkmT526g=;
	h=To:Subject:From:Message-Id:Date; b=Tjp6WWFzkLzdBSxzOEFhnI0fZp+upzcP62mNsC49jRSIeL0Ck4cFQwR73hOZJnEz91udzze4b9hhgAArYridWdK7ZG1mv6DQ0GLOYlh9mUjjMQXjvbqqzeT7ZJoSVmbXoKFkuTanJdbrh9d+UuLgaQ2YATJxx5SXT2SYNygbe8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnAARxO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnAARxO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764912773;
	bh=WYasXEIKEB7lchyt2gLStfgI+FfEH885fFdAkmT526g=;
	h=To:Subject:From:Date:From;
	b=pnAARxO6QR2Cbqu/rXbA4lBb1xkt36ti0hR5kZXRO9jWAoRsd1HtTlQH1oeysLfVr
	 UhGpqbje1NNvZQ2CpPJJCcD3N15PMl9+14oxBMJimfGvP7JMryWJ7XrAIEevi50Eiv
	 vFgVbYR76/nwMYkNRjk1KmbZnUBCrjriaKIBFbNLNaiQuo9bCZWhByuwczdDYUScxO
	 iJUHdDuRsaYrJA9zXRsZ0wDORWLF0TyHlenu7MJdfmU5Wtvd9rbmHJBxUVqB5PZXzs
	 9Y05ZibU+NdfXM6kkScEPwDBhocBlxAMimXnKpjyPNbgvSKYSg1b8GlWvt1YxxWGLf
	 gcp5Q2Q5U08SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93791D2CE1C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491277358.24282.2450187486479896431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba033ebf0f84ac2ffd590a7dd4cd2388d1680e2e09d10b6580ac7c1df73105ff
Date: Fri, 05 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764912773

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D217A300
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767234234; cv=none; b=qK3uHoijcgD6hKWofNRqgSlirIIZ+s/V1ImNaNnpdgf4c2HshjWvQzbDBxhGiqe9RtW95cXrlM1OaAw9s9M7mguTBSMkYHgS+21RybndIMb3I9fWpWRS+dWyzBaWV2Oaz+uksL2QFTtIyWmlZLaZ+OXMCqKsGLT08rnki6lcjCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767234234; c=relaxed/simple;
	bh=mU1i9XhAigyO4nhnA8ko/g8KwmJKR9hnzJkSnOP9VnQ=;
	h=To:Subject:From:Message-Id:Date; b=GN5IUKRgHcKKWUEi5DdD+MLBmGeRUOqECKFbsCRgtOezrjW6sTHVM2iniMXzYEhC5igA3bryHYFu7174JNMv8PtKY7k1vMEFCbx+svzk+JSnh7BEQZBRz1kDC49yZfBb9zt4RBdMTNW9CbzVaMVa/HRKvEZuGBKvHVfeomRf9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thid1zWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thid1zWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C12C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767234233;
	bh=mU1i9XhAigyO4nhnA8ko/g8KwmJKR9hnzJkSnOP9VnQ=;
	h=To:Subject:From:Date:From;
	b=thid1zWXvPaIvs1MQZ8welZd3icZZTSvjbezYjGpI5zrfnVCnBhl/LzHCo41OKlir
	 xQVBksflrIHNiqQFl71IURvkdd6wfZTvlyvB6haL594ZtPB9USrV8ScNC2iHuJdAJl
	 MFh7+mn6G/7kFOvCpwyyFoci+Ci7IM5assZ1BXDHaZASkQYpktUux7Jnr12fNIImZX
	 5hVQ2WHe5DFk+WD1SgmmQGlamm6+2cDXcDDflIL3AobW/c7rAnWrWDdOgsfqct9l72
	 1sV9DDnS1xrVMEU6k0db5nTVVIiWt81mhUofZUnhEN3F64Z0LsiYxwrQPn1ykwJS+7
	 2WghgsyLaW96A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E9EEB577
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723423357.11878.14992963336641787869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3ee3e7d486928d3dd6f8f10736bbbf4fcff85e2c3c629e4cfae1e06ea9574a
Date: Thu, 01 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767234233

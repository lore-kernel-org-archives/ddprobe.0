Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11105333445
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762359594; cv=none; b=Ix8mUy7qTZLDRDe2JhZLe8ZGz1TX8S9J6dxtDUYotoKmYaqPeg4yGfPbPUUIn+lFOwa5gr0ReUHTP8e15Q+f8/aQK66hLtujbHrmXwWZQQvqM84tkJZtfTA0gBS+eW71qxw9KGZ7Okpw3EhhYeZgrq7mkRfgk9JJrf7FSDuQzKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762359594; c=relaxed/simple;
	bh=G97mFFaN9C0xc2s3V2IYEoNWulKAaZMHr592pcaZqo4=;
	h=To:Subject:From:Message-Id:Date; b=LGM5NJ+xAt3mRhSOzWAB9QV2o6HRvVM/pY2g8I6IFw6tW55//l9SSUy5BBhulgzI/NaiVUsbHxu2uO1UuPuYjagqx0ydytcmDlFXkSYEXnq3gr1EliMLzj36XCCndE2FLlOr6CAfnSvjzbBjjznnD0yWTzXmKqRkE62wRKXPn/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPZKLV/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPZKLV/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE12C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762359593;
	bh=G97mFFaN9C0xc2s3V2IYEoNWulKAaZMHr592pcaZqo4=;
	h=To:Subject:From:Date:From;
	b=gPZKLV/IRW7ZU7g1qC9/KwElHBbutFb3BSEd6gzxhK78AC8NkxehZGAnjklyM6or/
	 xMkU8yhXb06s3vIVgaYgbh6MY05JjViI6oRaX50dxNTtEpPwWtq1gRvU9Kbu7fGEIK
	 xyq6DdYY6ojmxOexbo+p5Nc8OLBKVBihoIPiBYc+Ci/jgOTPXtlgC/3q5zbuaB5FRh
	 /vQlRE7sAmuhjjWY2uOl0XuW2Ns8879yX+AKrlfklYWIK5lfFQ1LASoZjW9EjCQWM2
	 vlvEVjgJohd3J6pdptq6wmAlUa34JB2DCl7yQ2THF35zs4WyiLJxe9w6CZjIZsiRLK
	 /NbZBR4b1c2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D0CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235959358.27587.14845276116525738538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe064690b17b5c9a437eccb7641e8c2712a76f53039b429205bdca2292aa981
Date: Wed, 05 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762359593

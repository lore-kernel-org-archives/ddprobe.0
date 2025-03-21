Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4904D1EA7E4
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742527194; cv=none; b=maDZHN59ExvN+UwGEqt+WlI4Q4Q5LJBXbLjbWQ3bCKdikl+hZFxtBND0TuaPqZoogYZ1fkChxPa8GDxI9zfV0oLBLPq6dId50e1Qyw74d0L1fzw4LEPCTnBOFA/ELcg3DRvj2nhvv/hOdNXO7cAkt/TM6pcyBSYf9xi2drV2t+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742527194; c=relaxed/simple;
	bh=tuREohpCR5/AGAhN/iGQQWarxqVpi8SxcyNp+gT60AA=;
	h=To:Subject:From:Message-Id:Date; b=DqUZcAqljPs1fyDplQglr9Lkgakc6R3HPz8GO9lDuxKJdnNUOJTAXxSoW4PJqJjy6Oy3Zjx0glSHx83670KZ+3LsIbYjOiAcc22Y5WQbow3oiQHK6FFNeal4GD/8rHxzo5opHTmbmoc5Q84RPVlzH1xRUYpkRnF0cEJeCTScu3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6atZ0gP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6atZ0gP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE274C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742527193;
	bh=tuREohpCR5/AGAhN/iGQQWarxqVpi8SxcyNp+gT60AA=;
	h=To:Subject:From:Date:From;
	b=Z6atZ0gP3ya3X/jT0Frsfovvjh9jZVo8cxThPmaw7mU8VdRxcIUNW5xUN39cikF9B
	 y0jvMipHTUr7sgwwtUbqRQ6VTDv0VQaybpf63R4pQWlUz44DN8j5GFxb+ER4hjoDbF
	 0kddckuepHIukcpC9ffX7rJlpSor5N2DGEJesylm76KhFnbBnDgT3mK3oKOHvIeM3z
	 9yjUi5029mCU3iziFxbYy2kIqHFmy1vwEn0+3YX7wTATvx0b2Rk1nvYUd2+aZ2fF+c
	 j28o28Of+IS9TnXLKCfkPM5bkRG5ZFyefKC2ROPpUVQjfH4pL1LbnFD0t1ngm8JLmM
	 l6bI9XVlYF/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D961C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252719359.7878.14869249650710445999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfc3dcf90458b0b744ccae8eb8a26e22e9110e9f0d47186407816b0d0c73254
Date: Fri, 21 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742527193

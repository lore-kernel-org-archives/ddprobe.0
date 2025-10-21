Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C893199FB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761023994; cv=none; b=FAAqZp9Feueuf2OvckRPzkADeyhAWEpCBIbNeJnR3fBMhK/bRqXiDMyZXZdQjnDtoTjIwTGKL/6m+HwCH0NfLpbR+zcRyh+CHx1tAv+aonLz+gkRmHtHydVWi5lth/T5+Y2UUam5NkfcEvXN/wwHv6X5LzfW3ptZ/zhZTvn9Bmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761023994; c=relaxed/simple;
	bh=K34cwCpIGmxOD3HXu+6RUgbl2fSJHrloid4tgU/owkU=;
	h=To:Subject:From:Message-Id:Date; b=CtT6633hC6HT8IRDhKHdAoma/JttALnNFdg9t+4In5+k83oJWET3FNL8VrQna830FdYCmELKG6VM8Hkqb09cKhb2hoO39djM0usJSzPcHbZtT7WkTiIh0mZsn2wIvv+VEI1nXl5xqECQDYl2If5HQeyyrEIiE7miGG/xjtwS7Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8sbA/bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8sbA/bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB16C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761023993;
	bh=K34cwCpIGmxOD3HXu+6RUgbl2fSJHrloid4tgU/owkU=;
	h=To:Subject:From:Date:From;
	b=g8sbA/bmOwydrJrnFF6xymhS3qEs9X48xE2beHxgG4dHN5F6bI25JrCqDMA5vWz3N
	 E7h27vPP/wAIKyZYtpDFsLRmL7b9io+z3HACKRElic+D/NZLx28Fke498skrTbvm4y
	 f02KKrR3n89EaS020uXScmLwPzwemooWFF3xHWytiYWXwbmNG/4v1zQOGgM+6op+H7
	 IKStBYy1WtOCESSJA+xMLw+QqfVesyXDd/FWi7xkrmj7FZJVUZMlMJjfGssNMqnDEJ
	 53oCnIrIRJGtrluiNXxc4NX8w8ugEg9gnd5asQX4OESn91fLKawVsS0GtCqxcNBCLC
	 37uwZgHDNRYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFACCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102399359.16853.2012379850141374813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c9c394a5ab2487b8a676ea35cf733e339f56b32a2fa3b8a18e029c66b7f9ab
Date: Tue, 21 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761023993

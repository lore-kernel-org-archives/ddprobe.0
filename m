Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB813281357
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745421593; cv=none; b=gQBg94+BMGVHAFPTiN/OePaNzvzwNNOR9zy9EGGsK4HlsJF8k0OjIIrR0Q3e5g0VKrKkKyJmPpY/HLw4lVQYRGTEbDJnN7A7WRaJfWXcCN8TYojw0Ohak/bbdaso/ta7djkR6UKmVTH0TCzFcMkGU6kSEAlgPofCGakjx6AAyIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745421593; c=relaxed/simple;
	bh=H9Eaj2cJJ9qUwXGDa9mUwbYADEIkXDCKYVtjkolhPU8=;
	h=To:Subject:From:Message-Id:Date; b=eqbk3vLd7xhDxii7ZzoL9JqlA0qXNHKHFJQmIG4xSnUwo8CEtm4nH6JXNfUCpAlQVDAaG1Wwtoly4f2+Fvg1hn0/r0buyzmjw2byMUhN9yaxDfw96wxJbDqX+25wL71pLIISt3WXrut56vmRQfFvSIzgasnBIbrHAYXahN7B3vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs/+cuOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs/+cuOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF13C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745421593;
	bh=H9Eaj2cJJ9qUwXGDa9mUwbYADEIkXDCKYVtjkolhPU8=;
	h=To:Subject:From:Date:From;
	b=bs/+cuOslHrv7mZADuZalcGqfzsLHeMqvBW80zZaPaDFLTINfG3H/uuVY+YmSMMqN
	 qDK/YZotXg06RsZnLAQpBBggv0Q2XyXgJPljNWiqi/vVp0s/0OAKgBCiUZJvpvEvcv
	 /rnSL5zAtBM6jQNXfUbubsztjO2x8muMAPCkSgkRj04EG/Dw9FvS+YirIGt0+zNdBW
	 7UUdOg+eN1poBBtfdo+M3n5jyvc6k2ogQS+9jW8EFe5Gyheki3f9bmjUpplOkGGfEA
	 7fSr/77fawBmCqbYKJIcKNCzPYTZ0ARf8/J+J8vuF/yu2wvDqIdNecv3pUQQToXUxm
	 vLPabzNoY6juQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542159358.16011.2979395871735904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a779cc787f7f1b94eba94dc69c10834b2720334fa58d6de4d14772c658822d
Date: Wed, 23 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745421593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DA3002C3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761212994; cv=none; b=ZydH9rhy2T7zeeF8WIC2TItTC2KoO4/gj8uOSvUYAFbS30Fao0kSlHQbHqq9MwN0V70pGD2oj+0zq6vrrbIrbT6wSXDk8AMVIe34m1zUT3jdA8xl9rBWTF/hlQF6+NsEJS7PMTkGaUUcJ0yRch1s28S16iXOcroZHP9p6mAnNNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761212994; c=relaxed/simple;
	bh=9b8TZgXtM2OkYqb6r8vWb+QvZf0xVKMPakhGmI8K59c=;
	h=To:Subject:From:Message-Id:Date; b=PEJgIpWf/Nm6uehd1gQqG6u0MJ20tt9fwJLd+L5CjS+CKQKeCNWgPyjcIdH3rPqDB+1k9qfttx6WIfl4XV9QnqdD4TdKytXGyTLKQ07vpT2UvYRgd78+5uOZvL3MCV9vC3opjsc2nOXkSZRllDs+e4TJcOMqqDOT4aPvWO9QI/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daEnR0UT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daEnR0UT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761212993;
	bh=9b8TZgXtM2OkYqb6r8vWb+QvZf0xVKMPakhGmI8K59c=;
	h=To:Subject:From:Date:From;
	b=daEnR0UTUzPQQ6lYDdvXomIUYsekcil0BLeR/hyjzgLM0EwRRGbk234+0EYiUWXFj
	 4qTDEHaiwzarvfW81ZiHIp8VRwZmAaJNQEoPNV2K2R6NV+MMYQ8uSuTO0DTuQhPSVF
	 m4WsEQNy2ULubdJ+lGoJ5whLKsp+Dtx6Dzv2iTOY0ePRFHw9cdlWpFTQpaITXdwrYO
	 WIeiQTNqVsG3lWOFK3eHegUKvTiQMo2G35ah+lQsbVQJOBRrixxw/8qv3HxQauNXuy
	 PNkr+OskNFIGJf5+phBHvxA6BM5VilcDi58OjZlhaZw81OKmlIDkEBWIw4rTqHZEur
	 TuCrUbw5QNmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F206CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121299357.15857.8148214327963818473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309efa82b458a74f2b7155bb8d8806864b2c8db5f9ce8cd96059b0b132120bc2
Date: Thu, 23 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761212993

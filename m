Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091BC38F243
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124835; cv=none; b=a4+vqh65HnfQ79kCkr/ZfJjIpMoQD3u09mhSL6fOBruuV1fyIyJReVkXlirPkM+4Hke6JzqANDfkWA5YGUICjG41P/LqqZT5BAk/Za+dzY88wgvakAjtDMcAA8D9eK8S7TDgdMH9NxkQRFKbgzCHIgKGT2Y+vR3RQFpESLq3iJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124835; c=relaxed/simple;
	bh=rohfpVjR4tTq9E5rKmls54sSJAUe414uX1IsJiSqO4M=;
	h=To:Subject:From:Message-Id:Date; b=azPcdaovEowVuEwyPDSkvNkrnynUwFkJOOu6A6v+EBfxdoqnV+6EjlVb3YwGtZSroPIkJ5fPOCN8kITqzvO9Bp9SIHPezLZ63thvPUbZ1eKzxZK+QYUcrFjgA2qsM7L1jo7BLc2UDZyBIPLgHb99MNu1w//UnJ9uya61T5b4YXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eE9EAt2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eE9EAt2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9DDC19422
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124833;
	bh=rohfpVjR4tTq9E5rKmls54sSJAUe414uX1IsJiSqO4M=;
	h=To:Subject:From:Date:From;
	b=eE9EAt2werM8v8cBKemD9FOxG/oRtNzXqDnFdEq/Zb0vk6vhpm4vpeJQKUQ881bAA
	 xhJWlfvBaqLG/afJQCUuEOnZvE9s35Q5Vt8UMwwmu2veLtiF7nMNk0mZ4bIEDLTwYZ
	 mxad0FfNsxieX0aaJ5HvD8jlfRSjyG6H7vIrTbKBOgywwLwTelZMATWffRHo3ngVd/
	 0hHEvnRE6g01umQOgeClTN1Xel1d2jYFjHqEHjei6Y/P0GuDH9Q6nBJmQOSiDaiY/L
	 tJZiwSBfk+Iv8hV09hOYMjIeeVPpL11ZDZw4ncgSK64JxM/L6TmBy1HyZMpW6G7Rx/
	 jt5XU1zQlMXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90681D6CFAC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912483358.21037.1724155476565867418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd58a37073867815f5bf9446f3f75539489602f6aba096f0ffd387c0b37bc554
Date: Thu, 22 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769124833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810522611
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299554; cv=none; b=X0cU2DiAC8bwyQ+1wGUGMWxZ7S1BqVh7DfamtbrWXowPn7Y0EjrOVNe1MtFU/cd/vqKhF+R7Q7F6n6/OOjjG+hZ1/gNMO/Ln5OGUO2hjiGqnhykfr/ei3fTePLVmSx+dKXuaaJ1DkRuCC3bIU0xSxjgFG5hCSlM8HlMVSrppAC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299554; c=relaxed/simple;
	bh=pH6NjkmEHmAKT464kKpxkGOhOO/Y88I5zpRnj12ojO4=;
	h=To:Subject:From:Message-Id:Date; b=DIIIRGc3ZjuPG4l1l0IwCq6cXVK/Tuvzi8aUE2rF16yKD68wQT/1WSK1Zd5/8YDHm8MR5exHOYDxg8mZtS80CwQQL1P8MkGrHW4ezerJqgNnYqcvBVwwRFXNZcRKVdO6dOhXYxqJ8mhQODFp718mcCxPgHmpeNevIVowR/F769Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCZp8tfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCZp8tfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96DDC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736299553;
	bh=pH6NjkmEHmAKT464kKpxkGOhOO/Y88I5zpRnj12ojO4=;
	h=To:Subject:From:Date:From;
	b=nCZp8tfe1msZSAMiP4dagoiSAPx43vJLd204M5zGizgth7QJo3CEn7luGSfqvm2fY
	 v88WLw37WjE6klemZqXC7S9XEc9lJfU5tw6bBlISzHsmTUu/ohPbL9RKtCkXTDlmym
	 iHAXvhJ0jABW7+xmDGKhvnRiaBkwEdcr8iXsBs/ABZ3MACkO7mqBJii/HkIjMqUw0D
	 48hoUNcQaBi8Y/8bChtmYqEflxQVr/rmtVY55TDz3gWoTiWO5FlVCFbPBvrylKuXQK
	 wyxH1FDqU5PPxp5FuqwGPT3OTSGV+legCXOeOX5NJVaDqrxpK0gHpzAuzSrrmKMIun
	 oxAbXKo743lzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF9E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629955358.16395.9235803614430294512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061a5b3256c7afe69a3a06fa610b88ff752f897904e99276d591a1456fbfad08
Date: Wed, 08 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736299553

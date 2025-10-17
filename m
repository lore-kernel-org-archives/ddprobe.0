Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC950276
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760730594; cv=none; b=sc7MrhB/5SR7KnXkafqXXBFvH2rGnW+Q4Mo+BMzMLRW6CUF0ApARJVXFByd4htSH32Af/LqfAzUtXVeWfPHeXP2lAhGTaSuGCOnm/2Zf2F8a60qmnNc9mHIqQinChcBmiuPbbGzF+CF/LFmrDXN20Fs/dNFcSFbGGDYJmB9x6UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760730594; c=relaxed/simple;
	bh=SZWVQaDZBeqe6SE8jOp/Ndj1pwfB/txViUh8lYv0Sv0=;
	h=To:Subject:From:Message-Id:Date; b=il6+biAJ3mXl/OE2lZi62R/Atx1JGBOfQh7AziftwDlujUb6IeIWAqTyKWFkX++cd41TVzxqkpR1SZi4GiQOTS4hyfZRGwnJpYfHpmTFa1oQYkh/06D8R4Jcz6sVthzQ+KugNcA9VZqnZyn8CAQ6cUHeDwIDlrasv4u4TYX+vm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My2xkJd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My2xkJd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760730593;
	bh=SZWVQaDZBeqe6SE8jOp/Ndj1pwfB/txViUh8lYv0Sv0=;
	h=To:Subject:From:Date:From;
	b=My2xkJd5NndiNRw6H/aA7Xlgd0h+g7WVJXPcKiG7JQk5eQJg+N+Y/hk6yygRY+D23
	 DjXoxIR+QQCrXZBTbimELGFbWkYSXxBt3yaJLDD+9YnCg9tbYaT5HVYjomrK4HptKb
	 oYvTnAIoQifZWEBHgDXNEYxFwVIlP7wSkQT6eLAqKTg/bY9U9O0JJtBFvGfyQ4K10H
	 WNcn0zyFxpm+jxjKyoCZ6P4M8eQ81fS/CTJ7c9iVgfWOt8mFpYLC5ePflVQ7bsviIK
	 txK0nnMZFNsuPrcWbJnHe+J6fs3+4jTYwXUHcQo8s5TT14DLzIfZVrL56uSzNNXS68
	 PYYIyLs1Ayicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB6CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073059357.9998.15078663595456865401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c55aea1df7da61dd5e9585230ef5e2de31701af843ccdbb288b43673b7f0c4
Date: Fri, 17 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760730593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4742E2E3384
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743471594; cv=none; b=YibQktrXGJ808x9dOdIQUqPkABkejVkg7YShKgGvv9ENnF1t7g7b1XU8nROO3sui01+X/COo4++eMGS7SFx5P2hDHHCGt/GfT0QRtF5HXuLyv9ExJX/b0oj2w8eJr71CNLw6AQqck8ZdKk/0U0mcpNGVg1aKgrKNfB1KiuLz/KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743471594; c=relaxed/simple;
	bh=2uNLlLXnJyOpYpsTLTrJIEmAv4mEi6CuZ6FPD+Wm+hE=;
	h=To:Subject:From:Message-Id:Date; b=twe+xmmJovDuCyOFnf++VSiwQhu+d4sZHeqk+pwRUlwMutnwvhwkCrDp5b9yJa8nHRJi45lCmDQBYmUwmjwgEBv7zebSDbLxbTMwTG7ads06oH5AtN+gNw6g6FglYlDo8xhSTIOxxbOmw0LFl1POhDH/27EkakMeOysEfuWE2+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muWfe+2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muWfe+2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA4CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743471593;
	bh=2uNLlLXnJyOpYpsTLTrJIEmAv4mEi6CuZ6FPD+Wm+hE=;
	h=To:Subject:From:Date:From;
	b=muWfe+2aan4tHnsiYqcfGRJMIEH6lI61TNkzRwzivpCjmloZqPpNBv2p7ZPkL8fW7
	 jgVwespJ8dM5Nea5/VIILEh6j9Uux+5YdZ7/QJ+tP7/9sBBREKmLJSW9EtfByaQMaT
	 EA6FLgikppC6yOX6xIAqfpz5fGhRhSe9pCxY83InXCc6QITWwx9KG5pHKkBgArr7Zo
	 Du7v8vVH+damMuoJ8eUDCcCiO26Mw8HfMN+GH7MGmFJIwzsEzCOPSloChrWSvjyvwr
	 kgDioqEk4IWktvGkf6YR1q7azFNdJzrcsLGUHEiGJCxPSD2Y6elY0+rJZHBnDFSYdN
	 /HGE36+7r/5FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5CEC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347159361.28623.1210124386725398294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b129b4aa0a0192fe8586a117a08d793c67881e42a0aa18daebafc80acf06a15c
Date: Tue, 01 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743471593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35948AE0D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782919714; cv=none; b=u2X6aGsp+LCXQ3l14p0+bcyWoCUoCEDD1BnmvQPSX3ZXjBtWq6OQ6FjNF6v14nIJbdl/tdxEWGakYBQMDl1HVIqihClZbGWa85Fglye3D0Y+XbmDyNaXVTcYn3P4fDPPsLYlxiZmYLirX4fyToN4cvJI2WXeCDUppb1tMoATg1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782919714; c=relaxed/simple;
	bh=NFBb12gaa3Hdjp1elS7lzboZJGaVB0pFsA7r0+dJ6AY=;
	h=To:Subject:From:Message-Id:Date; b=O3bpR2BwADW583fkaAx1f4kJokS/AgxW9DyYJZr+G5iJsO0Q0iZJx9BwLpzWSQik6i07T3+ftMovjhgPpC0Sd6QmZ+0HkwMfK8zLxAIeVt5FenrJw3KbzwNxFA/C5X3gWA2TCE++lmCGN+s7+fZFTQqgf+wmWsXe+A1GlbfLutA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/+snW0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/+snW0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9404C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782919713;
	bh=NFBb12gaa3Hdjp1elS7lzboZJGaVB0pFsA7r0+dJ6AY=;
	h=To:Subject:From:Date:From;
	b=G/+snW0AUwAXUtoC4lD4lpNWYiTE6q1ljqjoUGovvg5i036mzFIxJvfVVgs1yLfvx
	 bGsmzHJCCNAe8h8Q57wQ5PsNT8RUEa7P7x+sYlwhEIJZ9tkvQFZ8ELoU3VrMi5ooa1
	 8x44IrwY50kzSaQk40XgInV8+ixFFjfd3BjHo0YrIQwg7mGq9jXVSUOJ2TFBJN+KHC
	 C7ss2zGesz1YESFNEWm7fG8xCOnJiIXNnTra5Scw4e33WRpl+7SA7whg8r2OP3GAbh
	 E4iY0rm/THs2lLWKU7WBtYP01soQvNLAIVzz+TZzqgRGt0WaPo854aqXDUEKc2rh++
	 zPxEYKKQn0KOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A2C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291971369.14077.16355705538729187767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d85e0c53da848145108843acab4e5904239f7a43270fd5dfb7f2bf5f77e7566
Date: Wed, 01 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782919713

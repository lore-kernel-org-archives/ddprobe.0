Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D776039BFF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775048133; cv=none; b=eeGxhTxFykOEntjJKytZ8h1HmHB/LD1LkoTIcfmpKga2/hN2Edmt9eigXhETkiWw4tcakwsjZ8OZK3oxKtpd/MD8iBRFo3YeWU+pdQpM1PX+9buplb5YAmEfXw6+QirKN499Md84AZJgacrNX20YdYKblIm3fnq7OJq0sV0QIc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775048133; c=relaxed/simple;
	bh=rNbBt+QgLlDVHC+q+pujmSYqJwuqPVfQQA87jiSxuK8=;
	h=To:Subject:From:Message-Id:Date; b=uSC348qE6aElJ/fcjB/UGevyYxZzEK99NVYvg0Tic3Ql7RzxWYxwhd4gTb02zWdhvL+RpjgunciZsvP5U+/ZEMZCUbX4hJ5mL9b5shVphywp3TzqYXBFXJIxjMAyVkiq0jKVuDVAsiR4cEjtlQI6nR5RvuaF2RJxyBt/UaHI5rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPRMtn5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPRMtn5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAE6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775048133;
	bh=rNbBt+QgLlDVHC+q+pujmSYqJwuqPVfQQA87jiSxuK8=;
	h=To:Subject:From:Date:From;
	b=EPRMtn5TbqSwyv3xIrT6jaH6BufiOR9ajk90yCwFw2KKB33GhxbbQnPOaC1AwY+Km
	 8P09CVKX7yM0ke0UR/rzwMjjcCKEahS92ti9vE4xg4MFgfur/YZ7jBVx9nINC1iuJU
	 FwS1hO5anSXxvDSz15QVqot9uvFiPk9oZCeyeZKAkM2cLcwGTHqsHaF/Iupao/ABZ0
	 oy7rhvJYF7w7Ndxm8L7pC9kgu1Isl/Q/7LhVuhq5Y5Kd+3PguERh54D0MLjNhl+JPC
	 rYwciGLLBPR7tZVRtQ8FME9bkSKi8e2LSloVf9wuiU9vCrs+bhLBMOIo0oI6ipOfEP
	 3N6v1vTonmVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C3D3517B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504813370.10613.1535340154143883227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0352be132063f85666d7a61ed3a3960bdb302810b130597ecc10ad2cd625fa12
Date: Wed, 01 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775048133

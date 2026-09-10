Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663938F920
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789011034; cv=none; b=lZINvRBR4O7FhGeEHvFPKBdB6Xuae+lCF/NDvj1C0ImcdFbyWoDnIdzhHzYrWopzyfzqurIl9pcRdQMcn1XArzmichm21DaVYHhYA0WUldeWI2cJ5IZyWLt7sGCv8ei1YztyrPdetdxrz/cxXrJsJ7xefsMktKj1KiLaXE58vGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789011034; c=relaxed/simple;
	bh=GYkOOOemZC36jMPSQYDa0G49/MXDlTqOmG9UlHjP7tc=;
	h=To:Subject:From:Message-Id:Date; b=I2ZD8cuNGOkaQl4CAzOg8f2jra/Z2PHSqiPZW5j1in2XoOfyIuKA764LVpL1Clu5CH+zLlJGdgsnQ/D+z+cBM2I3lFQKFylNMaAziBrzYI0QSksQTFAQh7rD9t8gRdyps5GuLL3SblJte00WacySdk7s6VPiePHBhDPBUBfq2EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI3fkMnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI3fkMnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC336C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789011033;
	bh=GYkOOOemZC36jMPSQYDa0G49/MXDlTqOmG9UlHjP7tc=;
	h=To:Subject:From:Date:From;
	b=dI3fkMnc3pKfAzlAxMbBFw1vV1qmmbi7vaijrSKWGGELclrJkFyldhLtZLBQwGBcn
	 hYA92TZh0mWNYEMp/YInxs45mCl33wWcgPuKqR4KJIQZWpTAnyA0+u2u/KlWz+wBtp
	 jqHygXHOTKQEs+KAGBXXhEdpaztHZAQP8Z96Y3IThk7iFsXypvCHnKZz7V12sV1cMl
	 bELMWCmXO7sdQ4jKBxM+hWGhJUMqFoQdT0Y17ZGZlXC/laFmz+5JXebBqR4WiUI7E7
	 cwXwBLhpVGMCK1Hr+EsB3hOYnHW37tENwX4mBqG2AS2CwozeHZ5ikZZvgfZrD3kgCF
	 9RewpBJNoqDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E1C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901103368.5769.14361467119293043483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b068f0a2c1ff1c50dda19b41e498fbc2360a0bf4842229b4ff60df6690ba78f
Date: Thu, 10 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789011033

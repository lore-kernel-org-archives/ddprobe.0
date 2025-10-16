Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3B71D90DF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760575794; cv=none; b=Z5Ecom/baF7RGegTF5A/wgvfGlZhYHUEOMPHskTm9qREbE5iMtbLOaNe3w8MCGXztZ04+r6PxZ5Grdxiwc8N4ikuDFnBmEArAGM1u1vfKKYbux/erRpGrA5yGgmB8FZ7FK9eNcEXiW0HoYxN0GGeOTqmb/3IrjxfVfVOaTeBmxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760575794; c=relaxed/simple;
	bh=C3mcOvGdJDWVCKvTJaRVJBQFfP1N0caOwNIYoWtgL8M=;
	h=To:Subject:From:Message-Id:Date; b=OaWqhK9P0oz0mONq77elzLj1YT0ZnG1TCs51/Nx8GajFvutImUqV32GMlYZ49Ffxd3xVxvhvirZXbkf6PbJyTl6Sx+qOR6u+h3w7dLmbEvbyWV5BW6l/SPWyepDXu3IZPcK0SwT0E4JGQ1o4tHqm7EUmdF0zYDEPw7Ih5XoQY9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+FmZe0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+FmZe0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EBBC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760575793;
	bh=C3mcOvGdJDWVCKvTJaRVJBQFfP1N0caOwNIYoWtgL8M=;
	h=To:Subject:From:Date:From;
	b=S+FmZe0oRI5OaAHc9P8DmvCbQQeE8Vohsd6vAC9IqcKAXGeWPKEI0zkbrLXXbhh8J
	 RVpcoLYTma+qD4cgWPuOATrEeBj/K/1e6Qi87Y4RSqKtBHm67AX90kvMMFzm9KDF2b
	 WIxU1KsIH9BFpRhmbBQdqpiBf//tSz3eOssJs1epdEh3fjs7wKIl2oChVIO83KYrOR
	 GWveMZL1n+fY5HEQmPl6CwfjneHpDjN1a8jz50+1OH4Ya74s87j3Ey17DprLcv7We6
	 5yacmxF1fZEmFJiDjINuQ2mrlc+HPRgkRM+gWXFXYUQkMN048Gr8p6xZMqG7HIqm25
	 2WXMh3tq9KE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B19CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057579357.2366.6107590397237209222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5bc24e588c0ca627ec88a832614f0df5bd3fd5a94b7979b1d97c08f2319717
Date: Thu, 16 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760575793

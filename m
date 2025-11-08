Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300E2C21EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762570794; cv=none; b=CjlK9jGBSajwYWDrb7LSEcwQuHJQl0aGea+tuxg1TrrOfhgbiK9shS0QynownEwXkwDAT7TkY+M0i1noTPKAgsXTArzyASZ5hnLIzZIIjgou9tFur7gytIpllgKxsalJQ7zEX4NN3I7CXYy/kbOS7JYlSsMsPUs6HhUcNc1eySY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762570794; c=relaxed/simple;
	bh=0/ZhHzZCSS+6ZZ/fRIZPrBewrqx9C+arW2iBSLIu2yE=;
	h=To:Subject:From:Message-Id:Date; b=Q6IgARqX/f5WRbropyO1EVQ6dlU3MqrH58ADgZFIBEb3oyO63+nHhRA2Z8N7gL+NY1MIpkDCgwNe+WJcLXAM6VgQaTPUj5K+CkG9VkaXYcyVmAHWg3pVUsgLDBKkgVy0JNt7hpJ6m0FWFFgGqa90yF/4bY3yhf6/mu2pGQ2P4ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUUYGj3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUUYGj3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4D6C116B1
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762570793;
	bh=0/ZhHzZCSS+6ZZ/fRIZPrBewrqx9C+arW2iBSLIu2yE=;
	h=To:Subject:From:Date:From;
	b=oUUYGj3kG6LLr0vTITBii4FvsKTjrRzg0GTpCVRw8LbufD+EKKtRIZVHcgffgSyGP
	 l/QUOQ0D1nJTddlFY1oFHMynSJVE0jWEpELY2NXF9wJgTrJnGoQ36UkiFkESHL70SI
	 ZJwIEfBAfot7DFgIUDmCqtsz8LMoBrIRz+gU3iTcpFbnLZdeCMe8UJjKsnSbv06W7s
	 dbQjDX0mRUbT8907iuhs6tLVoTyyH+qJUElrlgLT0nQ3bosKR/Q6KAq5+9keQEoCRn
	 CsTsiU3vtkz0VWgT/CJ7wFNfE/fjZSH6k3zstpmoehd2XR970lazag/ut/CGUMcdU5
	 Io1wXv9She/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE32CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257079362.31992.7984388380932544246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e71e560189a4be15012172862dd3b58664e6d4ee0a2902f7a1a9f2203531b4
Date: Sat, 08 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762570793

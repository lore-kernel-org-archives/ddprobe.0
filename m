Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3E41339A4
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761129594; cv=none; b=Z8/3666rNVKRvc3+NMJftJ7EF+CIOq8PFqdE+5aCIz7uGUzs78TFaeqkIsWIJsElbQAV5rJ8ZnPsN4kkSzsXTTlor9hyu+g9zODSdgF+qq8XUYrsIm318qkIpRelvu7hU+t/DPw5sLiSWb0ESswcOqSfI7qyElryyeCohuA4yTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761129594; c=relaxed/simple;
	bh=vgzY3dIkI8G1iBTyt3UslKA3Yi8Wog4Qgpg7v8MkIIQ=;
	h=To:Subject:From:Message-Id:Date; b=JRTWauMNHzHgI9WjJKqT5+dkqFzMpGqQggI46dEpHAhiFjxiyI04+N7TUe+u9DKo2qa9NkequYOa/7Mos3xi4Nxy6TKrmNItp8vFQKxgnzQ5Q9ehuHyhznLQ1UvFq3GiK1ZRhYgER4SY8o8T1D6AsGsAw9zaK3SG/JkJfRD5qZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckiKppTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckiKppTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761129593;
	bh=vgzY3dIkI8G1iBTyt3UslKA3Yi8Wog4Qgpg7v8MkIIQ=;
	h=To:Subject:From:Date:From;
	b=ckiKppTJobSfTcplUbBN0hnYHO94sRMpfDiSpTuN7Dw76v3IS28c9m0pkJyhIPOWI
	 L+OfTNTaqWLDTujglXEcTBiQ12Pm3w2fAzlEBXwP8lu2AtPOTeh5hfkBHKzl7wUguZ
	 qun981C3DJtcB4JwZ6h4Yz+WoMUkHzAhmvNspKvb/euAsehkrk542mCaWmNyW/po/M
	 40jHSrCmzkZj8JP0moWtlCKudAOmLKCAu+7HTCuUkgrO5iCGFCKCk6rdtA9rFNqhGa
	 doc8bqOwDlqYnwXdNq9j/qgIHJjzojNC4VD7aJCO7zi0svrVSzSjd9mgPluxqZRBhq
	 c2/K9vI5f40VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112959357.27872.12743819840279309712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8037287b626f4e0481a0c2b4282c6c0887a211cc65dba9d7a225570a99ef67ee
Date: Wed, 22 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761129593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0522DF8A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746963594; cv=none; b=d9Dggh0MOU1DaPVCn7xmLyTOC0gVmLxJFXb63TsyetCSDBas/4jDel35T6z9A7Z8Rkx3NGsMEd95Xp/APrC0ALQRzGUogsvD5RyFNYcCerO/atUP64aPNIJqmMEBC0N6jgZj8D3XJCdmSkq/fOW81TfAZ7XzRi7RATX+exJ0nVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746963594; c=relaxed/simple;
	bh=zqpVevd9t6M587o3dP8gM6bI/rW0ImKn08jJE73txPw=;
	h=To:Subject:From:Message-Id:Date; b=sHpxAeJ7SV8nM3nCPH0IuP3Q9Bk6XsA4MKaSlEuIsi+1ynj+x4ulI8GPsiNzCiqwBCOkFoqVf8hRWZYbCl8GiW3BZtb/NV3+SDsrQLxL80NuVWP8M88zD8rgPBaCoLI5gIoYqApFdAvAOQMxI02NyFp84LfC2GVSttFn6hYokPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg2u5Hoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg2u5Hoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7174C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746963593;
	bh=zqpVevd9t6M587o3dP8gM6bI/rW0ImKn08jJE73txPw=;
	h=To:Subject:From:Date:From;
	b=Vg2u5Hoq/vJoJ/nIZ7QsBbP7hMr/NIVj7P+M6McI/ad9gy5afFwbMh/fKyXMtEA/Z
	 XWOf7IldzM71tZMBI4iauMBEAxvv2gi2wl1tn+p1XS6s3CWDUBN5G6liCwvcGzmCSx
	 1oOV/9aqe0I90ygx7mks7AZWJbirdH0OMwglXir1qccn1NpLfKAMYxhgzguokJAROm
	 N1a75c04Lo3eE+MuTc/4Tm+D2WfuA6xR7p6KybwZ6bkeGtUilW46KPMY0qKfZ3ve/m
	 QY1nKqRRl+Qkzp1q97JQr5e1eFQtw1Tytwu+Qx4BmNaSmRzMWqfWM8dmk0agkqZaKF
	 ayYoASaG2YcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA5C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696359357.7399.3305099520658403754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7d2df2e392e829006c2f3c2d0f94f8fb479d582db9e3da685d2a7ed5e7684e
Date: Sun, 11 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746963593

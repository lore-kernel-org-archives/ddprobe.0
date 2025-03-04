Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F61FCF7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741127334; cv=none; b=UNmmoYZdzXXg8ZGL2Ck9ueMH6Ota2U4uEaz6tWKj0ACsGmBwIk0Hxce40yqA0MNET2o61GebmOeAJIervdlsZJaMggn7XBoVzSR4+DaPKxqTatySixz9amYBD/HCwQQGYjCHqoQPQ6FJhzTcK6JFpbe1LsNpqiHYV60CG/DAY4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741127334; c=relaxed/simple;
	bh=RucERgRu/pe6B2B1MLUk5Z9DMabSkiNCpkj8dR4rBiQ=;
	h=To:Subject:From:Message-Id:Date; b=CypV49BOYUJS3t/9thLYSYpQwINw6YCFGOU0l6qE84ysfSGKgGGtEEAa3Btz5eyEroYghDLe/+p0o1kdmKgp1awZMqNI3ZwUtJa7+SjjDkw5WFk1c0VLPNfe+iEirwrGkCVpo5XXNbm6PXB3yi1qJnpnSeLk5epfsuEYgGVSgxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSxKjgn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSxKjgn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741127333;
	bh=RucERgRu/pe6B2B1MLUk5Z9DMabSkiNCpkj8dR4rBiQ=;
	h=To:Subject:From:Date:From;
	b=JSxKjgn4zAKmrXORNspOaiitpzv4crrkShhCVtA4PJumNlQ4MlyDfJIJYWu7ng01C
	 PjlCS7k2dXWKWbaQtKvh0k13n+Yi0CqeLDjy9GbH5SGPpcgKxGmZOgcVDcH5hjenzG
	 CDkkQP0+NhsbcAJ6pyuHyZWRQ+F/CHVaHUxDeOQPx3GEYsop0PNQNzlzscQZ0ASIYV
	 mxhfxsdkE9/luYkhCj3NYg6eweP28H2UXJ31ZJkJ0147wrqWZHdnAeT0q+Iil/eqLy
	 IEofvw846MIjOIVTCKyr7nyJWXCgicgUQbm9AlT/s38e6qMxY+FI6R2Bu/JWFw1U68
	 lDMsUvV0agEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166CC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112733358.17911.10034225359760022125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b33609a0f66e4be498b56d52a32afa29399daf5209bc66c2269a98a62a1bc4
Date: Tue, 04 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741127333

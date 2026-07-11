Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5777C26ACC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783729714; cv=none; b=n3dS5db9NkpB7V5PdPWolTIAgEP/0n520xkSHeKpYvkNAejH4rckXNLSqVIf1Vw5pRFUk2LRhu4z32mQ8iaq2VCJUtNDTnQOy6AZB6PBAKkBrA7/igSzwU4BVzTgBSeQwQzWPQXhaF1U+fdcd8b//ShVyCSnfSfnjhvNSM12Iew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783729714; c=relaxed/simple;
	bh=1MdL1nNCY94bMYZKi4yXw90Z9efrCdUqvgHx0XuGFUY=;
	h=To:Subject:From:Message-Id:Date; b=U8Pgv3bFif2+Er/boU+RftGZPXh0JQnPk5RJFhjjcHA4n6qhhujg6byQQ4EwoPisXjdhBOTCfBkaLXIcJ5MSrqBIOlxJwNqaBS/d/pznf+K/DZY6u0vR/bcWq4/RLNV85xWftdw7qMpGdjDDNZfJK22KnLERPZDU/if0tZMDQQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDl6Atq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDl6Atq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE81AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783729713;
	bh=1MdL1nNCY94bMYZKi4yXw90Z9efrCdUqvgHx0XuGFUY=;
	h=To:Subject:From:Date:From;
	b=qDl6Atq+xG/h70LL8/xsyhgAUSUAjOfY2gOQMidCJ/m6qHjCFBKiRQp07IVLYCAtA
	 64Rt0vB7oNTOJ+J5hGv3KbJZ4EtdG5ipFfmGNWXXinZ4BLQ3WsXjtuJSI5MHboVMPw
	 l7R0cF9qGpAHStYaJlNvxY/ts5QGoQ7TZGqW1tF5kIjTDEuhBZMUNstyoT+5eWPGmI
	 AEjCB+PEk1xRP8ky449cUJb6xjRqJg057aSM5//dSSzun+brM1Pht+gKaE/qSKWwm5
	 meDSd1YBTd/k2B1s0vCpXKduzzV1m49jsy7ECDWuH7O6KnRA9Ely5CPsNxeRUQ3xPN
	 IZmZyuAk0XhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD51C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372971367.29084.16954214645871836142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048bd6eb5bb4560370e93c7c7b98eb698f05628aabfd1af1e7181484e5463b73
Date: Sat, 11 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783729713

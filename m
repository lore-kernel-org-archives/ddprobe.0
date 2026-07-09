Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F12D47FF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625914; cv=none; b=lUIieYhqeyy1jdmbzEvthSiHyQZisAZ7ILIjMuE44drbbrvYrbvyMYolpVJLJnvaqTXNJQZL6XZJz13bVxPGcgEuC+G0Q/m0iQ1OvyedQw0c5RqBRkb+18Kmz4b6cN5rpmYTslrXr4yK8ih5hjYrYS5t9prrlRaBADJ/7Iov3QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625914; c=relaxed/simple;
	bh=3/fsKm1S/cq3Xrud4Sg37PBivesRettGPZAciJnV1vg=;
	h=To:Subject:From:Message-Id:Date; b=vFdbZoehS364au/RXdN3Ik7o2P7scYiJrLEACsv7c/UJ/Emh8rPP0YpZ1BnvGH9lWptGHGgGOLlYVi+J5qZyc4pvwEtiB+XJYCgtyPEMFA/qwo1NfmbdqEIQSklLbD47uW+KvGjdff89xToluom4HxvEd8R4N3vpGDXDz9ZrZDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBuIqifh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBuIqifh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA70CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783625913;
	bh=3/fsKm1S/cq3Xrud4Sg37PBivesRettGPZAciJnV1vg=;
	h=To:Subject:From:Date:From;
	b=aBuIqifh3hy2kxqAYKnZSCrh8eFP9Ya0zxQ9sEouX3Edaz2RM13i2v06AzTiCqn6+
	 ippGJRzQ9TQnn8bq490K5Deh0g+XkWd2knLa3TPHoEXHVFxQnVq8xhjFQRTr/zq5ry
	 suqDVAgKXKbGvMa9HMA6bPRrMx4ctEIyXD+YPdTZj9LctDz7eAWeQVLSVk/LKtKRQ+
	 SJOp1kCNlzqYVaUZbJPTYcKcfsmbtl8T1hYqNFuerzdxrxWSIVkA/fS3lpbDoHGQKI
	 XsrLrQn3GkpnXZKbo2DrImiWyB455oKpKXW64pjSW7DdoTT2rcaUViLl2BRXEtDMj/
	 oeVrS7BWvTDzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8247C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362591368.6403.17876521039307336931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b6cad8ce18d12eb2fd645dc1d5ea8bfee0dc89cfcba6caa454f1909f932d94
Date: Thu, 09 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783625913

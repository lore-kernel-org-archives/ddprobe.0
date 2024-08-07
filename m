Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE9B664
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723037754; cv=none; b=CTY7/O8KJfTyjzuwht2pbjvzPWFzj0GY2YmybaSTsythS2XWoaHyAc7XN0mou6yMyH3WSyMkQYardiSeJ6Nmfi1LITlMBaipUhpkfs4W5kdHptawzKhkMyhlZQTrOjxzD987Ple3wVDakH6j0gWq/6MlcBztfDemssSNyq3f7lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723037754; c=relaxed/simple;
	bh=xhPPDWU17iHcflv/FbUFh/YnMjHp7UUkae1QfVDhOkw=;
	h=To:Subject:From:Message-Id:Date; b=Z1l5LfbC3S2o9/O7yU+ZgSHVcVn4P1i+AegYhUkkFy7tbV0k+0MpgT1Gw7iU0ZdSsIHfCWUN+fuU7zwhIrzGFIT5VLQQHSblblyfoF4I63Df2ua3UCfjs/YUIqF6u9fveu8Jn85SuzxiY57zwR7uvkYm8hIeqXoyaUj9/FUK9Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0DmV1YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0DmV1YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA50BC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723037753;
	bh=xhPPDWU17iHcflv/FbUFh/YnMjHp7UUkae1QfVDhOkw=;
	h=To:Subject:From:Date:From;
	b=G0DmV1YPxgeYTND6w4c+a/3VB2R/Z18l40PBQcsIwa2MQN7givzeYaJYNDKB3QsRh
	 +MGXTUvo71XSfOcp67TGvph/ONxW7Svje34AyH5oXieMVErqFhnJwM3mNTM0rh68J1
	 9FELoG7DLIrGPDW3L/LefwvVibRx4rcH4n8yy/C2H7l7tsn7dIWwPAorFJ02kXZMPK
	 8vfmUxRcTM40jV7HHBii2Ds9vXZ1FV2g+gDxIIzAdO9p2haut+oQqtO/iwJXtRMcM0
	 zREVqHCIrV+RZ+9uRFWuYYE9Q6q6WIVXgr7x59mt/nL0Wv1htrd5saQmS/REMAiWJJ
	 4XqUVlo3Y3d4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F5BC52D71
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303775362.6852.13961758867905080016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe73fe539b654412646e936e9fa447f8448009729c69dc75c852b2f61a2d56d
Date: Wed, 07 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723037753

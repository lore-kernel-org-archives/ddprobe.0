Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503D352C28
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789516834; cv=none; b=Yh5RjaE8nOB4SEVct1AOj7f/6qPVUq5PW/mORdrXlDhcJ5gXo8yMrGwxJqUc4pQpPKsAlI47PlJ/FzkzpabtZtCSjlFJFhAogh/N6nG7+yT3RBE90u93uWbD7Xl8emtu37hYj0B9ASbHYPse7N9nU0sI0ZPuljfJXC7PrOnlzd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789516834; c=relaxed/simple;
	bh=2pDyvas7eWqZ0023NKLJ2EL+QrCWH2snVfuTQadN2ic=;
	h=To:Subject:From:Message-Id:Date; b=icOrllNFg9pH1OMZo7q104klFCNqShmlFddBNmIgfv2/s5SF1aIHabXvwdmqZJJMGTJJQ0VPX5Kx294HYGvqi8LTThcYX7lrv3FsRnEPg9E19dXdngmvc+dMaIfkqqZSgxvEzCAyRavjVvza+BFJQJoAI5QLSzx+ylHzolyG5T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewHeCINS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewHeCINS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789516833;
	bh=2pDyvas7eWqZ0023NKLJ2EL+QrCWH2snVfuTQadN2ic=;
	h=To:Subject:From:Date:From;
	b=ewHeCINSUujq0WkSAbYWEzHneBHYx36jSKT8KacnBdqwX8CxDB09vt4iKN3Nax6oD
	 PcpVqu8D7Cw0H7KEf3UJQAF/gqITIORxqoWeVHPY7Q9ANV2z+1StykMoht256KCOrc
	 X89NYxJQ+XqwdrDwb4VLK9kp7LqfnnedsJi1RETK3Z8IylqrZgNWAgULldmCwCjJa9
	 pyVY7fweA1Ek6hFHngVnt3gHej/RiHp2XziZW+7OdVec5r+yxPnNeKoGmdhMc7e806
	 NSm8udZB+XUC9lzuuJ0iIpDKBcwbB5p6yCV4WHX47RCSOLE40fA9fjcIZxxTDGsyFO
	 EcL6SG1PUy3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD03C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951683368.12369.6991536583113719466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252e719e2ecd40a807826652817c3ed38923d517a85458f454572be0748fe1ad
Date: Wed, 16 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789516833

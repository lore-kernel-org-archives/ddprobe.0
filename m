Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2173AB48F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782340054; cv=none; b=cGODfqP9MjHHSNV35wHSkZb6yNDgAG6+wpY2pHzbeoqVybH8CFeeZirZxyVS1+VGLKOg1GbPggYOiy5oXQlw6oUNmD2VxTdxvQin9ITQrwkDwq5KTPZxY7TRPSJJu6j1/opO60fm4DxeHAjLkMKqLkra6j7YywoY5UXOg5u4luE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782340054; c=relaxed/simple;
	bh=8p1Vhx3Q4Er1Jqt1bLirjLn/WHJBZRZHPAC9ZlJ4cXI=;
	h=To:Subject:From:Message-Id:Date; b=kuCD2zaDhrmolza9fX3qyaXzVafIyYhMrZdDGfAorV3ytqo0s87y4Dgh8Qdgg8hkA3Z59NjErpvJtRr3nNeitTUGF55YDxkUrCJ/Lj0cq3hSkcES7RnHQL7Y0xOqMHFXgp7HbSf9i/ofgldXXHpD2zpAbEM0AHLhpMxzVnYCPG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjS2tzMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjS2tzMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E542CC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782340053;
	bh=8p1Vhx3Q4Er1Jqt1bLirjLn/WHJBZRZHPAC9ZlJ4cXI=;
	h=To:Subject:From:Date:From;
	b=mjS2tzMl7R1/3S+V/wVnBi5BDZkMdP7iMsCkg69UIRBnm2czS1ActXS2XPcDYuSl2
	 dPabZKNXJfBOk7j6kw7zD0Z/RD4RKmjypn1UKKwWdNzW/MjDeVbhW2PQ0bPUAlzW+S
	 tDI3Snnj1h8rnYZMwEHfYrTHsjAH5D6AiLHCz3czaAkP6JZABGKAUTWE0vaT3Jrwhg
	 pPs9Oon5WQCbmZaYW4dbs6xFstJRcfiuITJJSrMlqB0IsGMyRIyjIZHo2h9iwqmfid
	 eFA6KfV6/G0+U1hnJrp/BEHqTz2f5Nijt0qABfW2LExKYa3W9lwmYqJDO+D8LEWY6B
	 EqpZX+YftHLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB74CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234005373.2230.13884913556654988560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418c5fb5159d9854bb473910e3b58431b12c14b830b58e3c346ca1fb5b36cdf6
Date: Wed, 24 Jun 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782340053

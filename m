Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F5A24BBF4
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784250514; cv=none; b=CJ37dYqRMm9hF0diWRwazCxmZZHyqZny+YxualpvMOIoKWKux7RdkcGiZx704bMGqVEMQqlU2AyMek9YIKEwS74J+R4/8xbBXmt8VWyQHOfTXh4K32qgVzlDZVfODJBUkw+P9pwYxJ1ch1bBbCXcCQtJkeP/rPDZ+xvDAlJHtBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784250514; c=relaxed/simple;
	bh=SoeLVRU9xbz9ETQbg9iCynQjuepDnBN+ZoRYK9g/3Bg=;
	h=To:Subject:From:Message-Id:Date; b=TWYsZ9GDP5RH89eMv1dX/0S/QgfuQCKCNa3bEuyHM+Z60VrEw6qNxH3qn3fFFcEMXt4ptGgrcnp+ZrgkI8JPuUrNkQjObkT/zPXM6xNLN32BF3Haj0dNeeDkGw0VuSIAsBo3eD+k7tzws0mlzbUH8qRoCYc9J6y6FIYCmvXOTZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeKOeS1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeKOeS1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF6AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784250513;
	bh=SoeLVRU9xbz9ETQbg9iCynQjuepDnBN+ZoRYK9g/3Bg=;
	h=To:Subject:From:Date:From;
	b=MeKOeS1dO06xJU+cCVSMoAJ+38MJ8hpDK8BcuDxU31uvbipcw2gBNzqN0cVgxjAdl
	 uwIiUJaMiFF6nl57wU5ZdoakGAVdeeB3dDGTnAq44edOWBdWfn3iJInCC9Ct06wOgW
	 Lccja5Y/rCmA6QohDgvHRJWsZe/8mP5exQ1TZECm2Elm6TeEthAVXJkmBCV1pvms9j
	 OMtav850ZFQu7DzXsmoGQWAOaZROuj2sDoSJcgTAXFVwFRkKtQkU9xw2O3QcWG6+5C
	 rkgdQMM+zzezvOVeTtKeZVR7+lDvrPQny+t3eqa3DZvw3axmKYK/mCjGPAbZGLgdtA
	 1h9D//XyGRscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D37C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425051368.1446.15000065931691294534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb060da1907de0ec082d53936cfd44a720e18b36e36b00d04fe0385d54a8544
Date: Fri, 17 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784250513

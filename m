Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5368F30AAA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783109314; cv=none; b=QDi564FSX2RwcQ6i85cllb/cgzcHAr3VAN0SSDGTy/OOt1lO1HIpDVMW3d98ATrznFhPrxzSJoEA5m/H+Xy3EHGCJPG357BKDZLKh/ov2QG0mPX4UHzomrwPdhUZKENA8IW4Qtc27jtDk0xUel1L2OS4gU9DuadgvW0dp6omQr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783109314; c=relaxed/simple;
	bh=dtOWdGa9hQr9GMekfHiME+TzIZdT4JiuGo/2nbS2vPI=;
	h=To:Subject:From:Message-Id:Date; b=AzYwM71eePI0j/G8Xsi/wTV4+rY4oB8ugyQXsufEwdONOGZo/aJjRc3hp4sAw0cjF7Ho0zIjb9ZUsTqjSQp7jVQgnn2W6K3Pgpc8nyILJvjDWNqJPfGnRDimK6zdiUHjodjD0hD6TIGFEEkqIIjHWKYeSs5dTedu6h3oOQfnuLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci28Rzc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci28Rzc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA29C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783109313;
	bh=dtOWdGa9hQr9GMekfHiME+TzIZdT4JiuGo/2nbS2vPI=;
	h=To:Subject:From:Date:From;
	b=ci28Rzc0//Mj1/AJ/rHBpDUyGBuzdUSYLe3+LqchOXeJ81EymxI4IUEYrFwLx+rw6
	 v+0Cc23lejX/7Zt62LSza7/e7PEF/iEAeaFyZQeavRGVPtCmf2URRbRbFyKJKQWzWv
	 GORNECgugyB2D2F1k04Nf9OcD7+Hu2WomCdz/ujWhuC+MCcglZxNA+FumFD83CCck2
	 pW76JfZJ8rWDmmpyxjWJCF0MrN847AzRxKBgyy9lBE+QjewOgdg8th9964tejzrZKG
	 DqV7ikxAvMV50cwL1tuFA448g4kVVEfJElO1UPoJAlTU7ESp3RHTFRJvzQCAFCmm26
	 E/DLS2eZUfwuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9747C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310931372.14143.47859104732397535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1299fc44d723fe5a521d7118b3c031d4bf413f408ffd34137a4c279297a6535c
Date: Fri, 03 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783109313

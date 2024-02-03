Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227D4134C5
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707002297; cv=none; b=I4ngQcL5oQ5HETe9AKML+ZtfUGmK747s8QqaHnx6W1Sh2awZRvxChXeAfZ0FyWfj1Lt9biiQkDh/W0KuyVtDPXbEwQFELZB/p3dpY8NQy51bXcKIplN1OZ0i3Vc1ymxWpB0lTkXrGpX2wncEXFy7xjFWlI0KOAMFtvSdn5IsAbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707002297; c=relaxed/simple;
	bh=vF6Xrx/kIo3o2EPrR+Eb2EI67W8Z27bfcNfWTr7y6q4=;
	h=To:Subject:From:Message-Id:Date; b=mmQKxFMil6vdgnE6N1fMpYxDAMNvyEGK+8OWGA2NWkx0/24rHxZvse5HFtHpzST+untfWnZu47RGCDzyfTe9v/XVlKUYeQvZlKXqqYWTJMMEbWUhZJW6u+6EjRktfxIunZkm4IxjsncdFu9OvcVbLlE33PIdVJbVvOHDyTkumdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvJhGwTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvJhGwTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96BA9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707002296;
	bh=vF6Xrx/kIo3o2EPrR+Eb2EI67W8Z27bfcNfWTr7y6q4=;
	h=To:Subject:From:Date:From;
	b=RvJhGwTCfO3vQaNSSqBOMvg+9SB2qdVySknp+d6ip/2TMy/FZBOKxEuoR0gF5IFmw
	 wbMgzwJPwt8XG5Y+Uv99fW4DrWX/X06bTJ3nLP8ccpBCEBF1muBPNXviMx/nSNdIEP
	 G6YZA1tCEc6L9sTO6dIF0u9OEP3rAkrjIw5kcTgKXuy8md8bpvXXZObybqV/3d+jEo
	 45yaaGEQ3aJpsRx2VDMm6QBrrSxmUpkKleLxPNWbJvVXzbhTKJj+k8xrFzpO8OegEb
	 2FmpFuuY4hzzBCgzkeZ3RV0+Bu2ig/9vShtT5GtBMjcwuaOD+C7mU1qE9SyhGCHAI0
	 ks11mSw6iJ4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C47C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170700229640.16725.7229688697881538581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90127ef01c33ead4f3e2d351bf5e72675330d46e849965bff943d75315973e1
Date: Sat, 03 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707002296

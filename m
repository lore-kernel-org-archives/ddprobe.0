Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B5017C2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717982843; cv=none; b=iynkXIPIY2FPb/WqWx2c/LHhDYjjDMoYsbNPix9NxDxeMXI2Q4Qgr2oEU8Y04fhbSW7QPJyd2/Lqm7mz06RqFNFInnqAIyPR8j7XJXevJZKlbt6F2NSpp8kbykuJ+GT3zRnu0gLLsj9o+mke9o/soHm1zn9KpMS2fSNhx2hSZxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717982843; c=relaxed/simple;
	bh=9/SWLUckipURrTUh9Jr9wxG/f0KUhGtRpo1dnxuacKo=;
	h=To:Subject:From:Message-Id:Date; b=kQn/6nDFd81OxI/RV4o2Zk4hlwRXoB5YobYTk7VrWs6HfXHN1PPkb2FUMWCIXsJ9u6yrggFO8hpvbms9wImNqbnLi9mYa6234WJxM/GLZoBqy4TVxlF/3fPme56a80URO06zGbgNWOsTz9isAa8OBju9+mEbtZgiel8/Z9P2++4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSkcnR6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSkcnR6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5957C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717982842;
	bh=9/SWLUckipURrTUh9Jr9wxG/f0KUhGtRpo1dnxuacKo=;
	h=To:Subject:From:Date:From;
	b=HSkcnR6Oi/8jZX9dE3udx5LNAKdUaDShZEKWbUeOzJAe8WixUcBPabA1fHfwJoMfG
	 q5vVpxKdGiBRogNKmkEXKculyTJIHgeMg74T0oRIhKYswYOnZ6nWmAlW2c7Q5bGrUV
	 xDgMtM+YEwH4iSBAvwptqx+62TFlunoLl0TX1eXJA8Oef/DThNpH2dcKpPug47S25l
	 RhL4fKXgOHQk/9GvDG9AhYyHpYxMvqJP2UbWTg80JIKpNRVvaWhi6H5gszUcB43HyJ
	 HZmSFBeW6858vMOn4jh9UJ2Ok99sOuMlO+zygk0+4gQ5EdEXzobJSPq2TqZrVgXcXD
	 NYXTnYDv0dfjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05E7C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798284277.16310.8073659090706529412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f0124d835dcfe9bd7f5ecde640a40658716fbf6f853212e53a24a956881280
Date: Mon, 10 Jun 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717982842

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5EE13A3F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726041954; cv=none; b=Toz8IS3GD7hCpyoNYqAknZdFAo+Cbfni9KvotFIYu5ZAo2NDRY6dg8GQbz3eMqmTGNJoM+cY4PLEc3APFi4eNRC17fMAfqL25MXtbaL/8PrSH1Q59sxX3pXx/QlutXlb+jWGD7UJbywGwwTd4+mGcH/LrLIhLzIj9jATIkQD1VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726041954; c=relaxed/simple;
	bh=pey9r522RJBdhCTRdU5NzzUcql9TSDpp8tJRd09yuFs=;
	h=To:Subject:From:Message-Id:Date; b=NWmAxar4PY95TuBJGIe9a6ZoGjwffuvdWK3d7re3Nkon5L7rqH+Qe5bR9KKNeu8tRZ8gAOtP+bfH7K95xB457KR12CwhJygwQXhUO9BHxzayMRbg3bFsaI7UxpIBg838BMJ9Ib1rADF5st+nVUUFL69o+1Utu6RSdE0/y3sbIDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/pVX90A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/pVX90A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577AC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726041953;
	bh=pey9r522RJBdhCTRdU5NzzUcql9TSDpp8tJRd09yuFs=;
	h=To:Subject:From:Date:From;
	b=V/pVX90ASyznp/C6eUqFrnxDDDEbBcaYErvu0//Kkhrrt+02k2uH63UdKQhJw1Yol
	 beAr9FMolhzDPbZ8miv+zI28LNfJwf44Bcej1SHaXf8YqyRziDuLftxXSseAcu5Azc
	 Pt7CzfZJ3JXcZfa69/xRbNT1h+a3oyNNbR3P+kF5ry3rOKicTE2ZfU5XwIJ2374iMD
	 TlGogO3jmo8q8xFLtNWZGLYY/qg1nwUbUFxhjWXSpjukwmF8kyjCEWHnK+gvLfK46z
	 dpxV/Am6DEogzyCrtAeFrI7sqQXbQ1JfT+Pt5f+HxqZWpGbx+Ti/CG/xCYL8Ata0Oa
	 HXgUOka/VKIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA4EE0215
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604195361.9077.18044733760687079865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22abb38e92a4c885bf86e9b542de77f8e92f9136a4ab04b634574edaf566a35
Date: Wed, 11 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726041953

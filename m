Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19161445AD5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788453634; cv=none; b=gxqmLNPSqXhv6S/nbkqr9Br6TzoK4dcxC9LkijK0p3s3zJECTbJtYhGDDjL6pPQii/vgBfrC8K72tPlk6mcMWi1c5VUs/RIov3yxcUK8n3GXxzOr4OThnHEI8Uf4/2bSqOCORBPEjlUz4PVxwc9jxxoUtfvuRUBAJf2Y8Ck6H8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788453634; c=relaxed/simple;
	bh=jDAy1AlgO/tSKBC4pV5KQa//sc8bkypGEaFOaojCaiI=;
	h=To:Subject:From:Message-Id:Date; b=bsYuNxSa65M7btTtPWRd2WhuFDsuAM8AZcRqAw+yQNGJlMEjFV7Or4nViYjyNKkJcXQxFnVfA5o28Qfoh7EmmMp/ZxvatmvJlTzt7Mmi36a88tWeNO916Xe0sON7VliQ7wFA5SY53SOzNIsi7ZBStPs2er30EafdIOho7oYgC7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpZenIjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpZenIjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFADAC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788453633;
	bh=jDAy1AlgO/tSKBC4pV5KQa//sc8bkypGEaFOaojCaiI=;
	h=To:Subject:From:Date:From;
	b=mpZenIjOMbedLj4hSb0LY3f1qo6Vuemg6AXPe3lUKjSTnED2SYjioLtfvJ4exFjAz
	 /oo0Q3gt12xNnd0by9dg2tRynQ1jVg9ywUy1dq0y9VqL5o6oMEsCQHWj6/sy5791j6
	 ts/Mg8lSQ7412eBQ96dxW+e/o3TRWDuKsILvabY39Dbu51Ao4UcycJwlyNZm1VbPLJ
	 t/xWqztBrujxoTUBCOq61UNjms45eCcUbj1McVGzD8jAzye2mHuHVmneXLEm8/yQR7
	 cZWAhdmT+Y/b6LwbIRd4fFIvUliN8reeOQSmS23S4A5V6zUh0LJ6K+x2cYjRmhYUgi
	 CgB/NHRQ1c3Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C8C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845363369.14584.7193395124196843601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e767149b8baf3aaf142c9a2f94fd7dab0e9e79021d2af32406881dfab27207b8
Date: Thu, 03 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788453633

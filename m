Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505C1E4A9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705603697; cv=none; b=qHOLVmXesWLGppW93Bwuk39ywo0UcOyopdtI7iy0O10xQEy4c7qp6/L7xpOBPelTWdCPE2ISKdoequO9qhwnetYYIbu02oFW9Cni2i++7az0pjUlbf/G1PaI+NIfDUOH7QRl4cPbzMtpKd4FZH/BfEzxZAINENEHdbnODxq4dOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705603697; c=relaxed/simple;
	bh=F9bG2qW61WF+oMuz0Ldu7QpYtL8MHJoNFprqA20rVBY=;
	h=To:Subject:From:Message-Id:Date; b=SbkKCdgGTbmXMuPfEpJeTVfEMxtA8Ida76UxkTVi48SkTKTw0hfCK+DSxqKX+uocFEKFly9XutGQ40Se3vlkMFZfsbbQya9uFjN2fX+K09RILFRGdPBgzbmBqbO4RSohRq+s7glyoX3wFhyMuOoSQUcdyiesX30rjQSAtWJmMn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3GgGDdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3GgGDdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7327EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705603696;
	bh=F9bG2qW61WF+oMuz0Ldu7QpYtL8MHJoNFprqA20rVBY=;
	h=To:Subject:From:Date:From;
	b=A3GgGDdKLYiELIgH8oJ1UWDV3dQIQtFafNkkQDwwwjSr/v3zNwLiVqAlXyrctbJWX
	 cqlD1zJ3MPY5RnVaQlFjtpeIb44OjOzml6osOI+nlk7jRMzTANHWrDHZyyB0IvzVTg
	 MVDoJb18u5PpVAduKgpwxC9WRqjaWlD3dgntODIvSDZNB7ogI1k/xOLOPtqhRB6i2f
	 HDCj8dIhAj/dHBEf3khWLoAUiJLSCD/iFI41nXfrzf7punwsO71gy8G7FIPTpFc9wS
	 96Q7QU1ENh5q327Uwj/IkzcmzphO3MrfcBFgrK/CYYOOQv6VeT80m/vgdY9JqBRAQa
	 vcSWHD8OaFn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B029C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560369636.5299.13947434845219677484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297af64ef58772792b8862de8afd732b5c7654ca3565d3f3a221d6f365dac28f
Date: Thu, 18 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705603696

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8C810E6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729395954; cv=none; b=aUrVPe5l23FgJ3SjbwzsnQ2p2yP/W08wCN7DxL20ToGRBRJquuwUTKccxg9qvdizoj2qe82Zo/PBZgqNdOFIzUUQtOfH0Ptts+dT+ZOTEA9TU0R0pqqKoJx+sKfwd4RUlqsLyebmikx12wGRXiMUN6BtUjMccI7bx9spVrz+NhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729395954; c=relaxed/simple;
	bh=TDEotom8U3i3tI37aUoDAWhdTYOImekamhH6gKJZhtY=;
	h=To:Subject:From:Message-Id:Date; b=TJeTdw70gTaJ9i9VpePNt+e7vx7tYdK0gHjEIXxjKti9lurExDgTuJGCUCp1V1lrfV6SSbzV3b9tbxHV1e8EnVsfHIUW0wQhEdDRGjZ3btnIP9QbNPt3DJ1J1VV2GiH+6BbLZNmERRH7KuoOPZlVp708Im5xPwZU24PeFiiXghw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gC+187Ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gC+187Ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AE6C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729395953;
	bh=TDEotom8U3i3tI37aUoDAWhdTYOImekamhH6gKJZhtY=;
	h=To:Subject:From:Date:From;
	b=gC+187OthLNtd/PqMtfcLmLLgtdCW8Lu0PeF1P+bD56Xy5L5WUwkAB0e22GfxU+fL
	 EZgi9NyrqePjrBqffZUVpNKFnoJPV2CndigXN2NACePTfnTNLLe3jNVqIz2Gvs82vW
	 vNUA/Rk1kYvlRArxkUYjpc2ZvOPKEDEmiBX2M2eMCa2UYB4yILXpFTgQv1wYvxGnCz
	 5jeY6eSq+ATe7IqD6miDzMykK2RQtvFlnrtqIFesF+St9Mvwytqjjv55Y2Nts53hjN
	 hHhVySe2L/VWrLmTuzyCpXeaPEtssoZBsORTem2JA3dWZQx6PHkNVcbcDO3facQszK
	 BcWv2t9FtWKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B5D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939595359.21142.11847567065096614122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08696eb706658efb99a7143cd650cae05fb26bb65abc8a53f5ea5d01b90e78d
Date: Sun, 20 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729395953

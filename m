Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2B82E338A
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741825134; cv=none; b=FANS2+10UPVfk8BypzPSt9SRinkdT3ibym/kYUFny5vkuwzaGJGX96yjeU5zVvsLaaEw2OHnA8ik11HE6FDFpt3pUg9/XnqbUi+v3r+uqmlBwfEFVvWtxggQYeUHVrRwiPPKAUCGq0xnzYLrG0a+Gd5TPe7fN1/SykGhGK7pqbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741825134; c=relaxed/simple;
	bh=I00t8pYBEDJ/2TMG5+WEFHZFoSud62qnZEL3r+FSOM0=;
	h=To:Subject:From:Message-Id:Date; b=J3xwIp4frfriqD5L444SgvKr8iyLu+/28pos1Dpxy8fDRzGFIgER7ks05Mbi4GF8Qfy5TfhqDd7OPcyazyt2YOQcIku+XEBlNaUR7ln/7ieY6IODI2mUJiIJHhUB4jurIdSXE+sClr4DRZWUVLyGKIiIobK7soc/cbi77cdn3+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnZ300VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnZ300VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B31C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741825133;
	bh=I00t8pYBEDJ/2TMG5+WEFHZFoSud62qnZEL3r+FSOM0=;
	h=To:Subject:From:Date:From;
	b=TnZ300VRypLftyyQk5v53jzRkGmaflcjxiHIeLdBkW2t1IwYwobPbMhUqnJcPn7S9
	 aVNtDSB1vH4/U5KEmlNVt47Kt6079EryoKW5YVlqGvLQTNOMjgjob8YKWu94JoKbrM
	 aIHkwsxe1F4TIJ4x0+dNH96kma5ZiWObp0qezdwYjYaTY3dEm5lCypBnnIed1LON7p
	 A+DK8DSVsc6q2Q7ydR49Z5CDfU14WmLU6tM3VoNmtavkynttdvKvCJTcXTBiurvtuP
	 i/tqLhBtuINSDIHssUCUxrd5pLoD3QgvvxOd5QOAz4H5H5fNdK/InwP/BePoZunLaO
	 bKAb7fN1JcsCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C129C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182513362.1226.10696853412416544696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4d4727dd5deb887493c3d2d562988ecf725a0bca20d2f784ddfc4886822a3d
Date: Thu, 13 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741825133

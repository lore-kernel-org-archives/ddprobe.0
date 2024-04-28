Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683D433C8
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714340543; cv=none; b=btpNGFkHZeCxteXMimTNXUY/nCxwvY/vXPxQdcBaC8F3mRFVcGLIHmK3kFua/lL+VRL3p1T3ne+wxtWUtM5uW31HmQ6WSQ92oKJwytfIdYdlw4ob9qPjyuRmO0zESJwYTIaFiDtU6hVel6gmMEkWX1OqAIqossRnpax4ufcM9Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714340543; c=relaxed/simple;
	bh=h2QUYxPo89tDMqAzqJvdz3PXpnEANELhxE0ewWM+wQY=;
	h=To:Subject:From:Message-Id:Date; b=JXFIus00gI57rkmctMLVPaicr4+gncuHa+WIDUmvBYSqS4SZcL2jtUpN2Y6iuCP1KA4Ddt26IE6a2825IJIpZlx0BP5xXe31CzuHyNbr12dkfs0BBuOkUh9AERNHuAaE6ScLjwfcuZVn++Bsu3KmlvlVTmwCu+BbJa9yO6jYdbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP0uLmnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP0uLmnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC5C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714340542;
	bh=h2QUYxPo89tDMqAzqJvdz3PXpnEANELhxE0ewWM+wQY=;
	h=To:Subject:From:Date:From;
	b=VP0uLmnm7Enm6ckQ2k7jPJftbrJ4cvJtsVpP1kwPtPM3k1nEc3qqegpt/QBU3dUAO
	 eB2UOmzXfuHq87zadIkUBpedoawfI9CqeR8yG8qEVaY9RV04kqpUbYdMES6MERFNg8
	 k3tv/osZ5H1cyhUDuc9zOnEB9j6hJpPI6lsWCr+AY7Z8wEDL/8D+3voflt4C7Wo5SM
	 9xjRDlEvPYyJupVUQfYU0fmgxe2sIEPN/hNh19FuQZb9RiBMge0Mu/osvchsYTbu4+
	 guNylPhPJ01KJJAKUe0OtH+Ntl1l7wvqP7awGV7HJoZfbGzGdPH6Jb4uri/cVGqVoY
	 cNRY3oOhAkpHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70FCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434054279.16076.13309068160414332977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aca3f09f03ec126a9b87c0a4e522925ebf069d22eceb268c590be0b6984d83e
Date: Sun, 28 Apr 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714340542

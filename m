Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362991C3038
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736801754; cv=none; b=R/qgL8MglET5vHE1ugGGfJvOAbTI/dbvfl+y2y+SsAwXAYwzmvnJ9CoslaHec/c7fbagix7qgxVjqHaMfqr++4ceaDfythROgXnCaUInR+7ZTfOi2Ga5nq/uV1agoqx1hI0NPRKUtROYV2+Jh6tIwMUbkU67fB2pkPcaKcK4VDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736801754; c=relaxed/simple;
	bh=qkTjmxPwM77RZiTXAc+ZeNE5+06qTZaeLYcVd2eliFw=;
	h=To:Subject:From:Message-Id:Date; b=UhDKAuamXFYkkH8Gu2pmhxneDuAtwaKUY8RyU50X1b7C3REcP+DExc4W1p+MPQP7Z6rc0Po9EB0LFLYae7QzH9m59fs9oIv+dyg9yeZKcc+4tFajt7Yt9OVQCNMpvdHwX4y+6p2cXaSHABKBmIEHozmAO/5+jIloAT848SpgcPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWCYpm7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWCYpm7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736801753;
	bh=qkTjmxPwM77RZiTXAc+ZeNE5+06qTZaeLYcVd2eliFw=;
	h=To:Subject:From:Date:From;
	b=aWCYpm7j1gwcZtjQuzG3wEp3OM9yUy7xCMM2NeawmcEOHwbhRg8U5pBQBhAMjktIb
	 Ef8y+dqtdGCczHEOBdVJ/7YOUrojp76X8dtGrET0OgysNVQzIBayy7X5ktJieGP3ND
	 IIr8wa/eYIi+DXDo0V4/KHFo15j71zuuwA2laGfE4PRhJ95htyK01ysqpYye591YUd
	 QItOBJRoGksTmSQUfrV3suNhrxK/1I1Np81lDJNKVgWy2RM8HaJuWgvly2ekbsscHy
	 upNBzHj+n3ak8pz7YkmnChVFIImEWEVHs280OW8iE7NdRbhGjedf5N75eoY/lRplH9
	 QTgQ310X8uDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93313C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680175359.12111.14883204536004241228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772bf8b379303d43ae5ba65fe7723b136bbf3b144ad0728fa5440f6fe66f2af8
Date: Mon, 13 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736801753

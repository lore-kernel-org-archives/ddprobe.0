Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F027713
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757857194; cv=none; b=e11+wgcG23/hwzCovDD/2YESUfmw/gbGA0qdYP9VCgGnUfU1hlEVYkOjO0U2EBxzN0CsB+l87NTq11ECGCxNidpVRau/LsLScnhGZla6k9N6beXC4M14jtgpMKk2cHYz2IZtSfc2xwvCbc7ef5+qxI054eYntB8zNX5G4iyXhMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757857194; c=relaxed/simple;
	bh=7rGmRMD3bP3GE28arzLmGOcXAVycKXk/5mFXN/ILzBU=;
	h=To:Subject:From:Message-Id:Date; b=o9WauK3sNTY8V1bkTSt9iyqkhcnlphTT8cDWOaQKrj93G/tCKtGWELlqDBwGkRcAdzLy7JSsiBtrDnm4Mx4Mv0CnQW+OVZru4rVmAKQZto9fTu8mm1AgUhYlsRbgSuabIVxiMW3yhr4AOTQU7I84/Ogmw7ZumrQeU63pbteOuTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9sWiidf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9sWiidf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757857193;
	bh=7rGmRMD3bP3GE28arzLmGOcXAVycKXk/5mFXN/ILzBU=;
	h=To:Subject:From:Date:From;
	b=G9sWiidftoybGqxqOyumqE/xXzPEwHvNXq0qf4z6tiyA4OfBcJ191XFi5tvAyxXVe
	 /8koRaSMcdErEHkZu/CuqYreNGYKxZBoqfBd7NbLYpCufPMZRxncf39R6effAwkX96
	 Ks9Dyt0CNyydGh8WmLcVYsWnp0Bk7oeK3JLY5v2nQtZa85cf4joUuN7Q3g6QxmR+Hs
	 jroOWyNVhA9QmBKSqvp+ldfdjH6hOhZzZA55y5+r750HBxz65I08y0toKR9pwZcx24
	 MUa25tlqRYwZvohPcjIo3SBh63UqDZM3vKesKacpuIqHAA2M9uv3Y4wrBiLBghflK4
	 5ghTWtSyhRqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF3CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785719358.22204.1265237079037945856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fddfe65346a1ee9742e5ed3defe6201e7b533521b5e2c359cad5c2ffa52fa2d
Date: Sun, 14 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757857193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9368928E7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717043063; cv=none; b=TkW6WRNRRIHmmqT2XZLAvltkQn00DkQ9skJqZe2O7k5VeLKB3eAC1xjJTwyclt+AtOK8539ShtvnqRQHmAp8NnhRXU18OIWfaUc4j3I2LgJyXVt9nTFLwBxiaxiCBbWIbX8HHX2yPhP+GEB+hLYUoGHVg7rPnJS9lesXMFCqcy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717043063; c=relaxed/simple;
	bh=XSZB/iBP5TO4347zKTUefIZ2KPht3yt5n4iGaONtqMI=;
	h=To:Subject:From:Message-Id:Date; b=adg3MjZSeGE0PMfaFwq7ukkv+H6xwTc6hAR9r2QBenHooE1ff8cdogAj0uODmdVnvOOH4EFRm1ngoLRTtzmDgOmWfabfXeqE4YllAlLBUs6rwfGj15A/ruvQwdsma/cmHQOosaIaoXgREkU/CtyhKu+Ul7QJvuFv7Lnpd6tcVbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDpvQh3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDpvQh3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 293B2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717043063;
	bh=XSZB/iBP5TO4347zKTUefIZ2KPht3yt5n4iGaONtqMI=;
	h=To:Subject:From:Date:From;
	b=iDpvQh3O4Z7Qr/pO3USSbZgqazQqChMjAavg8JopryZpe0EubDO9LzImg79NCBLpM
	 lKPC2XPGHq8hJyjZGaJyGO60dUCzJEL82UksqGprDoYrUSuKtWGAOSKzdy+fAA/TOO
	 DZdtOPwY5b5E29IZrflECOA8cXrh3SyZUNHXFSUHnVtl0AoZQiP1W6zSgpsYkBAVgz
	 X962pG3uJoiMnidUCQitf8N6XIN3Hzy/8FmP7HR0ai2PT4ku/n8q+kPk1h1mpFYZTK
	 DMbr24VGlATST6QVLt/myt2bc3a95Fpj0dodwzjY0Q9ZFhk851tauXyXcBinQ179c3
	 o+6g/E0Unwqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0198C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704306280.7513.11567195327115623027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9dfcb967212bc29272a667e78b69fa3d65a968ab7df4a860ffedae567a0f47
Date: Thu, 30 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717043062

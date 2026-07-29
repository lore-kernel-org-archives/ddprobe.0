Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523A84D8DBE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785351634; cv=none; b=hVAB5B3/MLJlkA+ROJ8k53OKR7IGb6ERNWUAVQhNWY/hhu/hWJwFb4PgQ7i9i6mhAwUflY1FVnRuaL876FcILUyhTR+JInFZu7rswrAgJqOCAy0K4QLf9I4d9hiG3zywOjAc+nQDGBldQ/DQ/Yl/gd4f4ey9li0YYvGOvfeAR9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785351634; c=relaxed/simple;
	bh=HkwV2gNgiosnuvSmC15t0aFEK9CUCf2mdWROeXDePhU=;
	h=To:Subject:From:Message-Id:Date; b=E7/YEpE0MqRK6iUQ9s+iBkOz9JD46f6DYpCXW6Gm+hMR1tDMqhCSCL0X6D7TnmAVVpKdS+3XMgsKJ96hkYK5P8T1u5K5bpHdqo1Bx/JHThQkFoGRXViA0qct2nZ7Snr7IryKC8rmJYvK/p6rlbot+TIthwEiCDQpPBsc7JBjuN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNlK5p81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNlK5p81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785351633;
	bh=HkwV2gNgiosnuvSmC15t0aFEK9CUCf2mdWROeXDePhU=;
	h=To:Subject:From:Date:From;
	b=uNlK5p81cEVK+X/PWZ2UxKyEh8Ch1wpUMi+0RCGhGjyqL+3z25F+7EiLoYATLFdUC
	 LpQHtNa6NBNrCsaqtUebtwO48g4QxMAfZcns54MJFeqRg3ph1bA1jcKNtISJGZKl9P
	 8dtokMlFGi9muGKkFnSBB77/zSHTOqGpukPzbp8E0W2IABVqaCUrCp8En49N4T23FO
	 D6Jz9Tr8c+ar6283VIaq2B1lD5PXWA9l6CONEeFbKUgyFXMysxXBet20aoFz3ZX3Ok
	 nj0GKsSVMU3jz44pmj4+Anqwqu7yzp9D7G02LFz9lpZHNDZu/H6W/FG9M8oYZoBsI7
	 7CkrBrwvdPvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0939C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535163369.18261.9816093324412829951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea156415bb8256172172536df3a04e92b5cd5ea6832f3ef498eb4a405c774131
Date: Wed, 29 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785351633

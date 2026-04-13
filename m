Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2110B4A32
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776047854; cv=none; b=qMIbCSnf8gujvvYorCL+QZYAGoRemZRm67+xwKf8zQEbNWfq3KWkQsn+bwS4qpuCadcDQMhuFU6vS5To6po+OZI73PaFRl2upqxiofPa1bzr+l4XdrgApf8olsoXLsDhf9llTLJJbIXD7+ON4phEssY40JgqrMThzhwofJq4Xz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776047854; c=relaxed/simple;
	bh=9WTrlJzq6/kHtrUHp/PHnk/J3ZuefHJUgTthQOygFRE=;
	h=To:Subject:From:Message-Id:Date; b=MBD6hJNhQsfcsCVMXRK/PNPMJU+Op5Qu9wkyJgk4PILBUwH0KZ16NG+Qdgn9w4VTQdWBo2R+HqRsS3ifHVD9rlepLEd+xMA4kIhgddUVQVeGYemW5RNwHzKKl/LpYnt4d8twBvx7ISNGlvya3FkJnGfMUOlCiLJFY/igi1IEZ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXbINZm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXbINZm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FECC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776047853;
	bh=9WTrlJzq6/kHtrUHp/PHnk/J3ZuefHJUgTthQOygFRE=;
	h=To:Subject:From:Date:From;
	b=nXbINZm85D0iVOJ5CD6uOakZv5SPdZGuxw7X4LJwVY3XEcU7PLrEWrfji07mXqI+F
	 ohRIj5U3a7I6jNAk2QWU+MtlzrVW7YlHo3n2qCmFZWYtIvGJer2bsUxTIL7Cvj5QJ/
	 hLJKPar2DQ+GzgfEFaGQ9jPiVlz4IG2yQZ9+A+BY91c4mLKF0+i3P/I1hEKXvgct+r
	 CJU2U/itLWs+AAupcaoSRT0LAOV1Ni05QzxaikSOlyw+XURr75u3XIszrO5PdcVUcu
	 YyPNi+EyqLC33PJqzvBlBgbxr9Ba+kQpc8eJSzj4jl1fr+3x4CVXWtOkGsKF1Y3rb6
	 ql8RGxyJ8A7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B036AE9380A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604785368.6322.12034551037841888721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd6d450d7630941956257fa1d027ce0666202c2c43fe3847533c4cda3b4633d
Date: Mon, 13 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776047853

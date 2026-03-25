Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154C338E5FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774479294; cv=none; b=GVVpZz0GdhyzMynFp9T+xWpkg8e2AsnTEOJPyApqRE04b0QA/dJfv5gdpIJCW2D5TyX2eQBvMM/MOJXQ6+C6Qx9RV0LAYq3DzLZFr7shfn8lpW0GTssODEZufvJ89rB2M9dx0271J/o0UiGJIELBtI38cf5CYdJ8NXDvlUitt8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774479294; c=relaxed/simple;
	bh=axONcma9W9b4DkhcrjTxbTlOsTgP7cCK/9qUF8sZuVg=;
	h=To:Subject:From:Message-Id:Date; b=CsMzb6Tta6niLlPdX+HbBWtzsrGPeCqnet0AkGqM5Bp/AaDsXUgOLMDS2aoQ870Np/95ncdyIABAzAgvXIvEdHt2OimyLm26lupt+cAqRMrjk2hFaX1U+dRmUvkzZwhZXQeu/IQB+59y7wj9+p85VvXMtCx+rXYpoO2Ddpl3fq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7nFfTYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7nFfTYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774479293;
	bh=axONcma9W9b4DkhcrjTxbTlOsTgP7cCK/9qUF8sZuVg=;
	h=To:Subject:From:Date:From;
	b=s7nFfTYOZUlkYVR7LpAQ7geVIsWBaNXXTsR8DYgEU+4AwAYOd5HjORWZT+17GJfO0
	 9gqGfKjqxCttJXetkj7rK49eGbGzT7fLzdhSh8WM1PWj69ROPfDllHu/wRCphwi1/a
	 FFtsNfsR+u9/CeRnjpZdu1IC3arY5Ydgy7YngVvZ/VV7M1FqAtAKYwn0S5FdC1YegZ
	 Vk+OYUQkkm14Di2z1oMPMzzTO0bOCQXzkAFoGXw/rxwa7JnG2GzxZCvqav0U9RZJZH
	 +gZbLikQl0mrmmjauu7tnDHsXMIdgJ/3XdlorwC8u4bEORvTFniXWiqxVDGowAKvlT
	 LMHyu98Id8h5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193E109E52C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447929358.13898.4612041689037817651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251b9dd8b6d0d8459d24989cec733fbdf1a86b0e49453b046300ea904a42d5ba
Date: Wed, 25 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774479293

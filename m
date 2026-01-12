Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFB71EEE6
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244634; cv=none; b=fRIk49SZi0L/AE20GbnWgeQ7+W4V3AM0PLPQTKD4O+qZBjjBEyUOpqYOuXJEHKwn5bahi++Gh5CCQljbYXFAAJNSxGwZlos0au9hgjKFYKK8c9yXdJ5grhFeM/cPK/y/khACKtstQk92tkFg778n+rHY/nn6l1scfDtx7ekz3DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244634; c=relaxed/simple;
	bh=79rMHNTvvzkit9NUdnKwSfyeBSqLMo6ICbKOHK0LkgY=;
	h=To:Subject:From:Message-Id:Date; b=lH/zKZ1atjU7DJIMh23Ic6MhGb3a1j4v8M0nBsj53pm99qSfPZobPkNGUwhWWYIokurZy+tk2gezk2k55aXgwcZchHwKFduz/IuHTW0VHSf6gHEwchugh/gRvGCJ/V3uKtbI6o1zjrGGY1YS7gBQbDL7z7mF+f+u3w9AoDRarz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANXF1q8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANXF1q8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A995DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768244633;
	bh=79rMHNTvvzkit9NUdnKwSfyeBSqLMo6ICbKOHK0LkgY=;
	h=To:Subject:From:Date:From;
	b=ANXF1q8+9c2LnXsxVYatyVRpUFyeR3Y8iXBI9tqefq+7HY1OzNtwz9o8I7gMCqC4u
	 rTfgK7q93ALOLCFF9cdjiMNDSHPdaK2fGuCRfDL5vhi6Tm39ibeokrKXKdOMp7wKvs
	 olN/Tw6Z/RUsZ58buTamotMa8ksPu+APdIUc2TvDlmyFvfIEovG6qaRbDyqjVOHlga
	 Sf1uMgmVaynICKCEa3dWcJAsBWJATMBc1+YYMo863nRCQloOLKpt0BKE0UbIytYOT2
	 d4G7DtsptxuEDI9qU0oUSmk/lxBhkxn0PNxTsrWfQpc1gnZIGlHt/7qkDIKevTBxdT
	 uTxFoeB8zoJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97034CF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824463358.25767.3586337647222978946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ca56363fe96c0c8a41981fb9a3b37cc770b62ce0d6d9bf9d7ddf7bcfd92b48
Date: Mon, 12 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768244633

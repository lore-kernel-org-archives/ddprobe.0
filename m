Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F235F125BA
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710583097; cv=none; b=Ikw/6JJ9h7NxKquq8jsdNIBrrIN/cuPjZ2XbzGTCMsEUMi3EPltX7Ut1b7OCYOo4Q48lFUGYnTqFrIJA1LvhHCQAdpyDGFOrn3+vXwsLYUVkkeJszbLOhDIT6C4Xjgh4TQaSEHl455TR5AourUTDCB4W3JswNzfFgQsYFnHY1NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710583097; c=relaxed/simple;
	bh=JCE5CPZXH0qB1tW59k5LFzOwtz610neYsDYpYJh80jU=;
	h=To:Subject:From:Message-Id:Date; b=nHPV9qAUua5bfpUf4YzMKVtFpWTF+wm6ZUNcCxgI9twSfhzK3clE+rs+JEvn2wQXAAUqEH79FRbyjqKuJDpLntqBLr2VnYkM6j9TTkSd6z62AqcvtUj9c0iacO1zpnrXWFYa2kiKcjXd8uzHzmQmNs9oHWpom2OMmHh6LhVbw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwSAkiOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwSAkiOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF90C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710583096;
	bh=JCE5CPZXH0qB1tW59k5LFzOwtz610neYsDYpYJh80jU=;
	h=To:Subject:From:Date:From;
	b=mwSAkiObI5lqwdVdh+UJ/JpWjGMWcS7EkIUtN+X7U+169c+pPkF3CT7zstRA8sZ3/
	 FQGLWSXqgGzc/C3EPCF0v75WqYm0SN8/MINrFigjTA5sn8HN5SluI3wB3sb9Yn7KOK
	 V1gwSeLzptjClvuxDOmJ+waHaeilt6nG19VBMuCs4MHw6UqWa4uMHwQt1+rlGzPe1/
	 xqKNOEYUZloKepLEA9ZploVlNPoIrfKH2GcLNGGiEvRQD4w4zHdRK3VcCkCzikhx1J
	 4iUzhyB7xTn5ausDIc/AMCexLSx/eaDmDAcheDCrQWR1L2a+9Rr+gk3JWpHMyXTQwX
	 XDCpg2cac+izQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68919C54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171058309641.16118.13356609824651429335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbaa95a064761db80f03d12ae4c5b389412db9989fc392d8f7a06488b53599d
Date: Sat, 16 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710583096

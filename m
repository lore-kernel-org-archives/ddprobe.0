Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E213002DE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765383174; cv=none; b=qHu32nFj3sOE9yb8SNYnJzaDHBI4LWxKG40d14wVwe6mHWrDihcU8nD1ydiHsp5zxE8slupPDV1trreOp+fM2UyShEGfNEIJs5YVLHSVETrGKouEpL8v4A+qUooGuVgdNuqQWBgRmsesiLsAU55On/9o/rJ8PnBfHSmo4vH6GTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765383174; c=relaxed/simple;
	bh=88uQILdu21nT/1dJHT09qXXUr4cdvaFgN+9iE4rdttc=;
	h=To:Subject:From:Message-Id:Date; b=mVPqtKrT8Uqb2zgC7NwuG3ciVfz+oyhXSaXNtIM21cAn7eu8dRcSZFzHue+d3N276vh9GYdKIIfJAt2dbcZRkW8dOeORVskzPtwvkj5DqPMuKFVgbjoRnRQTztOfiLhXgyEy6QzNwooUcfYv+wGfNBOCHCnh5VGesQ0M0awzu5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5W0xCx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5W0xCx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC6AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765383173;
	bh=88uQILdu21nT/1dJHT09qXXUr4cdvaFgN+9iE4rdttc=;
	h=To:Subject:From:Date:From;
	b=G5W0xCx+vmsGyH78dwAjW2BzgQ4agw6H5AErSH0hA/NyOp0jKMvAzg8U05UodNxP7
	 fv91DARTNWXPnvF+7YXsZ4TXtKhf6KklwlFfASX1dcr01tlZ0LlJKVveeNc76hMpdx
	 U42qx6mco3r116T+ZJlVq26S8CSkbu3jj4cJrXwm+4CcSDBFm5K+b9P/4i3ciQg1ec
	 BzVhzOkfE3RSVKA1V6PTl9Xezj0OEJZi8jx3j2yqc/vLRdeGJ3hRUIbrrgnJkwZrTF
	 W3BIRjw4jUDeoS5U9CGGVSF/ncZsEJWsHs4Ssv2f50YyS2aBpE3c1l4F8/Trfqwqhf
	 DemW00cpOgUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D09CD3C922
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538317360.19284.15802945239446007713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f4fe5bb1e51ad401b774c1b81285dd98f16b4fcf202665b38dddd25b27d52a
Date: Wed, 10 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765383173

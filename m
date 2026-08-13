Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4251DA62E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786585234; cv=none; b=hzpVLTIoDWOV3P4AT3m3d74DQvqqrz9aZWQSQPn8WmlMai/A9JJuF/waknuFxMvLcFHv3mxSBYcWrthJLPTgPuGt5cpXTJ12XUgmkVzr0+ggk1hwkRejLBRfIsVpDF8ZfI3eK4qhn/4/Qp7CdQPKrMunLDByGWyn/7xqZp5AUFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786585234; c=relaxed/simple;
	bh=ajqWaIByc1qI9ccUcaseCAXHF5arBZvTF5+yeInuLUs=;
	h=To:Subject:From:Message-Id:Date; b=CD5WbmjqwAn+wrrggaW9egZwxAqH9i9LZsJJ5TkVUZc90ynKb0LfOAR+/FbKYYI4+69bj66vLrjqt7JrVCG4CEmp8Z6hM7MPMKk9NaouMFSvLrtno71GGsZ9pUGz7RJJ/I77Rmcb19ez7Hg7xNRY3oSzG+h3WGE9eA2bZw/rhb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS+TyTPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS+TyTPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2CDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786585233;
	bh=ajqWaIByc1qI9ccUcaseCAXHF5arBZvTF5+yeInuLUs=;
	h=To:Subject:From:Date:From;
	b=fS+TyTPluTSfio4sIxvM1diwi0CzKHUi9ABRRuZKwJqVr6y4lqI8SdsTKNGL4i7sH
	 uusum5uE6uHWX5DyX7eFYAIRzZJkM/+ozZ4aCQKAxMsu6SSF7lnddTb2+hDPVCE3vo
	 vGAv6JEWy5gDL4ZuXRFCozQKCUOKeWKTUfAozj0uwktvWHMhw2Mv8C7zj8taUQxuSh
	 kcApEihE/r4mSIw0g7ZukAxAL8MxL9dCrYQRvkRWYFD3VR6BrkkRqm4LQgoZHwEXid
	 UPMFpvlya7u65UhaRTDHrAflJDUGaU+snfHCUby2bAtbm44ue1z8CGYBCv5TBghatT
	 pXMmiBx/yoC1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55A9C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658523372.21679.1439938706637883329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd162f2e9a5751757550a06a2fe8552afae6d5b82f4e4c14844136e4df9d7ac
Date: Thu, 13 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786585233

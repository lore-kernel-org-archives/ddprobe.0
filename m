Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB2246797
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760414394; cv=none; b=hvKJ6CzcC5gTU+FnH77ytd54onNNqua4csx8A343hFULVDGK2cHsX40HSVce2us2xnSFEaZXJSC0E47DQN3WTrtdAvjIhK6jBRjPy/qMlbph4ikDJqcabo3O3kH7UF2EYDcNlnCjx/eROU9Xt1cSe93+i037lqISAZ4w9OuwhtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760414394; c=relaxed/simple;
	bh=YcAM8z/LckFYnmYvYpu5E7RSeH6GvfUtu1dYK4bO+wM=;
	h=To:Subject:From:Message-Id:Date; b=TvxLOU6soyiRz+7IqE7QnkH5+8J+yU6z4bM3NFDY4L5jsNdQ+GwwimphJfWHHqnO28va4Vz4eHeR0ydU/cddZN1rwiecaUZZ6Wu8B2Mggba/sk+i0+tgC3n092C7r75bsrE3v68hEdTHSZHP3+bUxwJ80wN9N0DMww9gTA/N6yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqgs5JvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqgs5JvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D70AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760414393;
	bh=YcAM8z/LckFYnmYvYpu5E7RSeH6GvfUtu1dYK4bO+wM=;
	h=To:Subject:From:Date:From;
	b=aqgs5JvBeyJcyv/Oe10vdMgZ6nUH8iuUjBJs4r/qCRneCa1zqLJvO4z5sphGcOGCg
	 sYVHaLzUXCEDN3r//m/njuhENaSAqUr0E8V85WAky7yGDqgFm2gmRmUguZ30fxtvMf
	 m6t4Kxh7vPKKUYAMqQXJQ1Y+Vgkav+F99nN46MOl3GEuFc5A4pJXegqjjkFQ2krZiz
	 QByISXCbil4Th36N8Q+jxygIKSMnG0lxtIrQ86SuBWoUG/FF92RsFVe8ilznhMBzz9
	 fOWpSrV4yyk0bxdaC0thGVkZiW+myCCZVnaQYA8c34PI0vPdzNzxiCaz25fopk2XF/
	 fkaQ1zW8DpAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F405CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041439357.26356.4009473589371757106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7979c0d74ed1cae239550ab760dedb74d8385d330990f386e8f4e88d81e0374d
Date: Tue, 14 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760414393

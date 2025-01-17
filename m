Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385BE647
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737143754; cv=none; b=sUyI9ITqehgCtlXjT/nRfcC/utkw74FdFhQWtONl1B9aOlZ86P0d1E3XmWXNxXUhTHRBZ0gSrQPkVr+R99CUsmFLNfNjmEJK7LjybafY+9C+Ph2RsI1Ln0An6HpD6qvlR8V1FiFs7rfqzGEV61D83aUj150j0R9TK2qExdYhg1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737143754; c=relaxed/simple;
	bh=DYB7JRSuBamd+H+YpN5XXgrYxhelHr0SlSNNdL+lV4A=;
	h=To:Subject:From:Message-Id:Date; b=VWWlb7QtOoRPOS15LhdZHndrDsoJUb/dzPTYhV9EoiWG/51iUidlgtVIwmxqOkF3XQ/GjNNYCoodpi+IyRERb4rzmpwQN+qEGMdHjgNMzA6/BqMyTHU9jMLTGnWca0LqFDSFPFHyMFnDd4oEjH5loVGBnsfYILaTfDo2kCzkypo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mu0FWFW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mu0FWFW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC7EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737143753;
	bh=DYB7JRSuBamd+H+YpN5XXgrYxhelHr0SlSNNdL+lV4A=;
	h=To:Subject:From:Date:From;
	b=mu0FWFW6r0SGWTsRRE1KSy2ubaKSEGd06UcRIAxlm3Bwci9TtNiOiE+7TkVtLPtBj
	 7yi1NvvCWV2Fnwk42dzq3O16dGImgKDiJwA07dkW90FeOMZhul78groKubqYUVl6ZE
	 0bd3ntG8FYmgnyQyKLvM1U0Hm+PlmmcTcsxQJgpqUhMsfqIvxJyleEu40Pb2Xhqe7s
	 m6xIOUgdiaSvHUxQDt7KCEAIMW2WXXTiETwpXa112WsCbl8u8qegM6wmFwp4Sq7m9u
	 w9n6/1k921+TMXbRCpLzdg3ebKUHlYHnznjTI7w6mHmoYw8XwNVQkHQNO1wPOLDfOs
	 /78OSqJ68hoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF6C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714375361.7250.5279460726552326979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e7536ed1bfcce7fc06fc0e96245d0730a3f0bcab71cb17dc59d0d21a105f46
Date: Fri, 17 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737143753

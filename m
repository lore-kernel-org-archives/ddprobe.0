Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF231917FB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783044514; cv=none; b=mLF1JFMrvS7AgaQP6j9eNrn+jxNEoW7DsMC2UBsDigSz3eNUk6Tr4MiS1Of868RekgSIWSqKl9ANh2K/ns7KbVdixp7jAlnskwSHx9Kl9twvKkk9EFs5dMur41G85HWeAqusRXA3BoB39gK4bU9WMa5Ylfm68qJRUkoMn7F9kdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783044514; c=relaxed/simple;
	bh=RADRdXYcOVHcE8TF06oe/vXoAw4esvjGZzaWW+eNXic=;
	h=To:Subject:From:Message-Id:Date; b=SSF9ijKWuLLPZWRv+zsoWT0EiF4dj2caC93JgwlveXH+ygibbTPFqdt3qjZd0WrUGO+b+G6i64rFg1NX7tV4mTSO+QrfZspaoyIBIRREDE9f2dMrF0YjmOYJmR0f/YMredqEaNCaj810jKogzIFynCUQejRZxn+Y/iTCwgGx8kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btQwk7oH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btQwk7oH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D4C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783044513;
	bh=RADRdXYcOVHcE8TF06oe/vXoAw4esvjGZzaWW+eNXic=;
	h=To:Subject:From:Date:From;
	b=btQwk7oHQamtd5mfojTSVAr/Kr68FxRNhWRFKesO0z890KHQQCKuciRsEYVTrkpa4
	 sJ3PFwt09a7EoLyam4YIEGyjFnvz0Ho8QATXLWvYut5gKXU6zYzwaELL3PHWRBv+Oq
	 U+ke3kLS5oAOZ5yDKzH4A1w/+ku3jqnVolgNf0kpy+raXMcfxHgdEWusO/fksYe+/I
	 mPczQQMU9VSyHz4ojq0B17jJwrGmhki0uWG3BTdoUtaui70+74L7RTlsjzVfxH86kL
	 xCF68uMJ4bflgRdGgVIUE0Hc1rxmSrgRs/Hdsuz6IkVdWkH+0Ixy8ddF1U7FDDkKO/
	 ksZDj+dovC9cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304451368.2368.6662299828372821730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260cc5f7904402e2f91894588f6660cf1a04a701a18ca4aefb8907f5c831f45a
Date: Fri, 03 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783044513

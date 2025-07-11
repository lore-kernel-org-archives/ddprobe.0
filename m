Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F41327E1B1
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752227994; cv=none; b=ejeGgKcWKfmYnjCPCIWlH3eCHZzAY/LqfEhHWCN1gTOh1WpEq1U9zVbFLW+fexnWu4HtdktXYyvZ/OcMBzsLlrcBpu03rQ1xNBP3oGAjQjOXVoCigkby4Ng6s9ng1lEehp2bZhCxJ9ctze3TExvJqGazJrKMaV77XHjEQPq0YNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752227994; c=relaxed/simple;
	bh=r4DvXNuHFtGB1EkCgoowYrku73YQonLN1R6yfM3Tg/Y=;
	h=To:Subject:From:Message-Id:Date; b=oEv3Lqv3NrJIejmgzLd8P/tobKujdytbFLTyixchwtnL57PzXOXJJe5KgNlx+2VkgZU2fctwiaZa/ydgHD+DqP03Xdu1eahs8bNsa7gstD/M+4K0zal5CM6rSEXg6J94pw1/P0HXc5WCBoJnKRHc3OEd8Ff2PFbuLTecc47kYRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoQKI7vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoQKI7vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD335C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752227993;
	bh=r4DvXNuHFtGB1EkCgoowYrku73YQonLN1R6yfM3Tg/Y=;
	h=To:Subject:From:Date:From;
	b=JoQKI7vzZBiPw6tkXHDeB5fjkY3YHj4FmXQS9oN6oiTBkYpL3ZUu8rgBjj1CzWPCO
	 h6ETIHmuCd3vpoPsAbgujR16appVB6CbihLwQxzHWWxwU+hwso0ENZRZOcbpT3WFYQ
	 Zxfdyww+07a5r/KHX+u6aMdmRLZwylF3xwf1D0x+3FSV9wTJSDa29z7WM7Grl52De0
	 BMKD1dyUHUIFUKdg9N5RtrGGCXXhuSpGlit4PZjymqPS4G4fxoP2y3J1k5UyaU6Mav
	 fM7oIPKf8VoE9v9IcdlpDMmDQnqZDhZhRekbJK5h4MR28HxRAQmY5GNFY6ZuUSV30W
	 Fme/wG5P/26RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF3C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222799357.26685.10341301986739568789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae02cfc4df50a1d8b93f5927fbd75758eed6ffbf0b79eb0102e27a7ca6e6f99
Date: Fri, 11 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752227993

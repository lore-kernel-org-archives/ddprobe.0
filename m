Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493E1421239
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785828634; cv=none; b=NLlx1cPqPx7OR9R9xs1KbUB1/d8izog3DxKc4bYHCF38i8fZojDzItHKqg1jEic3XvxJNXjKM2olyIrusaWq7DeckOhehquODPgb4HaylEx3yYwxlukVlJDSQaVebQs6E6OSsGWLP5jv6+HrKxoll0Q0geINenRL7j4nYifkx8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785828634; c=relaxed/simple;
	bh=3e4gt3NBneRewdzYt/DRFJmEV/eZT4wga9wTeWn3XkU=;
	h=To:Subject:From:Message-Id:Date; b=NcoOaSTMgSvveNottXdScHGpsNlx+Jqk6xLMd1YgIoBAnbt3pcmlAHbjbgX7762ZDojn3Y6es6BQlOOfck2kDgUA+UK6n62B34Wu4XIN2pZystSIFI5zMbx1nLDs97QYQZmdEm01+AGge949NXRvjyCq8cHkUH5ZM0+2zRfD/68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EV/OYv5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EV/OYv5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50C3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785828633;
	bh=3e4gt3NBneRewdzYt/DRFJmEV/eZT4wga9wTeWn3XkU=;
	h=To:Subject:From:Date:From;
	b=EV/OYv5ZFlmIKKHWMfVbJHCxzGYB3lYddGLDAFbaSUodqw2kKsDvPFTsYzJCkT2WD
	 HD41O8sV2VvbI4rfZHoqrhP+TZQDiKJSMW0LhFVacY7B/R7B9zTQEj3M6JqS9T7zXJ
	 htub2r+X3xhOOC1KRf83kjq4OKQaGk5UcaKsf6RStgog5V89TZZjg6YP/t6I7MzLpE
	 34KPBMlDWrozxrXJXMLn8YNNKFZxz5/7WgI8PD8d3LW57jpNmCo4xO1fB8hcoGWT/g
	 CIIDwM+xEB/BK+pdE7Yk823HjCY0bgFUr81FVCh/ijbcBaV2HIbQgWAIZ6O/BoSENw
	 s3FPfPJ9kE/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD751C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582863369.3474.9410684407628077949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9e58d88d995b773ba73f5134a1d105d55d50ec97aa3abeb2d7bf87245603ab
Date: Tue, 04 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785828633

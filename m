Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311CF2571C4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778395; cv=none; b=mw7RjD06+dmUi8TCsUkCsd+O9F4D+Ks6d7+lIhDUokdQA5IsoZan69MAXk4eywQt215x4uwvDJy551BzxDW0+iQWpw6uv5CLETdtcvqZZyvyVa4v2GVGrauNvWq8YArBC70HjcR1IeRj6lIscJMP+NxpDz374qGTL/H2W/7FDvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778395; c=relaxed/simple;
	bh=By33MRTyUJ3AeaRRemOYsqWd3ls+f4OdIPXGr0vDX00=;
	h=To:Subject:From:Message-Id:Date; b=VmJITm5vJFmgk5qm2Sd+fBjOaLifbqJTrsGepDel9HTfL9FVxnaICx0LGOIMjAHTFsO1+zYYkSefNCeHWABaOqZwOmCkYePLVRUd5F4a3vxlaOOEgUwDYvb5mSRl/qir9hb3mquB7skac5fTJr1jGWUnOocCXROGYNF8PwkK3lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4iBLmR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4iBLmR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747778393;
	bh=By33MRTyUJ3AeaRRemOYsqWd3ls+f4OdIPXGr0vDX00=;
	h=To:Subject:From:Date:From;
	b=l4iBLmR3+YbuPCa57eYRIamsMa8+stUaLAnKLpfICZ3UBL9aBq7xLTxSEEDCqNjrB
	 GnN4FO5n5W+uJks5eC35WtNLwd4B8NmHLUsp+HqaB4q7XR+l6YB371fUGEbDQ75VTv
	 651a8000g85BlwPyeM/qELTEoI51//iTEWKkXAfQM13I6r4ljSYcbCU4rCTmC3zkKO
	 DfHKj1wRiWWke8pp8P2y/QpmFieJW58xCntyuUmIW3wwQ75eG3pf2qqXBFFoBfjOUC
	 0WG8uK3TKMnXaAGMOIjnrIq1xDJ8oJriXtZtjyUfSu39N9uQGTKgthGA/flb6Hb8Em
	 bzsefNd4tZ3Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94820C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777839357.20738.18185676602763353020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18f47b205e3836162ad65ba9b8011fdfb0f3cd399d2c1092303de0f8ac6dd2a
Date: Tue, 20 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747778393

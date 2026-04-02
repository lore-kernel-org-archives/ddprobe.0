Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BEA1E3DCD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775091334; cv=none; b=NnXtAmKYUQA+KOwCRWKe3Vu77cfzvDV/S9N5V0GfEpfVtm86GJiIZxAVedvRvIOEVfY/73eOd4FS4Hg0rK5BtmSmeVhDQLUFhxzPFGar0ItfE4Ykf2h0JxUcjt3nCauCE0ighPlC2jJOesc598PZWXZB0b7afc+2/RSo2hFHkMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775091334; c=relaxed/simple;
	bh=WAaha/oe39P6BEpwtDRz82ogOsbV0HXRNDpyrVpqAXM=;
	h=To:Subject:From:Message-Id:Date; b=sOhBRB67OwmnrlxYFcFdZz69UqD0PoyYRLeB0mEZh+ZKRc1u2ghduDfE4rjsf3DTglQ4nIjk6+dwS447T8I9r859Q/Et0geQPkP3EBVfTaTi0szBhMoxB4FfVWSgx6IFsh9gkG49YWszpnJ8wd+N52KK9zD84aCaedrYQxc+CgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9fPrtIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9fPrtIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0F5C19421
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775091333;
	bh=WAaha/oe39P6BEpwtDRz82ogOsbV0HXRNDpyrVpqAXM=;
	h=To:Subject:From:Date:From;
	b=V9fPrtIGMPxocRTy97cE5UODkK0c6zFSTKtoP7lmasHXxZnWPlI5KGjVKoC8a9jFO
	 lvhbX6fddU5b3N0qkesoBvWl88s+CEZ73DHgta16NcIAlkqA1Dt8c2FZxYOIAQcrzb
	 VKrJEUV0F6Gj6vZrnLqWyL1hlIkqkcocHQnK8DrGH8iFthx8pBhR0tMbsx3C/fuVlO
	 arfAptO0JLJBgkJW6Z/eJju4APQs/K7sczrFCQRtLe8eEuSRrwlTL1mGA6fuLhVnCr
	 7nrWUB1ATAcodPwZjDn2ra3K4yFBQZI/tB5Aa9g29dYvCR5qPUto9Z9WmSYdLgpLA6
	 V/fvIamrXFN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EB111224A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509133368.26116.6540389714479501002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf4642fe5093fe66e0b63a106be4debb352c8ac9fd38e021771e6457ab4e627
Date: Thu, 02 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775091333

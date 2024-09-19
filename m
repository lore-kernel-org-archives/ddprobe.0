Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23005125A9
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726785354; cv=none; b=eql9z8GN+I4dDoD6d7xapTrP+XVwBozlG+qYbZ0sPE1qXWOiScB5HjBCk5xeuGutsnYzImaIMxUAuJbYRD+YKq3Wq2iBY2CrLpN8DH5Z6JqasStDCdnNVje72aJYirWrW1gO/t3XtcM3+n3Ea3mIHLqe/QwD7YBKg9BLV3BECgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726785354; c=relaxed/simple;
	bh=obig4xjftXliSesGMTbfZTuRa3k3hxRCHTwIQsHXNgw=;
	h=To:Subject:From:Message-Id:Date; b=UGY8WkyAPLTYBF1tt2EPOnT1LKQXl8OaJi0pSXxaVfgX+c/+qPSyV6mECjeW6qkJXPgq4TJiBI7Pt239xfQdIh0Y4Twkroy58zS0NpWOcfe3bdMLME/2EMSEUKd+Rwog7Cu4X8fiAjMG9HTcmxB8aBDLzlKFFfLRt5ZUWjvfe28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnDUTrgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnDUTrgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE619C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726785353;
	bh=obig4xjftXliSesGMTbfZTuRa3k3hxRCHTwIQsHXNgw=;
	h=To:Subject:From:Date:From;
	b=XnDUTrgqXyy+MifPw3I1/fckYSCZ7URlN1ONln5JF56N8459AMkOspkRGCJJ5czZW
	 MiMyb7wwCHF3jqDosR1oeh/Td0uD1c5pkV1B2y/3wDE/pvLQoZGUGSwIm/YUn1GdEg
	 +aH9GfYlCjI7yXFsqRKZodrj7HQvwR74vey1vFBCCXBd+wW/tsC6XcEDk/bfoVb1yg
	 f4xGOx/FLob9BLMfhE/8b2A/U+3a+4ueCv+h/M6Ow7bJ5wFj4uIyV4U8ZsrbDP6KOq
	 7SfqjFDg1zd63bYsN3Z1sHsSoVg84SWiVcFIIcZe3DGABpcy2kc8O7H+0U//cmvf0S
	 5zuQaKLfhZ0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F8CF3975
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678535359.21285.12550924304119195817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6862f7a06dfa54a96d8f1016d7c1d1e6dafc5258c0316e35b156c7fd3380427b
Date: Thu, 19 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726785353

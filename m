Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5E02D94A0
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772393694; cv=none; b=Ln6omHe1H4GkIqtIwLRD9TR3QLBSh5cbPOH2HSlxZoYR832oUUQfTFTOMzehj3NVoGT+8lgHhkxyj3GBBf7viKeuLfIZT4Ou58HLt0hlAgBluRAS4rTfulSXdqBJqhBZcN7Sw403klU4gn6PNSlQ4Jgxv6Hvy/x8ZunB+PfF88c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772393694; c=relaxed/simple;
	bh=+AIDQpYA2YAzcZ847BFEko2Jl1Slc5kSjS2zaKf3BnA=;
	h=To:Subject:From:Message-Id:Date; b=UcB8tmcSUudRWCybFgmm1vd7wS05FkdbsIo7sCqGFYWjLJ5W+37eGOdGZUk8j7zDzRtbzytwE5KbyXDr+GCcN1GGkNxwR18hJPkvIduelMNqJNWs/2khrO6WN4mgD5H7CKOOCykA/y7GEdTLRFm2O0+IDx41JDjRVO3j07gmaYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlqsvMSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlqsvMSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2978C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772393693;
	bh=+AIDQpYA2YAzcZ847BFEko2Jl1Slc5kSjS2zaKf3BnA=;
	h=To:Subject:From:Date:From;
	b=YlqsvMSlgzeBxj0Ua8h57XsscBv31kQiYQ3WyotYObgmSAldmtQovjOQRkN7Ug5Js
	 LGsugJyQ3wZ/JVbP1OkRR4Bga4IWmfNgOnkT+apnFGxLkDN4A9Bd+Vurwo6EVD7gR0
	 RnOGq0EYN4Iz+Urz1j0iXA6/84QE/McJSOWSFVrrBdf2YhEC3w+6A+RywIzySFkPeY
	 LbAe0bEJm4J6GvxilbmSfX59wqzCw5bXr2hl30ahqy3/mhwP5fbnY2aIam1+1OcBvX
	 AwCcVyQUc+xeTRms4OkoZURal0YSNEG7uo+2lR1DXAsodTNm4L/HcShLr6kk0qv8AG
	 W0BjQiM/kpr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B07FD0073
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239369358.17745.4406287462483819996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2f9903aa108d49da149ef2710aee9ab63e1db8684f77a53ca03ef1f04e378f
Date: Sun, 01 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772393693

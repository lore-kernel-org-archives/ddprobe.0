Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267BF33342E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764610374; cv=none; b=p//XfoBcIKGlupr/AQUgK+IcyzyAB3QVE1NltPOvEW7ozQ0Xv9Byb/Lc2lLJDbdeUOm4DnA13JZgz/giUABqEdGeck3WlQd5LMo+gv6Cr9mD5YTDNBlEXBxHo7t7pc4OaE4LU13FhkkyLwlSywthMQj86BfEMVoox7MwkNq0Tmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764610374; c=relaxed/simple;
	bh=2BRNZz63A0L/aMfMk0sNQ/tpjiH0q6owJxmH+xUGhZo=;
	h=To:Subject:From:Message-Id:Date; b=eeqagq4RucL5Az8KVse9aROWHmGMCfFwktkNXPq8HP44VVdNaOwyVj4hZHnJFZKhchg58OZD6xpFrLNZgDMmmckyAbm69JwlBsLMliD1lMSMxVPtdFqkYqIzg8eZDUJ66/P9Ydv2/QH909AGLS949fM53hsHVVGdOrBzrfSCSG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ4SiL2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ4SiL2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F09C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764610373;
	bh=2BRNZz63A0L/aMfMk0sNQ/tpjiH0q6owJxmH+xUGhZo=;
	h=To:Subject:From:Date:From;
	b=uJ4SiL2IUEc9+Kaezeyi3rS+bZ5ge0QlZyzj/WY3TgKqgMVgNi5Ma2xinDhAVzkj5
	 iPxgynsh6KLtq5rPcEarmWrRiniYZHU6TwZkZhFYa+orLGld7SO74+qJq61UKDzJlm
	 q2oryBEkOetmt+pbaxY6cSBW4kb3ZrQGY5wLwwX31Q5wjFUUIXY3MPKb06tMzWNBIL
	 uExyR6skddbHOU85F8Ut722BVR8tVD1MVpJP/HUpjBLSTEAd1305/9pFdXV2au037N
	 3T61GL4ugigbvtZacnRonFkmu92gWJiVAlHeALNy8FGcuthJp5gkCsAJibC3kVMxcZ
	 CKf4N2rB0zrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DABD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461037360.13046.2802053747155617864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80dd2710118873a885f92caa675da6ce2411d5bd80a61f28b7b890c6bec8799
Date: Mon, 01 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764610373

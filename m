Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67353470E99
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784774374; cv=none; b=ub73DC+HG2PEmrBq6dNNR5y6xJ4grqSAtvDbBFzjg6dLO8OQ5DPavty18WbYHfxfdWsGzSJTN9uqz2cyzii9NmhSoUbacQNmkxlMhDCssrJZwQMoPu3xMfHxuq0AzNoa4RwPpJAnhWtMYKDLCgiL57MsT4jbVoSW+nS3raXu3YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784774374; c=relaxed/simple;
	bh=sGEnTTPWblYQfxz7YV7VLXtUsumK9HRs9RXiGWhz0J4=;
	h=To:Subject:From:Message-Id:Date; b=Y26NOWkzxIehYAEouvHOdTuOyq7LsRBwGDxynGrcIHMtb2UgRdFiIiz9MtWeP+13nx85zrFVv1q5WK9cAn4xbRUl9FWJUbDN+bDNx5Tn/iPc5plDuykcmjiWcbtfXkK7Yj56Bt53HZVwuElmCB4/x5ovOKfkgHOOAGUURTMSC04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDBPvabR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDBPvabR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAF4C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784774373;
	bh=sGEnTTPWblYQfxz7YV7VLXtUsumK9HRs9RXiGWhz0J4=;
	h=To:Subject:From:Date:From;
	b=lDBPvabRcHKs3aYQQs7gi6+ggOtJUjpIGuJJr4lhgmCcXMUEAd3EL/F+eU75OAU5q
	 +5j17VyK/z3WLqBNSlyTCmsK0qiNksZMZDcjMvVwCs8ykryJwlZq6Yc3F4s+hzYR24
	 N3C29QY4ILg0m3t6UpYIueN0X89PLCRuC6u3BMomkldZEkisbAWVxFWB1o5ohwGDkC
	 B3unXojOMOESxGuVrnekpwaecuwEpojCKZ5UQI3JUHbp/Xly2TIB6V6UKS++pbsLzP
	 dkmN+ZUo9kH+ISsCEkHC0vz6wF9R7Jdtcw/67HfczAE+w9ArcJPNkOnDnf4B/CtnI1
	 CTnzBg4NwZirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FA8C4453A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477437373.11246.4326885103696255786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b629156d8a8322d17c5e96c633ca33b8bf9932727a583cd9f63aa3f3a887de70
Date: Thu, 23 Jul 2026 02:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784774373

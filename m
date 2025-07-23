Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ED928935E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273194; cv=none; b=QVldaEATd05JzOSOS+jABBfnPVs/0L0CHVEtt7ahMDz+N+09B01yby7ulZqCds8ZOf9DODY8fWx8GO8jBdaZ6w/YCtM7HuuguKYT4E3wIag9NseAlfIEFokO71vUDOctPQYe+cyamHc0mLaQkQj7mFFRWt53llfVookmZbut6BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273194; c=relaxed/simple;
	bh=FDyPPutXfZtr2SRZoudK8eHCXK40BxnYM7EqLjfNTos=;
	h=To:Subject:From:Message-Id:Date; b=gZYHFLTnPgnEVdH80opF5VlttFLP2Oa3zjpjA03TBi7UEHZvb5k8z9oCXzB2CQMvWAPOAo5Yn14vFdbj477JuZt1O35IRCxz+OBOYeSZaGsAZqxtnY0ReMPVPmOLwEdnbAMwuR0hDUTN+Kh3FBm7rQGRDOXYpjpL3t6RSu06oO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgZ9ZzJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgZ9ZzJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD98C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753273193;
	bh=FDyPPutXfZtr2SRZoudK8eHCXK40BxnYM7EqLjfNTos=;
	h=To:Subject:From:Date:From;
	b=KgZ9ZzJ+fsD48AIVkDNNza4JoW2hExB3pivlYEZEsf856Wkn7qRC1Fvty4+BOsUPH
	 SBkxJqQ713VZzVhWqGUqmlvCbPcpvbBR4K7Z48+opKW/HWvCZc3rc5Dw6yhn7TKFW/
	 UZHaD7gApq1vHxwm0VpY3kKn0FX18gMuHalJsMyxKtYF8NRhQ9Ndf/ZtpgkDvYCcMJ
	 rb1+PR04JmjLAQ1LynjDbp9JbWWu1Q+xbJpZNeRI7GbBD7VdyDSNIND3yZtkNcl0ST
	 JSFfrhipgvrOi4MxE/1jTuDuYcYCU81EIbBpyFbhTOKgwpTycptWuGsal6rj7uxST9
	 u/KHnBnfWedRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4CC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327319357.14396.9259596723589580478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24649ffe83c701b2b649a40104a65a1e996ec25be36ed54f4e4da0e0b1cf49d8
Date: Wed, 23 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753273193

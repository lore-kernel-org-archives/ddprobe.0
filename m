Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2486F1A9B58
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766555034; cv=none; b=PJ/tF4UVbA8yI5nEeE/CiRxkp7nCsgPLurh9yHwp/KHI9QbupJcgIINjBHJV01W/AB+XlcTQvIXdbzr40rFGysrQRWljLir7eKGtIKRIjLQke63aQrUhUx6hwLM8MH4EljfL2RoCqAP+HWopfplxtx+/hpDKp2ExTsQNbipYLdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766555034; c=relaxed/simple;
	bh=D/+Gi1PHtD4DklElSoYiX2Bp05giIXBVmxFQUrqdNNI=;
	h=To:Subject:From:Message-Id:Date; b=dj6nP7VbaIkOYmt4Iur911QXJdn7nRRmrNJsOe/3hnuVQLEBtfgugMurUm7SuX5eqU9emHO0nh15VSmU3n2q2cxE8zbIr8Ja2G/71NIEZuZBGfnuJY8HjwRA+f/aq8FNeEUwg8e+IuCJZrYZLA5mdNzrmHI1YSqslVgfa4Alj+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRS2i3mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRS2i3mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5922C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766555033;
	bh=D/+Gi1PHtD4DklElSoYiX2Bp05giIXBVmxFQUrqdNNI=;
	h=To:Subject:From:Date:From;
	b=GRS2i3mQzRBUk18PYCe1yWlKHieUA4xR3ZFcM69IfjqikZD54hFDEsVBSoUev8oIF
	 LYGmD+IyJiwFQ10XggrMSUFpeou7+On9KXljG42O2wsfP6iLSG6q3d33C9yPDs6TTu
	 1ngNObbrGZ5ta0ruuTZ9jAYstKFjGptozdAD+GDI1emx+q9qlHjexjgJPltVhFa41P
	 ShSSSIW4/UhoeFu6+iD7adT4IFZT9VQ4pa0ajqcyjMZVkLiz/Ra08yT2ed7yE0rKAY
	 MdCC6371ffwD6jdkpxn8EOuIWSHTUiSccRH2jKjzge+UDDugV1wAhA1lO4U24mE9rn
	 Bq/ddnGEYCtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9523EE74902
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655503358.7697.9047969104996539552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bbce759f85474bc8d28af6b4e9567fbeaca5cdf457233c2c3060395e20d0604
Date: Wed, 24 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766555033

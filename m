Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DC61C84A6
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777505254; cv=none; b=G9IK8B4GZlJAr35BYlv9y7nOMKz9KHBQn1JKf4A3rjAbhYc9Oc5ZNygXBADmrfVxuYewXoza1DrMwrEalEok3bKfTv3ayTWL9YHQ5T7xEg8Xrxh20Z3J6snsFKzvkTQXdMT+ix69V/XMCb3jfVKh7uiz2NRlYwqSLKamkYpFFuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777505254; c=relaxed/simple;
	bh=3aVU/COihWjKIXGJ/W3Ju2rIojd27vyaQ7jpKyNsZWc=;
	h=To:Subject:From:Message-Id:Date; b=MqYggNs/CnQv2xPAj8GcoQ/zybapag2kEeh0+EDGYGCMtU0PrIBr1nnCd6tYnf/N2nB2L6w15fXNnPRDFLmx8T/icZ+ux4vSBKlwKlPTrSOZjyWrFhQ0Fx/kUTH6UL0kwFjiFGKqVBzaekivmKaXDANrcfm6ihLBypXAGyc/eSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shvaE3+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shvaE3+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9CBC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777505253;
	bh=3aVU/COihWjKIXGJ/W3Ju2rIojd27vyaQ7jpKyNsZWc=;
	h=To:Subject:From:Date:From;
	b=shvaE3+Cj8XTSLMtf3iSzGibd3WURtpKZNFVPZ3Kcuf0zeRaoI4HNdWMRDjo7M3vJ
	 XlXlj38hkVtbPozwjiz7joZZFLdC7Ce25P0PhcSu5KIORNXED6u3DZ2idTnkAGZ/us
	 oC3XkcwfeiNddpg99rMBBllMv1B8FTythxEVOIlxcNwMlx38Lh1pu0wW3vfbZH0Sia
	 aRJVxJ5dCozI14YiA9T0lX+MarLaQGyu5wQN/9shw1V2r1+B0eNz7kyOPzRzB0EUqd
	 FOSl52014byLWWZ2Zd8QOqT+hgKTcCx79jCgO/JF2ZVLH2UzUayB7G7HCOYFjcwjLc
	 ivlVWO4eCqBRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA073FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750525368.21295.16592337408725480995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdb478d47bff13ea85a6407ddb6abd842aa047cb249efa2a451eb4f0f42cc6d
Date: Wed, 29 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777505253

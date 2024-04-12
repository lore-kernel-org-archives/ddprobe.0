Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6613D15217E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712959763; cv=none; b=T8a/hw1yqBq+DiAv4LgPVpxFuU3z5XRhPQ938R5QjOVp46zOqEgqR8Q1FJotMuQztLYJdyX4GSEQKYkGVF2fammfGPB9neJcJIwhxmJ81S5uYKiEH8dXLtiZtAujazVN/Vd0zm5STCH5hZIrUvUxPM/9CdY35OlPDO+gBngV0/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712959763; c=relaxed/simple;
	bh=aC8y4V9nEIXbC9gIWK7OoDJC3FqOAav9pekm3p3W8dI=;
	h=To:Subject:From:Message-Id:Date; b=ZSyDZMnb/qSIvQ6dHtM7mWGeIWAiktQscG21/l3GgKa+JZ1DuGJFT/GpoQ6ERMO3hFkC72ltJbtEjB29fFlEHg6sMprrBQVVwLTYObNI1pQHuwa1bEBku8UG5AP010WLC8jhsQsg1TqUw3wH+Y7NXzeYtgeDB+/OuZm+rOpkQr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trm47Mcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trm47Mcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F065BC2BD11
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712959763;
	bh=aC8y4V9nEIXbC9gIWK7OoDJC3FqOAav9pekm3p3W8dI=;
	h=To:Subject:From:Date:From;
	b=trm47Mcz1ElS1jTpbsPByGlmzBdM+mxmCQBEBT9VMDfdI05IUw7THHJSygyqHBhFY
	 qiV+VqsA75HEivTpQ7+963bnyAvD++htpYDhHJtAIxXDoyFRjiji0N9RgzogIeCiiS
	 NSD46F4L5chu9gMJ/7wL/SjdsCRT1a44+THUHEMdw54rrnFxV/s/bIdO4cA3m9XpZl
	 WL8ZFe94JqsnJq5RjSpi85qVeuVPRCdMDHDZuppn2VQkyC2I5uOKFEbcBOZdt4ykzm
	 dE2fhyt8FjmneN8GRindgpaWGibvTII0eI+ERo/7a9TwuR6qTBJl9hqCpgJP4oufgc
	 wNxr85ZLwF49A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D354EC04FF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295976285.31173.13450611299065670532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebe9c3d4e0355c58e012fbccae756bfe91e43929c1de788630ebc3a7654fb4a
Date: Fri, 12 Apr 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712959762

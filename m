Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECF4352C4B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770978294; cv=none; b=T0edoMVbSv8iZqtZupLcfl7B8Yzh7H83BLZZrLlnyO08wU3HKB1uDOTHnGJdOC5R2x35PLvwrb34nv4pbvWJXjSkpB3nwO40eKW7Pj7xuifni4fflL2IXau7mpG4/gfhjtAnS+CDPa4gcjhV8rQip4ltIHMehkFvjfzNna6FHJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770978294; c=relaxed/simple;
	bh=9vsURfM4wxdPhZBGV5tAr6TXnW7t6g9fXBIA0GF1G/I=;
	h=To:Subject:From:Message-Id:Date; b=sr5UvTgGrkvyStQOwT+QGQ4aK+hv1nRr1OZJLJfbEKu3uSGgoLW5CMU4g/8gt4d9EQF3NmskYL/XLhmy/xkZ5rWl8P3MsozKwvc+e7CMF7P+w4qlLsFhX0cMZ215w/OvwazoaFExzx7LLxO8msS4CTBO/C21x4M8T4z4OYJC6bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGUtR914; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGUtR914"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D2C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770978293;
	bh=9vsURfM4wxdPhZBGV5tAr6TXnW7t6g9fXBIA0GF1G/I=;
	h=To:Subject:From:Date:From;
	b=GGUtR914JaC0kTFG5ilNoDb9oOtP2Xsc1Zy6RG5ZLQskb34GoM8YcuECtjIGSR1wY
	 uMMJ6XsICp4TIrzEer5FC30bBfMuDD8Aw9+9oWiIW20ZKeyEJceDCNw9Kb41QOgVoY
	 9XVCNgE7dQUTUOnRo0euqWrmFOxlMC1exKwYSesnKP8XL/FwzO+DUGXdB+UvMbJGOr
	 NI3sWthL7SZkhzyVCcKLg7ABlkb4XfZ8zbsfaez7QSXOI5n5PLCO0miSfyq9/cL5vW
	 H9oILQyPchUBhh6KciWFvd8qzgwwxjlzaKJCgTKpmq/L/1+wBXzBU4+9QVaHJKK5uG
	 Z9m8w10Ddm0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A51BEDF150
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097829361.14308.13779507348071537991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903ccc7ac3f6cdfb910b083f45308b0e7761cf83f17a3d95107bf40964d9ca1a
Date: Fri, 13 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770978293

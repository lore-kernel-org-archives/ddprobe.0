Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132FD11CA0
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710911297; cv=none; b=E0BrUf1kcas8tfoG56I2C7UdkLQddws5soOtr/IkskoUGlY9diesmBW/bqYqSHVdQn+E7NmexJqPm7KSELNG0jzEwIfmquxCtFhpLiVQAezZQsZ4tEEPhQX6P5caJ7U4zSUl4vl16hqlbydAv5uri+eZCgrtab3GwFdFEwcfNJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710911297; c=relaxed/simple;
	bh=VNpHPC1Rc1K5n4H8b/9oEKaMdVX7v3zDUCIJVgWY7dI=;
	h=To:Subject:From:Message-Id:Date; b=lUNZattoEHrR57cT6TqpOYC+0Oii9X7kSKD8BxoaOIekY7gNaYgr1r+nx0q/dz2OBSJ65T5a1ehVgGOPG7tKrZgR3SwF2WIvtLTkHs1mb8abTkb/Lyn0HHgGAGS43trV7q/Ykma9IMAW5nA74QCs2Rar6jg1o/8v+vubKywlwuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwVpwKbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwVpwKbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE80C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710911296;
	bh=VNpHPC1Rc1K5n4H8b/9oEKaMdVX7v3zDUCIJVgWY7dI=;
	h=To:Subject:From:Date:From;
	b=uwVpwKbDbu5VaTGaTkCX82pJecOfYzbB2Oh1Y1VEfOLUAWXx56slAFeQ+fYQHt9BC
	 fJlKoXAlX+BoSWLAz8relXnWWSxJ3JRYPqCowuDK/ZGvgEab5vWukHtfrkGjijXL6O
	 PafyptO3xOYyUlSP6Sk9wgIMLc0JN7lE1ludR2XW380VIcXw3c3S5rP/yEy1QmneHc
	 bYiYuWS3TUSQOj4CeAxfBeHYyHAsHdCWUiztDG065FOi3cxEv21w3cb6JsR0sus2pn
	 ZC0iauzA62CsX13BZO5BKdn0Q7rIDAzCuvmv2OSYF4bYc86GMvoDajZUP7WnD5qbdj
	 eumCL0JvCG3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69226C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171091129642.15882.13035058571258670375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74a3e2f4829cadb49f4afe8951060e0dfe5522dc7a80c4e22d4c521938736e0
Date: Wed, 20 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710911296

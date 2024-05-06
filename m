Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5772B15B99B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715032943; cv=none; b=QGlKuuCwf2UH4uC7NShRqiLmfM1olmDngN6yrCiZO3SDSfCYhNlu3GoDoLvmZEmsqYNrK5I30lvrN7uK/sA5rT3DFiaS9gt1NFtTZM7tC1pavpz7LDLintZppUI9PY0Vgr3nnorPlOX22z+Sj4+fkFqL7j9TYdxj4Sc+ap/OL/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715032943; c=relaxed/simple;
	bh=rAOWeGbjMS0ZNJJ2mg4XyL8xQzp4OchcsGksvwqLmFI=;
	h=To:Subject:From:Message-Id:Date; b=ZqnDdmYek885yRZSNWgcloK7kRzx0YQBO18yJjl5vKzNqMix1hnT0hNvbo7KKc3yOrpt1lqFfb1uzBDKLvmLdiplB18YAyorkjtb1GLYlFbbD5ZGZKi1kI+8gjkWqAHkEXhC2MY5ZWj3qxI3S/CXjXU2K1BMQh3dMrJFlN6Kog8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdlrFBhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdlrFBhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5C2C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715032942;
	bh=rAOWeGbjMS0ZNJJ2mg4XyL8xQzp4OchcsGksvwqLmFI=;
	h=To:Subject:From:Date:From;
	b=UdlrFBhM+OZahjgE/j8xKJt4eMz2RUzez8mJs3HELOI/X08+rbGR+KQZtwCf4eMPC
	 Ao7x3ET1t8wPTtT0tKorV6gKiG9gW1ak6bo9bWMn45MxP0mMS4hbnQLyBwaVWmaj/K
	 dJvHauWQJieeI7on683KJxt/uaBid91HODhrKweIc7aLbTcvol0VJVig5S8nw79SsP
	 SMjRhdl0aTKH77VJPN3B1UWusqXibPmNGvqVEo21dc8eXrd4lBap2o5llPowTKZm6I
	 tOhn8U7sHmOqzgdgZEAMkLsbMJR7qsz7lYRmAd2WK/Yo0da/N2ceBukKehCY1X+2Vt
	 K7O5EaELUI/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76CFC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503294279.21723.1046669870905644790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe9478eeff0ddb3518244e88e42f0ccd1364beb4878be7c09006dc56f8fe57e
Date: Mon, 06 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715032942

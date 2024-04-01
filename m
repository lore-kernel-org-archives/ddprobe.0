Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E215256B6B
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712013497; cv=none; b=l0ZBTvGCiFG076y7MoQYImcRhy4Wtb/iPgLuQlNGLjMGKYAsq7oz7XtwmszjX/pW1Jw+tM0Mf79rHBPXKlzbZO2/FurMsoKRDGCp4EwyggOcghOu+Aa/LzxF/7QSmhbF5GO1CA7ZJ9VTftYpzfxp01fvc3ui0BNQxkifdzIxhQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712013497; c=relaxed/simple;
	bh=4exGpxr4B0Ercgcpg7RAHRZW3uGbnCWOKFBTG/pKpX4=;
	h=To:Subject:From:Message-Id:Date; b=POzs+DF0DNvGHMQYkZsJBkA4WgC3PjBAFJ6myiN1xbkVGra7hzM56LAGE1kTRanYXDcb3fF57P0dEiBTQpc2NVQjmZoCLErxebXhbzB2L5U8zm6AaINxtvwjPpytOt3xtqPJb24zl8pyUpOranly+tpjOvVL9KAOEvkQimjVZr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dseP0YbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dseP0YbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789CDC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712013496;
	bh=4exGpxr4B0Ercgcpg7RAHRZW3uGbnCWOKFBTG/pKpX4=;
	h=To:Subject:From:Date:From;
	b=dseP0YbZNaLifgyMlP6cp9za7ov2CT+IVJM1yI3Zd2YJASpf2/CFtXPoOjHoYQgZU
	 7OBGIHWBaIP5nY1OfOKDy0Gm6ERI1WPH0gqmZpjkExybIpTfxZt1vn6AekXWGBHw4X
	 k3QTcI7cyGBnejLU/z5CAm3yOaG8/vOxPk0tw1thFOVlXfqUc27rmc5O/luQAMYqIj
	 k+4O+bzFfz1RDtDuQ3q+pCMssR3nK6Kaye7oGnsIVdImKo+YKgsW6j+kg3i1Y3YWKp
	 oTyszqBjW4rphdUcLc2whjg2w1h7RMVG0ygXBtR+/jZxdYIFvD8zRzy1gqaKAGjVIO
	 +1WkQNF16J0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66416CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171201349640.23334.13469477049748971006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1086227545780620a60d1b63c4546df6247143f81f27e57002603622d2ecdd32
Date: Mon, 01 Apr 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712013496

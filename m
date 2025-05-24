Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDCC2AD25
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748125794; cv=none; b=K57953RyjHza2Wt5Uow3ZoDzGtQMQfOOgik8Zcdu8akTHpviw3g5ELeN74YMHf/LgobV3SFdpZHyCWnhuJ3CBAz270siPtrMFfRDhog1vcBL0h8ZTnACgW+R4tlTrJQX9Cb7sk1UdMr+i6OFRmxO1sEw0CntkkukuOSmJ5yi4Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748125794; c=relaxed/simple;
	bh=I6JnxyTNlU4G3XeoaV0TPPJ/eLb2QUImtE1n9FmFvx4=;
	h=To:Subject:From:Message-Id:Date; b=jmnPf0N9QAUKxwRixYpjfUV3DdAmnKIWHC9FxMPXAH5plRQahhnvQHLuKwwt5eyq6RXrk71eW2zE8kS/BbXMFUuG+55yAKE2ZL1DWNL3GhwzGoILi82sE8mfggCLZIsk2VJ1YVE8KQXfeHnME7AaJygwftcDFy81Zpg2kUivXqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mINZcl/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mINZcl/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0747C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748125793;
	bh=I6JnxyTNlU4G3XeoaV0TPPJ/eLb2QUImtE1n9FmFvx4=;
	h=To:Subject:From:Date:From;
	b=mINZcl/ocI6xRFuAUzBg/Hwl9juJYU1USy41zEMw1xpEfbGyVJQJAv+G6SM/rpYqD
	 TLW0JHso68t0N0Bc/OJrrpxo4DfaOLomjyF0Cf90Gr7tnP2Wq0yJZyTCUttbHB/2GC
	 4pDqPDWxXMfMT2i6uGKxorGpx6Ng8ZsHttwdwi+14dSCdbGZKM7H5H02nH6QPYylvU
	 ONUF6/sko+0ZzbdHJxG2AUmhVjmyYDdOWHSMzTgW+VmsvSKEWMSLJuslYaT3BiRQ6T
	 G4LcrXOIxrAhIXt5nmefkTS/byiTOAhcE3zA+zZA3bvdyHxhlhxjNDZu/i58IMfKnt
	 yKDUwkQnOUQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD5BC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812579357.32328.6514142225368843817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d297b6140b6a3b23ea1b64c78b71b025887f81d30c70380d818a6d3110fb84
Date: Sat, 24 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748125793

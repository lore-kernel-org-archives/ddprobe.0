Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C1013A86C
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711657097; cv=none; b=k+L9C6ld/bvrYo+vDc7kflaVcRm3d73ajroEvCkeA+mBFNDeFPWiAaGKwOh11WBBX7MVCA76FIdQd3Vza+IXWqto2bjTseg+ZxFQUjMProyhazUf07eIwpmQlLrf8MmXpBTt8y6u0NIWmAwYLIWEDlNocEPlYsrrRm9MHwN3dkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711657097; c=relaxed/simple;
	bh=g0AJCMRZcIo5yoAVlHZ5gVoUkAt0E5ysUa9YsqYQsAo=;
	h=To:Subject:From:Message-Id:Date; b=D0l8AFC1Kce8lN+ScdT4PuWS1oX1E2KWgKnuivdwSwrw1F5sEBY9X82xU9sZusEamgBJ56Bevm4sfkzIooMroBFlRSEbWIiPsDE7FbuVnydQkmhTcvEc4YwabQtFmz2PS2uerjFnnX6Dn8heS4jcJGR2vRjBsG9ERK/RUT8h5+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYi9u9Iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYi9u9Iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B4C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711657096;
	bh=g0AJCMRZcIo5yoAVlHZ5gVoUkAt0E5ysUa9YsqYQsAo=;
	h=To:Subject:From:Date:From;
	b=oYi9u9Iug7O2L4Oy0nJw0CTJpbpgwba0OJpwD1w9+9D5ihXH6HNz3DsuXhppX5+mM
	 v0zj/qkUJwF3A9P4Zh25eql3X5JUm2Q5h+7h0HqpSloFgBqVEuEvezof7VYo7+Q0Vy
	 BzjZ6Wb/wd5Cs8HjZpARNvIR7VSZmg+Zm4Pp280iONQVvO+NNSU4xCkPaxtX/PN+8K
	 CThRMqcUH7WA0iMwZXJ8wnd9qdhbiXdRbMPViwGfSiiC1hPgiun1NK4orUTQBtrAz9
	 4pg9UNc7V3q/Ejb6NaxqkY6bRQigjFtmEf3bD32xq6RumLhfkKwZGzYEiu8m//HYdh
	 kUWT34ywixONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8658DCD11DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165709652.24356.17545256050594501833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332db42f284c76fd9b8fab0f07507151b36069c4c0c53cbcd6c8b12f3c9a6b8a
Date: Thu, 28 Mar 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711657096

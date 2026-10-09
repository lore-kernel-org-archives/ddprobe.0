Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDF224676D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791514834; cv=none; b=m3pg2+TcLApn1RupfUj9xDydEywyuINokicWkRDnvq8pCxFGAIfW3eXa+p3k0D6lHKz+pmXzynSWdeqB1GVnj8RS6yi+mYf2h58rzFgY3KNH6AklZu4u6gL5vOu9mk3YqUzQiMs0CiXl+5rLm+HfoBS/2z+YgfIG+HMqOPf8iXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791514834; c=relaxed/simple;
	bh=99FqsAnwNu6h88YX1k3YLR/mbZtrOjgR9nhreuHK77c=;
	h=To:Subject:From:Message-Id:Date; b=Frzi9UxoOLx5vfh1O0d2c6EzAyfMflxFFhqxaqgik0YiPPyk1t8lL58xiVllexMK+KlCqYl70ffpEfJwecAuz9rIAfWANXCJt8dweaS5EQo4OQ4aItnoDHkaY1sEA9uextsyYXJgj+Zv/67E6a44wwBF1USEYg6hkBKVtEA/FQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAfdUxpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAfdUxpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D223AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791514833;
	bh=99FqsAnwNu6h88YX1k3YLR/mbZtrOjgR9nhreuHK77c=;
	h=To:Subject:From:Date:From;
	b=oAfdUxpEB1pVtLAn6Sobh7GXoeoHUy533zbTNj3rQmG10ko3cZL+J5GXFYxp5/3zT
	 cmT3bTGqVPEG1nfXzg2Yr317m5xkx2E14hoGGAZBo4APa8451LryUZFnWtTZpdx49I
	 bq6x726vUsMt6v4jV2si/Q2kGTDW7tmHXdnRMYBP1McS8ZobM4LvkZybSwxXxxKpLV
	 XhlMbmneyLxthMbNPQB0VbYeXQQy4pZXrEvXI3dwot1nb4cOwTRtTR4RPnDcbWK2pi
	 1AZqIbNp1YKfaKEgvHNhxgJ2hUDMlLc5Mx/rs3yWL/Nsv2JTR8XxwWZtXFIJP0BkB0
	 bASEdGa/unKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E2CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151483368.18960.13937896302472357100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1285fb68e89a57fac47031aa5a5e90a999667387c9e68454158ee9427f7746ca
Date: Fri, 09 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791514833

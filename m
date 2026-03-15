Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017CF235BE2
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773588294; cv=none; b=bctgqQxfzERn0w1KVbA5nLZD5d8bhtT9X5B0BR1zL3n4y96dyOtYLoZGJTIpwPWri1Fmwet0egFOAGnXKEP6JjNpxoUjV+/jDluWD86L7TFHDD6DgY0B6HoFXNQykjEfTFsEudNVw2vFo7/0s69F28ucyPJA0lsn4cS3zvo1n5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773588294; c=relaxed/simple;
	bh=wtShZas8ickRXjAnxtqJVozufXvnD3LB20kyVgPcCtg=;
	h=To:Subject:From:Message-Id:Date; b=FzQfkBZUOytyzswUZO9igudTKRehVYG5MJGG2PCBL+6qtUGLiL0Ow2dV4oOKQyzHVWczI1WEwQbUe5XgOalC4Lqbnyx9Rp1CnHG8J7VAuBBEf5TGPbaTRnx9IWkf+9OwheF8CqQ2Ac40LkaN865nL4I8yXlfAlEOMIQpDGTWpEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5bcl9D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5bcl9D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773588293;
	bh=wtShZas8ickRXjAnxtqJVozufXvnD3LB20kyVgPcCtg=;
	h=To:Subject:From:Date:From;
	b=A5bcl9D5D5+1QkjZDHq7Cr7ggG/EWoMxUhPqYOYrHpTJzeE/aTViXzqZ/C/Twgsjs
	 da8u1rc+EZ+hFW/eKnKyXoIdX6fWqNUp8+23Sr4EuQiRvJ80b1M6TcLon0zhbP7Bjs
	 k8/WSNGVf/O7SvBHCLMfjL7gpas1z1y+Frxu+2N56zIjac3gmdAK7kaLbeb4iHytpB
	 Pj/DeHxuMGx4v2PX4Jdmk6xAJ1aYymy+dk9+LepnEqVTYDVvEzNZy4S5CvbWdIxFJG
	 SLsXBObSoSaFezu2tuAgmqZ0st6hCjyqYD7hpnDhizeZADDfmHAZ+Ln96pEZHoLKHf
	 gaxMLRH6T8b6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FBF3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358829357.21409.8975089081377762086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ed92d05fc38dae2b09213a86aa11ce0bf3a620ee8fbb6aebfdff0a613c2c22
Date: Sun, 15 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773588293

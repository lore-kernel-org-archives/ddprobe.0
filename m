Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A5F2DEA75
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756780194; cv=none; b=sAJOD7tiEs/35zN6gVhhrDcKpWpCOGXQvGAIFe9RewmWmxLMQB/cR3/CSeip67XFqcIipsypSpGrOmRXx+iSwj1BkdrvF6W5aAubyIjOguGgEpBuF/UsU+JkLWcx2yi4uxK6cVTwC+pf9UXBH5ZZMrWMGb1hO9RDFsNd+lFneis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756780194; c=relaxed/simple;
	bh=r/ZjnUUMErHNTliVP9ZQhxB7e2UAreBH4H460267OfE=;
	h=To:Subject:From:Message-Id:Date; b=Cmc4Oan7MRnCvSjF/m5l5OvsEmSXrqva9qrKZ4zgGWzQEgR8y19nQd+GmVsQMpYd6P7Qhs4+1iku6FwQJ+ENXl8i7Nm7oGe0289aZI9fLAXd8BVLH1QiNiGRnNthf7s6paXaYMzFFsZqFfBx72xU7RWYdYecFnYy9yyXkYnuuQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKDGY4f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKDGY4f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2252C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756780193;
	bh=r/ZjnUUMErHNTliVP9ZQhxB7e2UAreBH4H460267OfE=;
	h=To:Subject:From:Date:From;
	b=IKDGY4f7bAJszafcvIgyzDJ8TPJhrmOCQPOcAkLRlInV2sctcggk0UHmddQgVNNYR
	 OTETmOAsJIKb3iWzBwQ9DuXW1oJtFOjLvK88Wrte6tsQVrk1/RlJKGiGeZe5QU8EjZ
	 kKJrzXXASNlf6lMad94Uz3tMv6Ybg0M+8mSJbZwvBwlbT6uEqEJmbmQ9k641RNQ/Ay
	 MjinVzjB6/ALOol9jbgvxfTkCXI1qbrLqDI3ZOpgj7JN1vOyuklVEmSki+zWZ1FIFD
	 ZMn9wr1sh+uYTE6fQghVNcKVOdCRk4jMTZkY3uKv4NSxiYRhminYTBo5CFAoGiInlP
	 aUSJPohn2UvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47CCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678019357.4172.17125057057986862280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9433d22c33f3330263c9c7a31495738ab41fd11758c9369710bc3d8aa4dbe50
Date: Tue, 02 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756780193

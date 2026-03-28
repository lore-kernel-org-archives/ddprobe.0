Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048C238553E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774701894; cv=none; b=fxHzeUXI/B842kQBQKmUA9AhJChvvweh7blZyqC191Nev5aGa70COC0orEp3S1Depbl8NTPnuXlGqMk8XjEiMeiQ56sVjadJB2Bt101KdLL8XPgdBCxUEAfkPpeATwfaeQB4EhUAYZRfq5Oa2j0qs7fP1rlMYxVxObCvpL662u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774701894; c=relaxed/simple;
	bh=DYEQASnwS8BV18JPPdXz/3ddJz7h4+A47OakZLxSKbc=;
	h=To:Subject:From:Message-Id:Date; b=j0mjHJ0A3bIM8UZO/2XoCOAvx87tAW+w3eFF2aC9E5uNLQtMQeJyTqUQAtN6ORWNTRTJZZ8+YZ2VaZJiKCEHhhHZnEOxUhX1O/YUWlzhnwnDnOXMBUmQpCz22vpzDkLxPNFrTb+8lUUNzRwTG44h2xY+jSLpkHtQ/flhSyMC5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTpjd2YO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTpjd2YO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774701893;
	bh=DYEQASnwS8BV18JPPdXz/3ddJz7h4+A47OakZLxSKbc=;
	h=To:Subject:From:Date:From;
	b=dTpjd2YOKg9xb4MYZ5hWlW1nek15r0vB7ktAl2YqHYLngSyoZ73wNehYN3qDfIlgi
	 2nxXnW47BEd/N+ifl4nzIs5rwQdMvg9R6oeDmC31HXi88+wLVlZgvVhckfS8AKApuq
	 vmhwtsOH/ZSjRakoHWxayJSLP4W4fAMPlsbK7aV4PQHbJWqL/fBKWanmWKv3eLlzBQ
	 d1OUTi+QZnR62wkQOjZTYkQYOC+wXUXUxHXfETP8y3cpNSNZ4kfA2GR123nuQeItCI
	 vn1UEpeQWEv5JyTjL2O1pZVjYcC0uCHMLiUymYP0Lf+6e0ON+noJiFxoO17C1EhTV3
	 ++FAGpVzD4msQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470189359.30280.11343493384963929289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38c0ca00346fac42a19ad11f7acf7e19634e9f30d08108c35cb13568acd1d52
Date: Sat, 28 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774701893

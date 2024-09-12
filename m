Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2362C18891D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726182354; cv=none; b=bkUP1G6Vc8KT9c/1RPaBxblqQKus3bqW5RQDsrGaAK/0B8SGDmmBlVAqpOTbEWeV0yKl26bGRgDgempyTFF52S0xWjbMsXv2/P60eBg9dybF2EeaL7ZuymUipFc8hj6WtpDQr5JShIzN9uTL0QVKYiPWl7sR6wN59u/Hj9RhCus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726182354; c=relaxed/simple;
	bh=Mlwm9dA4RLqUz2wxai/kL+J2BKZm3beA5disGI/Gp+k=;
	h=To:Subject:From:Message-Id:Date; b=AhY7WCk/pEOREG7BmIixK00FAWDBCxb3oajyZ+V1C2ENlsAHJAeiOu/r5gF3heDwI4fK4adpFWiIMWV3CD1tfwLjpQLaUP8qKN1gp0lXba+Yy/0NBovcGUgkicIEh+k872SkAN6Ii4RpiX26TRKgp+Pe97NZJKajtRmaBcBjtzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJEzQz9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJEzQz9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C7C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726182353;
	bh=Mlwm9dA4RLqUz2wxai/kL+J2BKZm3beA5disGI/Gp+k=;
	h=To:Subject:From:Date:From;
	b=eJEzQz9UeC7uvvDnxh+cYYYP2JrO/nHPEbZI/aL5p1bWOAu0tUcSRyaiyLe829WSB
	 3zXsc3FbPtYHrMd7aFeqkEJIdiJnM58OnBWXykK46lvu+5+huqCTo6bkI8st4xRPPM
	 mud5MEfQwbUEkgj+AbuZ/HjVtGk8ZVysJ0hQWnYwS8fNwkpCHSR7CLmuRHmH+cHqjr
	 TK6w+XTL+xYYzp6PtwHrT5pkQAMVhzdrDF2G+/QEgCTkBSkI1o4BQqTDOAVljOJaa3
	 tlomMIRI+Yrj/8QL4jACh7fGm4nhZ0Lgi5dN3rzFmY7djn6mP4mIRoYGgtfltENz+A
	 rs8bEtGJaz/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A63EEE271
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618235358.28351.1482877682682985938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef22a8dea376b8e24a6f35fb1eef76cc1b96b1d0a0ff08c4784753408cc5c5f9
Date: Thu, 12 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726182353

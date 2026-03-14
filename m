Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283B385539
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773521694; cv=none; b=amRcfMoyGoXK8u8yUM+h3sWGKYUvKSRqqP++GaIERWNTNavQHT7XwfINmp1WBO4gpum3GDf+5XWw8RojXJ/Jya1AmCDHi+O050ZHgEE5YpJJb40a0MPei7cSIshG+P7fZiJZr/gRfukyr5+qXfYk+dnANMJEYu2z6+HoSj31Tbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773521694; c=relaxed/simple;
	bh=dGyEjgDWBUoO4KFAo6TZccuoXjsjJSzRG8QCzMEP1WE=;
	h=To:Subject:From:Message-Id:Date; b=usWQNUnWzVzoGupXz8lPOdNwjqcwZBjqg0esnV4IMINqlIYQ+KgTraSyfGbshUKaDytz3uXefwoFScOjaijJUydDWSoXd1+2dMxh6Su4mJqPCKgy6KRoqgGJhg9JCOU0RuzowaVSQPsLZszBor8cOOHKYbOikgHazCByLan0u9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3fGJccW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3fGJccW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01B0C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773521693;
	bh=dGyEjgDWBUoO4KFAo6TZccuoXjsjJSzRG8QCzMEP1WE=;
	h=To:Subject:From:Date:From;
	b=Z3fGJccWa4ifpwQRnIPAwPCR4bSWtvPss84CA79hXf+QoxlZi9VquiA5YdXt3vEj8
	 rjaU85ES4/7gyzDYGVgjx7my3RLxkF4K/6m3gu4tvSQephhd8ufAAx5QIcxQKlX/WI
	 pPoxXhzwbx5aaDt1pNpd/dJ9aMW4l1UnqsV1P8ZVgQNm++s2INUzIaPdsl/bqu0yFJ
	 vZ2or0xiYfHJnvBE7DFbaUFB3Y5eoy1DTUOk0AkOOfyiGantHQvpZubauY9ZdsvSWf
	 ruyTcb9siCJTSBr9IuQ1V7nWSFBNz/X3n+BEUIA+VLkohNwYPJykL7Mq0r+UtCzS9n
	 e3NCT7pYYHDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C14610854A7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352169360.23160.2231315945729414519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2270d66344fcf29ffa399b66b50c70b2a4a4e4b62201d44e132402edea9159
Date: Sat, 14 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773521693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDF8145B05
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717542983; cv=none; b=VlTGejqcDNhreVumEloJNPLyXZFBO7nrQMbXmlD185GnlasjqHGTkBLRRzH8VXk70U4CiLmiFRbkNk4yHN4DEy/vPlWut4RhubDUb0tvhZfwCcYfan579dkdP3Ct7Lbt43toJ4Qo8g+pue6mJQYmBcCatiG3uS4z1ZqAb7M0CpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717542983; c=relaxed/simple;
	bh=PSR6V9Ay/aI5Z9UeuvbhGS7O/7aQw6OjDpeXLsF3yUY=;
	h=To:Subject:From:Message-Id:Date; b=HCJje36fldpjWdsagMufhPCIEge9Fn3RZKjaT+I5k8V79zTVQooN/TurMGVRMYZYJFKjnBQXsFmTj915hvbKgd/2rPtYjFao/Kvx8bBfLr3Vij/MaqRWfMlGEFv/90Eq3H07wnwTwQsceZL91ZCc74H/SJHs8KiNZpp3GjHSvGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBdgwdjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBdgwdjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EEBC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717542982;
	bh=PSR6V9Ay/aI5Z9UeuvbhGS7O/7aQw6OjDpeXLsF3yUY=;
	h=To:Subject:From:Date:From;
	b=MBdgwdjSL9A+ktQC5B381n/GZrXyu/Ddcu0PeQNiAiqcB+WYyYL8apUKzaWK97Eqa
	 lTTLh4+SZ4YzpV2JvFXyR10286tF9C4prCneWIIyMWrnVopovg/L/GXlbKPYJTuO1F
	 yU0JiDeDH7NLISOIHEHxjMrwGzG5RjAEbJK1oRmFLzukqbA5f3SPz4f2znYQHeQaZo
	 ZebdqUUUV7nUq4d8gT0h4TBAFvA+ogPSnT1bCC6jAb61/AeyjsNyqRsrwF1QGdI8q7
	 c2tlOMBcdeeM8hdoUS/etsOH+VNPJXpZvqA2CeT/Shy7Ca5pS7oSB0WuaNPWnOMWHR
	 3brcYC2xsmbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD690C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754298282.23775.4605289705305811674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245dc487d8aa53e46cdb3e832b80bab7e86cff68a5b46b1a95c7d406252f6fe8
Date: Tue, 04 Jun 2024 23:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717542982

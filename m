Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F61DDC35
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787271034; cv=none; b=G4tlc1Tt2U+gTIylXLseUzAOfIQZszl1TDPe/6+OyzSQkUvTuqvcoscmbX69CeOpfqF+rcn0EjRpNxoPqTz2klMZCj7dGjph8l02ozklbkwUSvKRAMLbps3cFHJhEtnqgUAA7qktAXwOL0yl9WliU3FZaSaISs1FN1RNX6qheDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787271034; c=relaxed/simple;
	bh=ffUwZst/RFZ6NU7axkBFmoq8WZO87HC/g/hg1j2U4GQ=;
	h=To:Subject:From:Message-Id:Date; b=jiWH/UdHmxTJsFBk2ndZIEs4EkCd36TLT07zPh96eRmMjyWdMqcj/Cfr1OaVwpcbORU+D431FqXlq4W2jx+LGqb8CSAI5rrIGQoQuHJN59IjRHlqA3mrDARWIXX4S/Ag519oXa8xTeVfhxjNpo8bFeUgcTe9WO0+5P6rnctRUnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK5DwTkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK5DwTkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D404CC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787271033;
	bh=ffUwZst/RFZ6NU7axkBFmoq8WZO87HC/g/hg1j2U4GQ=;
	h=To:Subject:From:Date:From;
	b=LK5DwTkhisjLbH6yqQfpYW/rWx7FxKOCf32uAlPNxUB6VYmh2HH6YND+OIZTaqama
	 Y3Ym5kEIt2iV4DJeMcwjqDlthfd5oXPvsImDbyJW6t7MR6kj3FbyKeX744B0WZQIF4
	 soL9TV15JI9/pymfVIY9vGeLJNE0hams2hbREA8yPIHpLpyMqNEFjj0H70LblnX7Z9
	 cjmBKmh2OATmZ+0GG56yPFt3Wy46CL2uV0IdTV0sZNyNkDQ2cNXPB/EyQ0NU6qlz3s
	 tWXZM8JBN+UB4x/wVWkoqNaOFcsKqf7Z7pXCUojQyZK7cgKUxGP6u940GGBygbyr1C
	 tJI+YFjGAZO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD627C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727103370.21694.8346203139986865664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7e23b98ca052ec0520fe9663f71c49f093336bbc907a5610e37c47a2df641a
Date: Fri, 21 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787271033

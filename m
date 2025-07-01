Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF951CAB3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751330994; cv=none; b=S/Ae1TK92I3enfgMp5Ushhc3NqQYqraAL5sHgi8YBAXJ9NoDHiO6TZR7Qmeltdk2JnfeUbvz4fTDhoUQ86sctNsjnP5keb3WGeli603wl5Nm1zhMECgglkWERLLQHdOFdotfGFJlelCZDY5Ji6HN+NQGsuu2miKmxo2p9G761Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751330994; c=relaxed/simple;
	bh=B/ZsohnStthK2814i+K2iA4Q5/6DJXSGu9s0lDtmHrg=;
	h=To:Subject:From:Message-Id:Date; b=PMIksepVGrrRsn8mTLUpQV4nQXrRXFvhfsib3MJq7mnecASZfWQtAB3JNtKg4hhVedvDdg2mNCJxI146puemc8wvaGKsp+sx2YV+lnGxmRjBOevy+HWb4FSnTTyopu69CI+IfbE9tDEBjbhaDeZZaUXzd1VqbRXexIQ9Fnd+YKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TL61m5xQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL61m5xQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1802C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751330993;
	bh=B/ZsohnStthK2814i+K2iA4Q5/6DJXSGu9s0lDtmHrg=;
	h=To:Subject:From:Date:From;
	b=TL61m5xQ6dxoK6YqAwjlHNaMaeCUyLDzekuH6wtwQ758kJhLU2BKgjUfTR4TKO5nA
	 mVvKmJBCKwVqEOo3KlNi+hA/XJvmkCOaNEEuIbE0Wjd7X3IRe66KXR5GJGwd5ckJ0S
	 ub2feFkmK/VJNbrFgDBYtCyVcqVVmOn5owDzqf26xlm0MejxE5eYuhTC+IhKRUZGZ9
	 /xLsDJEXsePM/g4X6b+t/qOKAdNOnafBoBrkPJILaIbav5Z3VDJfu//u8rmAZSNzgA
	 0Ei/kW6HMPgKrmxLNHBigGa8DBt9B5DsrmHDlQG04i8AKLn3jrtxx8mNAIH7pvhAJD
	 lUvHH8RvWfMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C5C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133099357.16299.5451889626916090829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d2acbd5b92b0c28071763218f65ef5273ddc2142bf3d9dc779c490f41359da
Date: Tue, 01 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751330993

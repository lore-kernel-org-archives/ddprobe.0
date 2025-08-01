Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF7A23A995
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754046594; cv=none; b=tGLBHJMbaYY9wCGrC3QafdK5t1mGpL5dccVFBKK9nymQ/yHKKQUlwTxopYjGbFkb1YqHzjbE/1LSLVpikKwgOBC7u63yg9GQmAjQWP0kLeKSeHeg7QQLsJiqolCTeb1ln6D88/FGKI09f3PL2BcRH80f+7ZgsjvOKSW3evwy2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754046594; c=relaxed/simple;
	bh=zZup+Fg+cC+3X8Bnon+8diZ2DEOCmISLyBVdmpGGclw=;
	h=To:Subject:From:Message-Id:Date; b=PzyZqhRSzeemzYtOOwkKKmzY9BYb9FGZP4jImbGwfpmPK9VxXIhTRUb47Xnit10x5wXGJdrGobPhw53J2rNx8fbG5Nrw32uzExGVTUy9DgklPFFmutUP9sBXusCSFFGinqpomE1+90s50HO1jExbsLK6UtZFp4mODmHk0Ins7FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvTtU+2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvTtU+2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754046593;
	bh=zZup+Fg+cC+3X8Bnon+8diZ2DEOCmISLyBVdmpGGclw=;
	h=To:Subject:From:Date:From;
	b=KvTtU+2Nl5TIyDHwu3NgfJI9RyecrN3q5PXh68j2XioVKRmWSkPEGZxCNX0d1r/vU
	 JD2328ETD21rgcYu4PCyEr/q9O/AR9j5OxAMVS8PPq1/lL26I16jdELMZDhFZ33FMM
	 ICf/gIRhmcZ419fvcN/EnpeuJ8VADK9v3delxepL78yo2GrpcBA5/L3UbUwLI8JCoI
	 o5Mzk/aW5tQSg6gi7FRozfHYQIUIZnJiBlqbOStA2YvHHIMPtR1vKS8AAoZym+bwY2
	 UpaJ8kqYV+jvObaOksUbzw3TOkj2/RkiwA2/On+UWZziaKXdfK5V/xHTu94v/tkNIJ
	 jVKYA+HwoLEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F341C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404659357.18893.3764103118166063601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683f10bc0b8a208fdd42805a7836107023d591413b60f9010760f0091c0d425d
Date: Fri, 01 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754046593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3423B2F4A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749446394; cv=none; b=Zi2zDnFIxcqO685srnfvuJ148OB+V/jl1Z2UJrelRxzqDzl/KAbQzA1cMojnAQU96JclUi3uwDSo5eD92yhfgcdyex0rzUptTPRbcJyohHyQ5xkGrH6Gw5i1RuKlPyPoun6nuROA8rDwOnFLtY2IGkcDCMpONZRL8FY15FStJs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749446394; c=relaxed/simple;
	bh=6zjTxEM/9bE1RC6jEWiCaG+SfBD631b1XkJ6dTKgjLs=;
	h=To:Subject:From:Message-Id:Date; b=OY3/opDOnUNqlocPhRY6zd9MVHP0VBOFcALyxvwqp8avu3CVJuMoQiyMabpbbHuDwGl+DQ02AF0NjPTgfmGt9I8V0fR1ibd0mMMnSoiOoIK2SgAB1+wX9dQxu9haSAWlxCVWwqeerqPjvZHmNHsPFm+NKSPK/fBcgIN3QkXFe0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btQPYmv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btQPYmv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7625C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749446393;
	bh=6zjTxEM/9bE1RC6jEWiCaG+SfBD631b1XkJ6dTKgjLs=;
	h=To:Subject:From:Date:From;
	b=btQPYmv5mxfaF2emsRfBHIq9D8IXwYD7qNXJ7L8EauK6nuLtrOyXzxP3tDadB0rep
	 KNB687y17a2AsBaTARYYM3aTBPES4PzKVawA3nNvI0TRhwh0a7YcNt0WJ/uwWmpc77
	 l7VRBaxArnxvffAySG7sWNXC00Teq0jqVUYlREoHyqQhFOtMmOOxYBCSxWuaw/D6E5
	 +ATmfoVceZZxIwPJ0oZMrIJZ30DomtpNOjG1b0JmUb4weUkMe1gG/qQJPwJYFRYxZ0
	 AMXirx5Q+e7UV4iHgNolFWhmQ4evdtoKKU444AY//VCeWEKI7hads+el/IPQtKkaiA
	 3/YvmP/kGzhIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1395C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944639357.19694.15489650864680324695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb416fc88563e1013d96f1a8c8d0c0fbeaa9fcf76678445b3d2d8e482a738726
Date: Mon, 09 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749446393

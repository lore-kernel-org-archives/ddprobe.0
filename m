Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F423E24EA90
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775252734; cv=none; b=rlTS2XdXF6XWXPEFpMIKqcEMQsogBSq1OJY+/Ibpo/PU6tgGD4fmDc9/JCcbyBphFi1hD2RQPYrWJ7RjdIegTkKAx9bKIUMpbq8w8rCq+0IQPqkqywik2TSr4qwGihwt2nYS6pReZ9f4X22lFvpqILJ2YNAlYljH8tcJnQ6hdJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775252734; c=relaxed/simple;
	bh=jRUtmLQpAWhliWLGZKnS8Z0M6BUmOvJiPH5P4Y2j2Tg=;
	h=To:Subject:From:Message-Id:Date; b=kovL4CqRX8A4/6ZSevKp4brQ+Mcwe7oxLTo30sHPZ+fEvIBlzMzxsy26sGBEOiSy/T2/oqigliTNdJBa7M0s7G80YMpN5+jujedDdtpgoQanb5ZHQDr2B3jf0ZwqSYj6hhKtjEpU+Eth8THrDQSX7xxAS5wqnk3mr4rnd/puXbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT4cOK/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT4cOK/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB50AC19424
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775252733;
	bh=jRUtmLQpAWhliWLGZKnS8Z0M6BUmOvJiPH5P4Y2j2Tg=;
	h=To:Subject:From:Date:From;
	b=OT4cOK/JaD2cWRa4rTcdEJkr25Sw5EQcf4hKy3JPUWqO96DbQCGr9w3EWFjNAz5K+
	 6eJjiJ7znqISPR1/l1ai8bAaofjeyre5SzuGUBxsXz+mNX56faWdxM1rbkLYQospcL
	 Gf0kjSKJHcr/aPEZLs/QGBU+U7o1xsFifBh33yB3JdpIHcJuMtkL5VKktErDmh6472
	 5QZfwiViR/umq30RzzZFDPKI+VJsDfZ+8q4iGZB0Pwow/pPXni5kv/tg4udh2i6+7o
	 1ZIrmV+V8nYuMpO9kUZGd2kvw+YjAf1nNZuQDt+YC3i5F7aAqSScOPB82A09ANfzA5
	 vmkaiTRgx+y5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF73E88D6A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525273369.25723.12604101176642223310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688b3fda57e7f71c077c329bfc9f1feea9106140179db1594b11ea433608f654
Date: Fri, 03 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775252733

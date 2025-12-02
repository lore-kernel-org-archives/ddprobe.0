Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCF121883E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764708774; cv=none; b=jDyH3HnzQQq7GI5w/k+4HcNNs/shb1XjIYhgJNr3EXTXuiLI0rX4XNQGaZK5q3aU4547dJkUwanjnaHOdqpfcL/BMw9cj7DjQrFCG6aq4rX9+mhcVWky4322VqifJDCvp+BzdQC+0mptzKLcW5/82I/tLwnMeujP+ZVdkbMsmR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764708774; c=relaxed/simple;
	bh=NwE1E+X5QhJNEDLuTikqAA2tDtr4HddTvSZMq7uCSBY=;
	h=To:Subject:From:Message-Id:Date; b=p7V4/gqykNtBzNZcdOqYpKcvc+FCMp2u0cgqN0oo0KPL299lqrTCiaGh29xd4kFaqDnsUxrggbaoOEElvElz0wfVvMrmegNRGfDFcHVuuirH9MKBWJpaFozqDfLq89SHxlgZT6xDyS5LpyZdpdYjwpf3GyyJRIAd4xiBNFlCEZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4sdteEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4sdteEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1950C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764708773;
	bh=NwE1E+X5QhJNEDLuTikqAA2tDtr4HddTvSZMq7uCSBY=;
	h=To:Subject:From:Date:From;
	b=q4sdteEZu56R7cCclKEq9n04TCKXo+UITfXWK+hAAI0BWpuhbT7Zluue+2/qN0bOk
	 oqMRrGoh7+ciAdGSlUwkAZB8KJcaKWevnLoT0kbXqoLuTAPsDY6BPS0KndpsSHU5C1
	 U3eWH7fILTBGLYz9hhZp+zcbrs5n1p3yDWVMq2eU7eFv/OFyKd5KmwnUabGXPN/Nb/
	 WN9ISlxkfJUq+KZoEfeU2/5/e3onnpgWfcWMe9t4bvSzi36F4JvwP1JBDiY4FAnPM2
	 53grNQC56kI1N1ZbFNZrHc/WdnsHUoG67ORNWJuUFimKLFGDg2vovDfwBAMjBQazwN
	 HH+1z3AqRuF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC27D12672
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470877360.24735.6667892842397912628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7161ef45f76868e706caca2afa1fc57a494173dcbb841a41f31c91df98f78f
Date: Tue, 02 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764708773

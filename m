Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9731BD9CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758004796; cv=none; b=NY9TclUxOhocR0yAFP9C5umh4M+KH6k+MbytFg9JtoGqYh+E+NEiy1IPxEug01zrmuXGoFbQJu1i145gcbGP662c4edWt+aDMNU2N2NblvoE+c6+WCrCxj0glMgEz5i4JlnIN58aONi5TBrS6hKged2J7MOssHqIQxpIpb21zdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758004796; c=relaxed/simple;
	bh=vjiszlzqnVxffR1NRZDnB+44myTA5H4jPq0T9Xm1UmQ=;
	h=To:Subject:From:Message-Id:Date; b=eLp3cbV9O6hQPeQVqA9SRsVpSVPtNMLR0qtyCvgjffgL5NfWeODCKaLyqKX+cK7p4sP6PTKUpGItjn/cNL7jJqwWTUWZlu/9/XyJpRnvqFJ5rqAZ3+HW7KPJZVxEvmgpejLUbC9et2Wr3ey1NRUDVp72u80Q4920icZxN48yU1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYXmcpLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYXmcpLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E79C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758004793;
	bh=vjiszlzqnVxffR1NRZDnB+44myTA5H4jPq0T9Xm1UmQ=;
	h=To:Subject:From:Date:From;
	b=rYXmcpLGiVgj+CCMEv1TqwZ0tDYjwJVLlvPBhKeAeUqUaA++qAW40dT8LDb5HDJOg
	 BI4lFsvS/JnEtcrl34ifGcqfFhL7UXL4RddeTNZoxDY8MLQBjaHSHYrX5884ZViooa
	 YD4GKexbAuAmUW0kAr241lq48CCp4ZWNhu11LA1OEInpayTCNNPzAqomwApczz4nC2
	 vquHw/qpXX807euFH+ZfIJJV9xZoFgZPOLXmAZCXSKTwvA80NDlXsGI+7jThcK20GH
	 GEHnow/sL5FM/GMWkBqfzql48T2fQYEZOu/UiZ94cs0rYoDCQnC6rWFrhUuK6AezqH
	 4k96fxZNDLZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7DCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800479357.16589.3111147952946136315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050502a002b31b6f93b1dd6e9bc458009818f02e2a29cf61864b5311c514dfb2
Date: Tue, 16 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758004793

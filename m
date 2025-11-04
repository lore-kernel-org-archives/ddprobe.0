Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172531C3BE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762274994; cv=none; b=GET9RLKuYSksJdU2cfbmemPirZymqe7b8MbmamjUTK2zZrf/BQvKuwMYTJ3lLU+5sukuujOrylzhXb3u0PhRM3YX9uwjFIqweCGobBNJKFhaE8tHaI1sCWDJxv9xNBB2AmDqMo61ohDYa4gWobxJ6dcpOka5yYVE88UoVOu2pGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762274994; c=relaxed/simple;
	bh=03oxRew2rqSelWIpxY3Wb4+f/MxkVhscPLdSrUSTVHA=;
	h=To:Subject:From:Message-Id:Date; b=vBkZlH/4ulSz0h+N7AU86wJDNwpYMP46aHD5HafzGuMjbWX+Y/5dohOl5eXKN7Aq5f6fdbEmDISWzHCq17cOfS1nAjkuMCa4eqif+cvl6UouCGMhCesnZUQMMhzhSRkxW/BlC6gcQDs03bNvQYPO6jhjru86BPTHcrKeakJvWDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHbd8b82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHbd8b82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D230C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762274993;
	bh=03oxRew2rqSelWIpxY3Wb4+f/MxkVhscPLdSrUSTVHA=;
	h=To:Subject:From:Date:From;
	b=DHbd8b82D0JTzAz8OlQXEg9fL0RSOHX40J1mU5wSZuSPKGXJ8CSSvWU1MunJByiFk
	 FIPb+oeIc4wO/LCy9PLQqknWZUWzg97ddkjR1JiZe/yndZEVjvogyFDmsZKprnGccP
	 hLn/oXLglaWlTGW8vuj8wzjtP3Fc04/vIfBM13BZ185Hd901AQuj1G41+hPUevpmlq
	 9bzZOA6ELbKBVJ/enOKfl/WppJrkzHwRaqDZa0fz+9wojnOZqPAKCk+HMy2sH3+xCK
	 sggg62qQoOCT3hELGykiRjg9Ie+Dfg0DPk5EXvYJzPZE3GjfncK4NiGWEtW5wH0KhA
	 ZZc+pVqwvLXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90519CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227499358.30659.10794090718933279181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc41953ea33e53c016d9d5aac3f36f58d835280a75ef8a1c1ef074335ffccc9
Date: Tue, 04 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762274993

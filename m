Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFB9154457
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718379503; cv=none; b=kzqJWAjVInKe3fFwneBb20HqMC3VvHLnrfEWutOVHWw6exFockoxFIKWqFXNa7FaRq77AcDyvJBr9QycdIF2qD4daa+U9TQObn2HOoPgA66IAJ6IYprhfforBoPJOYPbP6pQuoqOXx2blWHZxcWgBqQR+j6jRjjBxmcT0YcvXkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718379503; c=relaxed/simple;
	bh=i0FK/dunEhN+mRT4jcIKbNSyY4gCkeyYgxEacOSPE/w=;
	h=To:Subject:From:Message-Id:Date; b=FTB53HkTbRTi0/T1Rhj35/qNmqL1DKG7Cubf1rz2Bk8ULrSw9R/Kr0J+CQQarYm95GmbYS/Q20fITFkIjF9+ZYD7Fkut3xggKAJuS57mFdQ9YEA1fH5YmpZ3mBUhELgQJyGXI1svXFYVF9qlsZ2vfN1bYPCeXPn6Xq/zUEqWy14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3322jJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3322jJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8500C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718379502;
	bh=i0FK/dunEhN+mRT4jcIKbNSyY4gCkeyYgxEacOSPE/w=;
	h=To:Subject:From:Date:From;
	b=F3322jJTaXcShg4Sgdy1E9wzzrwM6QUhv4GNXJC33A7F7+P4qXiJL7miMlVihDK0K
	 JuegFEJfPHFxOJnxYHqfTnG6dLX+D0xLjEg/tG7LP0TcOUEmpetpmt2lhEEVP2kSi6
	 EP9AZbU6hBStb18Ply9dRWNvC0k2ySonuQbtu5qQN7dvzLiSksohXhS2mds//UXTAv
	 VrJPRDOXz53056/iZPCI1D3KHSvsJ9NgHv5MmLbrVHfI9msQ72bhbqSUDo5LShIA3s
	 NgW3qPWFUYNf1lDnZvsAMj4lLHqplAdPL/7QjHVCoi1Bcvzllbq0F613mlQmtsR8No
	 wT5wgIPXrBQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20AFC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837950278.19314.5846862184475419341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075a06b6a543deb8e5533c8c0e83fa5a99128379b74b240d2086f377e5626ed2
Date: Fri, 14 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718379502

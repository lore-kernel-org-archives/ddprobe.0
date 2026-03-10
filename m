Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7752E7F38
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773153894; cv=none; b=KS+lB2m6ZtDOT3PYLuiNmWsPVOK6uY9Z1TT7vi6Os/aKkPG7uuoUYydM9Ro4o2wXmoYyacg/RgyljknE7W+Vma/zpy5Ni8mZUQLO+kJNEismp60HMM9h+MFqO5nLHRNvGqMmZCPPSqlHYkPfbCFMSc8YsqCLOorrEE9viaq5Whg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773153894; c=relaxed/simple;
	bh=fxOd5MaD3G5l5qmWOAsh3vJbHVQdY3Qfdy5iAe3Iijc=;
	h=To:Subject:From:Message-Id:Date; b=AN+G5MmTf+TFq2XosBsGCSOVstyNQDBDGXKmJffwzN07wdZS28capDZS16ppzGVNC+EANjlEDIv4SOaqlkvrFJofLnYTDIzb7XTCAu99ywDpxVp+88fLCtsNgxnXbFM+3rkRubTKIRveWyAAnG592T8suoJETj9Psr8FGHq3Wyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Svv9fRPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Svv9fRPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA27BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773153893;
	bh=fxOd5MaD3G5l5qmWOAsh3vJbHVQdY3Qfdy5iAe3Iijc=;
	h=To:Subject:From:Date:From;
	b=Svv9fRPK+G9MtgX7f14zKHIHMscVdhMInFp4xXGqLkkSggG9bBrFGpn6ZAcFDDjPg
	 6KgRn3063Y1w5eOXZrtB2HoTl0yykzNMexaIQ5WFmJSaH7VyKkBl5Oxfaz+kNEWF7G
	 k+v4GpZciSvcTJiwsbuyifLGCp0LOK7vySrxhP40XxWARuFsvZvR7k+u8tIRZkq921
	 BYu3dn/wkUEbXa9R3F3htEpVb5MKgfo23DGjEsTzrpdpjqBiZ/2KYTM4ZxAaBCyOIL
	 BC0MCM+Fwi9emKC8zFfik7A//3htHQwzZst+MV+oZcuV6bdUlD/CWvs9gWSc+yc1q1
	 tDbJiXgi6zEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB9EB1054
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315389358.25721.6204249095781045091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773138ad51cf8f1e7af999571b05a09481cf94357c5ab1d6a790ea149af35e77
Date: Tue, 10 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773153893

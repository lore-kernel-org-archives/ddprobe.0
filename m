Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9C233E373
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769168034; cv=none; b=mQ7qSbSP7Dh8F8FHTO4Byo6ANioW5eDJCJpJfL8JZqZC0b3SRfVETm2+zp0RzxQHi9qhMU7HuZrzO1GvlRu5dmjVMq331YEFKOj43oIPy+oy2hjR1/9TDxFhfYCBEyO3Fdaq2bWvsdoJd9wUfKdIV1MauBc8E6yjHhEE0XP7CkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769168034; c=relaxed/simple;
	bh=bXk5h7TcPlVx6C7yrRHNGAEvvlASz+A787/G03zuVOg=;
	h=To:Subject:From:Message-Id:Date; b=EFvBDvZb/wPK6msA79kRRV0F0Jy+yedh7xemFnvievul86E5OvrM4VgDwQdFZtBowhgk2GfUh0yYJFU1MJMGFssyjD9taN6EJwXitX/AhHu+f6SrOmbTUwRpNHh/Bc7ffES7tblMZa3pl0KZ6QOSfIzRRYiXi//HfzcIlTeGJBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8J+u7Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8J+u7Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769168033;
	bh=bXk5h7TcPlVx6C7yrRHNGAEvvlASz+A787/G03zuVOg=;
	h=To:Subject:From:Date:From;
	b=U8J+u7Xx+kWM53rpDjD7GfnK/FqGK5jtB6dNhQ3N/ODINDjH0IOqEpT3WCiAGlrKj
	 n3HyLsNWCzKuIdGiYXJ+gKswzdcAXQ45IqKhSa4fngnP/gPvKmSpeaSfr3vH745bxv
	 QXAFObIES6B1xA/0rY3Im9ok9hFkjC6GUlNdPTnoIbH1liHG0Y/AOgqOpGGzYMEjgM
	 u8IOANmKSM8bpPQJkhm0D+x9bufjwOsZuG/jvKN/ghsQ7AJN5A6/CNDFCYUXAGMPaU
	 X1fANnT2P4p80FWZAWh0mLG/MsM0K38caNmccMOgD1j70/TMQZJr0oJjvmOlFACJ8Q
	 vZkuLpsTz/9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059FD72379
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916803358.17861.3659769619034845630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b802f6e1b3813d179f26e505fb80ac095a0ec11d4d1e42badc53dc461d81efcf
Date: Fri, 23 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769168033

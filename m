Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503615ECDA
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715092343; cv=none; b=p4lCRMa0h7UOwj21SYdlfd6lqxu3BdmhqQ8HHkjFOAZI3S2G20K37+/m/Ix8eJKd0N/cEABcjAtfY1wOgbLJZ3OLKuwK1LGSjqaCJS1/NEbjtLoYCxVZZI5fDDaCWfLW4bNPNSjvCGAOkGgtjEcpZrDG9i4ebFw9TfvjiE41u+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715092343; c=relaxed/simple;
	bh=20uQJalersgO3i7IxytYxi8PuD1nc8Z7od4kbIjakfQ=;
	h=To:Subject:From:Message-Id:Date; b=NRvSBWqJrfqguGmdSmk3z/FDA6jiuklk6CZdMleDVd8IQVu50w79/dSIJYUUY3ieVJ5f9YMT7bv/dkOZjBqbj4FhukOdVGRgHldQ9RDfVMmaLpszoPfl6zEeHno40iqRifsSKTZvYoxJ0zfDqN55XrwLBhpD9qaN5Nl7O0kMu/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfD31iPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfD31iPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E4DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715092342;
	bh=20uQJalersgO3i7IxytYxi8PuD1nc8Z7od4kbIjakfQ=;
	h=To:Subject:From:Date:From;
	b=lfD31iPcdOmqgWxpa88yFxqd29beUF4eC+K2kH56Ek/76nsxhu4K1WTdePIkKs2+g
	 6LlAtXpVR8Ht5vYUwNPynBHxyylTi5ml0NwypWpNauufFjAE6C1XDPOJTM2M6uXXxO
	 HX42FhPo4DC0uWnB3+qbsXUdm9U8Du+y2uwqtQqh/PPP4M5ut43xa3rexdJLvZCzqq
	 T00TkvGmA70nwQqWGn7/iPn/4xh875ITnvL+kNZfV7EDxn8Me+skR7SFwSl2taLIMB
	 rmygHtAIXVGmIObeu7Xy7CmXHDc0aNRgPRdzowReUyic9bA3UPoNikw3dJ+kDHt15V
	 HCBk2Obbn8bLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF52C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509234277.2238.3624125212502073877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a072f774cd5a018005d0d76d0f16cbf0346d4c7b96c727bb49a23e44186e929
Date: Tue, 07 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715092342

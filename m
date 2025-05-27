Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15913263C68
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347194; cv=none; b=oVwV+KGeA6zkvuLvXzTPfk33Xzpl2zfcpPzHR4P34C43ADLC4EO058ucKb2abLlB7ewk15YKW4ky+qr1bB/p26BZ3RKmGUdXhDqIeS6eFmgdZvP7gn6XodT8r5u+k+s6kCfbCYwUCsl09b1BISe/mPa1YSt8UgqqE6ilGzk4NyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347194; c=relaxed/simple;
	bh=IpFIbTUEjubvcMU3Qa84erD71rtNnhy69Wf+us4H+Y4=;
	h=To:Subject:From:Message-Id:Date; b=uqd4oatixu3Ieqr2c5GFVgykFNkhCAoeWz2By7Wl7LOrzYRr+YzNrZa373QpsZVBDKca/4qcfw0AenIRCN8FwAh4AcufEZeHPoiunhGHsIfpg2VSNiEYZnQSN6IWvTGIWJjrufLo7L8NJmPJulK5W6Ikfjy4K+asxajiad9V7ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOsP2aIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOsP2aIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E84CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748347193;
	bh=IpFIbTUEjubvcMU3Qa84erD71rtNnhy69Wf+us4H+Y4=;
	h=To:Subject:From:Date:From;
	b=IOsP2aIS16+Xw6+QKTnsiFoSKKcYe/5+n8T4MyY5VblDUZo/BxsNKmJ2qVgMMvZlv
	 hAQPXiPDRy62mBaegk/1eNWmRUpXpAdp6claIlA3EPic1UYXD6s+g+V67xYFyJ+4vP
	 rYzDDVC/IWGuWh7Fw3Rcog5DbTeldA3iogyXjovlZfmEuBQotoCbdvxv0HJfyfLUpH
	 uFn/210GraAHEc7qTOslLarfoz63OfhUENtGe1n2IxjwMzP/f6I0sBFIXUGlI6VHEo
	 rfxB8MNdgVcRwGA0tuw/+qpyyJDtjkk3+buSNfqoMZexRhn4PlbAUbzC2K1hOBQQju
	 QzmNpv0z5Nsfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E477C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834719357.15128.7344725192523200813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d568ec0fc6a5b049153fab94858e9f2ebdc8de4da48813f65fb8d8eb1b409708
Date: Tue, 27 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748347193

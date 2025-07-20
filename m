Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F340A29
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752995996; cv=none; b=hUaEyRxjicPUpXIC+UOc0c4RDgpMAidvUaeW4mLv7L/aulEZd8x8neThT952FKe1rF8hunrepjyf4JfEIfigNQrdSROZI3KwaHGnZ51WcIU8tZiFGjJg6UhEqbZYwT8Kjxi584p0C+A/BzzngfcUKZba8Yy3t/nfpnDHpAA5+w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752995996; c=relaxed/simple;
	bh=Xv8sbfIs8JhPrad0L4QRNPi6Ikr1cxyqhcChJC4Y3uw=;
	h=To:Subject:From:Message-Id:Date; b=HjvdqubmSMoOFci3v77OROP6q6nSsE0Wj3OKeLyJoPMnTuL2dhVDo4wqWskPpxm9ftzUQ+u8qAhayjPBeeBRmHBM0HiT/k5eu4NGZEduhlB8ZInfjpALAFqDdOEwAoz4fiKvhhJiwJ96GSkF97KFsOZesHnMjlMedWn8VMTlpFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSilfLM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSilfLM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E69C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752995993;
	bh=Xv8sbfIs8JhPrad0L4QRNPi6Ikr1cxyqhcChJC4Y3uw=;
	h=To:Subject:From:Date:From;
	b=NSilfLM+jl2l42pA/9wByjlWK/2HGGVwFSOYdgvzAUWpjClC0opkufnNpo9TfpB++
	 6RSbTcn2eS8xA+l0SoflqXlj8a+J+K1ckj3nL4GxeD9b+Ut8QxsVElZVbl6J0SqzdD
	 0YR9T1qJ7keC1+q9osfBQcRB4pqRQPlzqstou6FthfjRvkIlwDvza5PWSacO0tMniS
	 9NE8C7FmQR9C60J5ezECLB0/7zvPwuJ/kky/u9AS9334obeBIPZJ/iIQRPfi+WasgR
	 yKDVNuEJ427EhJgn5iHJSjuhNC+DCAx7B5rG9tmhxS9kKjvRbT/qb+88UzLKHVruuN
	 1hK1nHhIsJxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92377C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299599357.24099.9915500908147665337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f78a066bbdb070abe12c705eedde5090533b5f6310ee7abd4b8fe21ee10da60
Date: Sun, 20 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752995993

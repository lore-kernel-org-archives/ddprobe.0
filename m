Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223AD3B1B4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777030054; cv=none; b=CxiRyw58US2hMEYNqAx1XT7o6z2pxomyW9BJ5TE6GN6TJdWW3I0Qx7hqBMLcZeb1gYxj6JYdVW0WTi7K294+scH9YddLicSsZ2DVwVp/A/FnY6b4wLOM8DmLt3Vi4AUhbQkSRMONeFNr1f1UtxGCOq5qi9QGDR3jGO52/iqvyrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777030054; c=relaxed/simple;
	bh=+d1HYXIO7PaOLla5Mpv1MWTI3y2FRzwM7tS4pOHNfgE=;
	h=To:Subject:From:Message-Id:Date; b=nX0FUDn/5o8+Gb/USV5IJoUo0aNkdssj4DyvUyuy5q5W/ZwCdp6QcQLN+6KhQjzqSbTGGWgNCRPvJf5nR7gBfrmyuvO+1jXnPcTwrSwfm0UxL0/AaASv0mtYe5hyge9rOvZ3sZYn16Wr2csA2y8VfvRUP4ICoRUsd7Vjx8vAgJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpuFM7b7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpuFM7b7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EE2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777030053;
	bh=+d1HYXIO7PaOLla5Mpv1MWTI3y2FRzwM7tS4pOHNfgE=;
	h=To:Subject:From:Date:From;
	b=WpuFM7b7CZlcUNsQhX8Yr97mcQ7UNHV0XaZQ0tmlt2ebewZ/sfb5zPC7RtB8hm11u
	 k65iodLR/uIsu62ZF6OQEflatkSWHZXzHtmeygb20qTQmmoakQsdl9V1OdRetrRNo5
	 6NbcwA0zsP4d95nHLuBZ53ub6bXvZvf6i8SgKAU4Fa4Jny7t8a5V953K4bA80Nfbdu
	 M9tm7iYSeIZ0NFD/xMM/fRcM14p5zzak74ONBILqln7WG2elSv9uHhSzKL9YWtkGLn
	 6im+RtnmI8Lxg3HcQwJD66OH7uw2pfp0K3pI/MkaK6PzVPzr5xav0Lq1WdojYRSPpv
	 MN+WJVvxdZDvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958AFE5202
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703005368.24254.4267641683732655146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550968fbe6f561fbefaf96c59c03a68ba17affeda029e0bacbaac984d457920d
Date: Fri, 24 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777030053

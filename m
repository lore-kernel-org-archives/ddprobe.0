Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838D217993
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778890234; cv=none; b=nsjFkgWerR4zID1SdKx17dInleRSzwI5DnWnjFNNrAWlJ/rWzU8eyem7wGBSSnImyupigGX3qeDcfLiGWZ7WrwHfzP2mhANYYe8MDB2fOAJtD8eNITySj9jTBQRN4dMpodofAaVI3RBQtIOLwHog5ETNqybm3kRw8Ii9Q/AFZ3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778890234; c=relaxed/simple;
	bh=vLonO4j36mlTLeerUkFGfmynaj+zVCJzaCm+wNleayQ=;
	h=To:Subject:From:Message-Id:Date; b=dyfWpAmjxkvWsQhaGhGUdRKJV+lV7J601iesI5/gKl7DjkuPmlPkbmD+t0NIUHE2tEZGod9xXmSqai/4IYk2BhFWRhkg0pLeulvgBB3hv+TAw0A5a6XxCeIDm1F0i3buAIGBq6wzL82xsC6q4WhXd5X4p/Avlu3aXePWn8lHQ5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQaWoelA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQaWoelA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE0EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778890233;
	bh=vLonO4j36mlTLeerUkFGfmynaj+zVCJzaCm+wNleayQ=;
	h=To:Subject:From:Date:From;
	b=BQaWoelALdEA4Ky7z+RWPug260y0wNukI65DUZTMr53HurP07TP8g9D34BVGsdXUW
	 Y1IRWHM2NfvYsQVQz1CAbY9P/F0xNAKceoN+N7VtY7br1dVSM9gemjhf71Ib6o92E4
	 Dqvf2z4VC7TI4AFDb8Jcj1QNGWhit4IKy1njG//KMutXnvwAPDS2LTf+89WnObgNls
	 RKExYm2gaQMjwYQ7DYDwrxbp2C7I449pkqRYTvbUQDD5Pryle1tAWBZZ34FwNajkk4
	 64kR/exzlo3yMMFuPfFeNftwfmD7Rv29GE3ldvO9hyOb3AGHCBaZ7YwtmZiphHWBID
	 ybj3BGKizA3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC111CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889023369.22231.12727733456490217322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439a5cfd93f605cd84555711f80821a0e4761f5acb71302921ced7264670d09a
Date: Sat, 16 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778890233

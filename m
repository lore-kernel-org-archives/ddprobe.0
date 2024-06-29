Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699B0381AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719651263; cv=none; b=pSxz7RpIyAm2geXs+Ue5mOHMXYO0JW9ZJfcJ0hobVxE9TZvn9Ghu8CmNj+BSiHHOFXnIxjcpVtewLGCdqNYyWpmYwpTcK6XbzwsHbXblB6SG5sw+L21jekT1hEIXXfOfryKh8G4O8gqt0mOiU/xPg60ECUoJRWY6lN8gDl+7y3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719651263; c=relaxed/simple;
	bh=3F0pIGeVhypBaYoPczQ4Td5gwMQHDki0qPHFDEzsIHU=;
	h=To:Subject:From:Message-Id:Date; b=CMdEL6UJjsG2RRewHArYTY9t/yD8zMjchPKME30kuBMu53AOcGHqV8EdMXC5SuQRuEBx80iydbZVAyAOT//3O7iaz4vjuPQyeY+HXsQ/QFPsNhTYHPK05agO/vjmka9u4XYr6yX3xHVP0/LkhmZmAQWvhLWJ+pgCenC6G8I5RFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzIUQ9Dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzIUQ9Dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5061C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719651262;
	bh=3F0pIGeVhypBaYoPczQ4Td5gwMQHDki0qPHFDEzsIHU=;
	h=To:Subject:From:Date:From;
	b=jzIUQ9DrJv8vFxldQRhBqZZ5ZjM7oPOMpUDHFGVIL9rIplHS2L97zBs+QWDMb/YGs
	 8XDbAhIFd2B0UejckdUB2WJOIDW5yxHC87i8WBBSr6JLfiUPHiyuqJjAaFQBz0s63i
	 U1rmi57b9LVjYH1ZIoh1Fc9pDDGVI5D/4Y+uYRpZSl61cgaKECxccQHOruWK0quC/n
	 e1gUKMZKOp+DgUn3tNnWxgs0/gbrghh8v5Cb1Mz3MTAJm8mAjaFsMvxjbeBV/DRPB0
	 IeQTFSTxOut7TFsep5EyMZ1lJHVTLUnR+L8GWGzqI4nZqUMqYoRVLyOvdIcK5Ud6I1
	 fuTNEVYF3Zhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5E9C30658
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965126282.30640.1030890080244645676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26514ef8707ac227ffa4f0e00957375b513435215d4fb4c37ddc0739d9bc9e8
Date: Sat, 29 Jun 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719651262

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5541C5F27
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755634194; cv=none; b=oAtXzivPWHI2Fb51dZpTya5FbcO931xZCRD+dKvyr4fri3q30jxbl6cxluxa+/mw/w7HM5c3tkSVpdszg1lrpZ0RRuzEyeOtTm3T8ptXT1TfiACI5es5dJzlxD3kPJWvfeBk7VxAN3tsKB5zBmYZ9/UYloW9vec+69Vdhrp0QB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755634194; c=relaxed/simple;
	bh=Dnsuf4BM0bjFxNMp3zgp478XVNzd9Y+i7aHhojr+0hs=;
	h=To:Subject:From:Message-Id:Date; b=GarWecZCq3PTM2gOftQgG2zd4vDhRBB5uofpfol5puT2VcztXVhBUhA+XcnMZuG6o83TvlB3Kmw8KkwoG92W3CdqB3CfWsn2yY55Rxvwe9mSXOSpkQxu6kt95h9SZMj50d8PywBdx8zVOHju6yLHs4/bgywk2/5jlWbWg3NzOi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm1vqS+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm1vqS+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755634193;
	bh=Dnsuf4BM0bjFxNMp3zgp478XVNzd9Y+i7aHhojr+0hs=;
	h=To:Subject:From:Date:From;
	b=Tm1vqS+/GMbaD22R01jmILTMBuUJfhBdcOSs/2qVtuWF9geWvvSpmiQGYF4BB6GqH
	 kedfFwFkBmgtTP+B+96Kk+SyiGOMRKuQvGncDhcMi1kJMoyTQHwtNUnt522YxecGDQ
	 QP7zPjla1P+pICQRq643arsPuHzusWmTi9C1qq9jspBkYzKm5V0hgz/DALUIWG0Vj4
	 kvLbTjkUxIb0o++iMygdkU25wRLDRqzQj3AKUIFT57Lf6OL9cmH3+Wb3LGgatCaAj0
	 VaaD+PPpyTU8PSiyQpB9XpO8oBnMMf8CWCh7meWdI5xZPzzQOn7DwFxFHPRaiJeyZ+
	 mX8IV1JGwSnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB9CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563419357.15598.5640858365759011437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6793151a7c5cfd19d48aff7856f5308b81aa85a941071bf1fffd53a69cc4ff
Date: Tue, 19 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755634193

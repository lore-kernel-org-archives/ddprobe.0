Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE44E541
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715669543; cv=none; b=gsqw1rVgsP3kiecjafeuwZkRlJ5oQuag8LcUnjJc1U9rY3g3vsPy1i9wc0YcI0IOQhAy4okaiilZpx/+ntA3XihEReaem9wxSWczFKeGyYc3oI0FykgD3i2e5MO8J4nBhZrzGt3GnzJxwZsiiFPQazZ9k8a/THtUTw9zP5v0F5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715669543; c=relaxed/simple;
	bh=bhDJxqwLaSfUJqV3mThUluUWdKETFEH6LUSfbKxL5Cs=;
	h=To:Subject:From:Message-Id:Date; b=VfMkt+0e+YHfsb9JURwlgqjd8eq3ArA82WlWTIytOdujGnGNmaxFG2yj51j7z8VeTuME5Ya++J+mU02G8UOjFDnqddNfo4fv37JYxxkqw7kY7mgXplSzC/a2OzJphKDuVJvtQdSLirlDdup+dTDjKSZFmpeVBLZ2SSSm2P8FsIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKnuMDjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKnuMDjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37E5C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715669542;
	bh=bhDJxqwLaSfUJqV3mThUluUWdKETFEH6LUSfbKxL5Cs=;
	h=To:Subject:From:Date:From;
	b=lKnuMDjk1Gyj8QmUA8zGBTwtPrXKXsD7kDBJj6Lqd2rSgnJlWavDTm4AWuXlQPtWg
	 4ekPy13MNV+PUdl+FSM3/+gA2c4xOEQoyj0D/PizvF38Quzs2ZDwIoqF5EPcgCsWa7
	 2R545g4MB07GMUeZTqmOmR3ZNEOUbYVnqFw6yTmMFIWrJB6+vqygc1K5TOL9o765Ja
	 +W5s+oxjCEwhUt9SdXVvi4VNXKRRmm95i0iRmzd8HKLwW56Y2FpsqITLr1nT0fTMQQ
	 QcQGwNUjk2qsSkFT+5nzF4GX/NJteDr7AF5bvl/EYMa5wiDEaWxls0l4FQ1u0IA+Ui
	 YgYPUr3T1yjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A24C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566954278.6374.14785213011730166988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f609d2fb941f839aa34e5b481d840c56aaa7388af8e6a7f0139e4236b73fb9a8
Date: Tue, 14 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715669542

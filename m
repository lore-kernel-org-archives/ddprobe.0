Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B16331A5B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415314; cv=none; b=RsyoS63Ahl8sg3AGOfcvhCvtbkE00jDrGZkk0x5EA7IXr5Fl48Yeu2NWmGjb/oYduD0M7bppfj7l0jL4cDzQwAGsXfGUbT1ECRRRwKEOF4HMjFOeWhMUV7TLXpRGVCbKe4w25WJhhzZ9TVyfG5LI4A5RqhXYVW9Z99q/MVk6on0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415314; c=relaxed/simple;
	bh=fskZsc5N+Xa/wLOm8iSCZfd1NC8D65/JR6SqDi7UBGY=;
	h=To:Subject:From:Message-Id:Date; b=eQfMrU7sk2/LfLMJv+AbQRZl2AR6p9+EXAPOzZOdZUI8vrapnpZ1I3J7flUi+zDj/hazRLto8ynkuc81alTi6JHnuH7Cb7Ru1NBKjrB64oHMJAWbcXTGdWwEs6ztVXwuraBKnuDNo/HdZu2dyBuVqygZI+dwdpUVzDazYFsP7OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKL+sJM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKL+sJM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783415313;
	bh=fskZsc5N+Xa/wLOm8iSCZfd1NC8D65/JR6SqDi7UBGY=;
	h=To:Subject:From:Date:From;
	b=bKL+sJM+jfvlcKT3KCBZRh6Ts8twZ84cHAG76qyuKk+LOmSnBbijbhXVN9RxDeoMm
	 4R8v6KlQ+b4b5ho02Uye21Yiww8y8MxO9Wn6MqYzfPDzl8pF48+ptEOBHXziqkUVqn
	 G9Per5+BLvr7dKE0199p71Zl2/l6x+7Fs7q84oul5O9F/gooQkonKPlQ+NsqRTPMYb
	 ZJzKWq+onyjcIgAlSf2B+rwKMw4PhK30BnP0XjV9EpPb9SLMncRL1dz7H6jJQATrKV
	 R6Fr+B1bl6q1n95YG7jDy5PNwfrzaWky9S0NBpg7o8egvXp9pEnRIb9CTMzRVi+5Wt
	 Tm/I9poQYv8hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C3BC43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341531373.18606.8113494642881368021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81c8cead7d14917032dbdaa230c63e1bbc17ad000870e3d5c573036b9989c06
Date: Tue, 07 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783415313

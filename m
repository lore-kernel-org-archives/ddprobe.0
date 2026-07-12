Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB1274FE3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783829314; cv=none; b=e/p+DjbGJGoSpMRJBpJ0Q0rMiQh0Anm+P/2+gU+Kby0s15ZFPrQYMOp9MxdNNX6655aRo/Ea2Y4gKIeXfZ8hlz8HB/VhRn5IAGf3abS9zTdLYEkX8e7Edss0oBtVanvcSakrp8R7TdXciC4tFQKHLENBKj0GU5b+Uk0rXDm+WQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783829314; c=relaxed/simple;
	bh=fjEsuYovIKCA55MmtiVTb0exbRw+gPM1JWyJmX2DDmg=;
	h=To:Subject:From:Message-Id:Date; b=gyyIFz04vZtqYAaKuNnmd22yHJyeVkI18PTe9Y27IC4I9L34CbBs2gTv5JXEUP0VTfQT0b9hoNOKLFYjXNO211gTbxOKNnuv9qG51si3cCBvZNfqtfDdnKy4OYPVYuzaDAkEB2t+VYItLoYniE0jv1Scqs86lQFiDVD9Z9xuCdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugYiXAip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugYiXAip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF0FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783829313;
	bh=fjEsuYovIKCA55MmtiVTb0exbRw+gPM1JWyJmX2DDmg=;
	h=To:Subject:From:Date:From;
	b=ugYiXAipjPUeCQtQEaGn1B0jHBC6TV7WWJJDJIGNh4um7poLmlkiDiQuIofiI3hTr
	 LdLtX7MLHC/u5p6+hMWoXkhV0qwehYhITpNoJldrp5Y5Qc/51V50ndSMN/YxTpGkfU
	 EeTlQYSNN+nnNalba30m8LsyvB6S3HQqQM4P5dX41yxDmuU9PcKNW5satzQIZHQ45W
	 Mv0aB6tMSFjDItxEYCEY9Hm5R6XnqyUIZv28uuWVPtsSr0UJZg3JP97mqvH2szzbQx
	 DkdC8XsYU8mBXMYyjY2WvW0wBwQy46CLzOcdIjfcAWXLSi+ymM4dSEK3kYgjeopM/C
	 RmWrpuMYOvKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C5C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382931368.4047.7687139423162354607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4040afbbef2a14a448346897b10b089072db28c116603018e5501a51e0ffbe
Date: Sun, 12 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783829313

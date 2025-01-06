Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7C3647
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736126754; cv=none; b=AV+iQ9lFPv/00KpS9a2AAs9YF6YXR1PvWVbpgClhSb6CrUU9aRmeoPNE3pzPyk16jKlPb1v/B8Oyxnn5Hx5NHWoFtOxq1Am24VmZStjWajYPoccWyz+FAMj3b0VFsejnbsnw7t0tC3nvn2CVA2M/SGe21AVoP15KbUGV1pJBQ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736126754; c=relaxed/simple;
	bh=kNwpYbHo1DvaCciv/1SCBdRDAhwOGFmjHqnDXUwhPY4=;
	h=To:Subject:From:Message-Id:Date; b=dMnCIvjXKqs6i3gImPYIHYwnY8KAGIRsubyhhAOILSpM8pXdP9DDi0Bu76xlmKbxQpxvVl48JZshEcd4co44TFPsrsK4utgcZTlD74YZb+uCd3QIYe94TxKp24yp8UgGnM7aC5oRb1UcU7l58HGzw4U67zwUanzKBgIvHl7rOxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iad6MaTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iad6MaTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353DC4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736126753;
	bh=kNwpYbHo1DvaCciv/1SCBdRDAhwOGFmjHqnDXUwhPY4=;
	h=To:Subject:From:Date:From;
	b=iad6MaTInfR7U0sOTMUKF0xokCOCSThrmJddigihEkVXPnIcEQs//7OPcJA7v/FMQ
	 L27mN3JNUpuQBqZf2m1x0CKvMdlyC9NMRzPWrFmF1iMTn1b1FRz6s/5neOwh2qbKHc
	 mSakYuUJytwnwqA23U4sEn7MvEHpaiYXv9vvQ9EEJfMUIukk78mJCoXkMS7F52etlE
	 dcHDs9TbrA14Pm7UfQx+DSGcKk8CzGKAYFe/D+yN5nNnKeKwy+3c2LdtNR8k2aIxcz
	 +tT2dgZiZt/t8YbJGUOtmWDiAR+txm+PTAEiWnVcNW8eDLmXuc+RYo1k9y3NfE2I1V
	 uBcXPbky71Qgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA8CE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612675361.27760.10545760013358446413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849c771861b930bfe1b2ed5b944d3c26cca9ed1dc370ee8ccb82488f26eadaae
Date: Mon, 06 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736126753

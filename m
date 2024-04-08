Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E1F7E58C
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712583496; cv=none; b=rQ3tGdv3gAv4rEfCwErf1fQNQqc/nuMBZIeuM72qpLrwrCOCgW4Ep6hS7p8e12YcqkCN1K0q3P0cBpFJrNFv+6X9SKAiRET/SD+OD3zgWXOHkHsvi26MRBiIR8tcoBXEMQtpqnHuNSU3Ghd6HP6xeSqq5PCJ09ayXGFtMMZakMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712583496; c=relaxed/simple;
	bh=VCqez2LiwwD5ohU/kdlyBKOQ03LiIuXhNneWon+DhAw=;
	h=To:Subject:From:Message-Id:Date; b=ppvfbBu6+qDfXTmjZrH+DU8yDiOu45s/+PjyPQdSVuFCR/inN2T75EHbLmfiIOSkkZ1XC4pzinlE8kGRrI2/x6FxL6UXcFh8Du3I5crEEgP2LLClcSXKhN/7qRuBrN+amE+Jpo/Y7V/qJffetGcjlj8xwpiG0XaGZNbXPTOnN+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mfuvkktb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mfuvkktb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6B6C433B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712583496;
	bh=VCqez2LiwwD5ohU/kdlyBKOQ03LiIuXhNneWon+DhAw=;
	h=To:Subject:From:Date:From;
	b=MfuvkktbYtpDj/Xa44HLl4dryevcpNai5RtPz+aM7WsD8Hhy5laLj2o5K+LxshG5C
	 zA6tau8FIKuPg0Mi7d4FaLQJS57mU80G/Fo7syrWcjXb1UgxZVJ1DepLHlL9nK1Hai
	 +J+ImA2Vmozlx2RXNq3hP2q75SZg2pWfiasx30VA5ZY+KbpXS/RvsLmaPI73vu8XiY
	 3bTIOu9sVsqAzQtfjgkgGqU+8PO/ObxQosZFwdZW6PMO4kVJCegd8rXkzEiAr0qd4H
	 +N3Iw9tkmggxLIdAqZxlDDEqIgKjWQGYR7aO0pd8nYQYPooyfgvT/CEbq36qK7nYNa
	 ECwxaHxK7PZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA93CD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258349643.6199.3656433013149737373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e77c2bf63f6056079b1eb1d88950771c8f772c9c707c644d383c3c4e1d357ee
Date: Mon, 08 Apr 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712583496

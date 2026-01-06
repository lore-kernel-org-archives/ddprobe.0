Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B5C25783A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767682434; cv=none; b=aDUE+5klhtQY91Yax9x0YQju6uJLi4PKDHmN6q4YTxPjaxsOz/Q6CwW1ka1EK5jBAu8Eft7148x0Ih4zomY03sbM3bPqtzbHZzj/1vhKYRTAnO4SDEDM9t5+njTYPVr/6Vx/hNM6Hkw0cskFh45gy4AOZxk9MCh/HuA8jPkR19g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767682434; c=relaxed/simple;
	bh=JRJ67QNkklBNzZuyCzAkwxEiFvtjtEU0KyqcY3tY0mE=;
	h=To:Subject:From:Message-Id:Date; b=UOJPZl4kJYTAJyqX++8BwmaGcucB/ma/kkhLZgXtcrf1S2T58ogtGoERSJF8bNG9QmR6UZrdhfwwqWWe2+u2mfZzDocTwkGB+yW+jNzClNh3Vz7BmaS57Jp4CeKExI3fGf2EgB8RvKN35KTfeyxpZwlGPU7isWevq9SAf0UZmx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn6IiCAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn6IiCAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EBEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767682433;
	bh=JRJ67QNkklBNzZuyCzAkwxEiFvtjtEU0KyqcY3tY0mE=;
	h=To:Subject:From:Date:From;
	b=Nn6IiCAw2MPI/zVu1qzojPBwwxqIqA7I/5iWWNPPuTu0abTb7w/5gOSx8tjq8pxC7
	 D8p5i+/GLOqsT5+u8h9A+cyVJLMBweSASX3zq4wp3Px0KVYCeLRulThHwO2qRy+wl5
	 Hkc4F7fv2ItEoh3z0S+kQQmxq5soNQSM6/Za+mLOoulYAnAInoE1QYvjDQA9doEvOe
	 US6eixAnYZg2I5+uVz0f01ntpYUkov8Cka6kUhseZCohm7TagxvPqixKkf8JrQYVSN
	 3mf1CNR9CMwTPUJfUX7pUc92AOaPCU1XaCQlw8tTcI8Jv7y5rfr+UGHJjXwgXaQ1pK
	 6FSrG++m0Kj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E34CD043E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768243364.12554.5484051426234358947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ceaa5b10ad57ebf5dcc994013b5f71123d187c3123ced44a2e9fb622dbdb3ab
Date: Tue, 06 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767682433

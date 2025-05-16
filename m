Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F02AE8D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747384194; cv=none; b=tp7YBbs7+zA3g94CdyWsCHfUq4ct0Nb64PYJZOgizj5k1DB/2s2NCJNjsYV5nAWuZZGXjsE3CiD82AiY0JT0GsBirBtQR4zbzOE4KKphvUq0UNUF/cE/iKNMDukgWdLaimKeJh3TOuoGELMG7Xdn70MvkUJjOwG7ENCMryXgehA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747384194; c=relaxed/simple;
	bh=PTLtRp3voY9WFWhHRQdHQTBfsS0MyHuZv+CzOdLdATM=;
	h=To:Subject:From:Message-Id:Date; b=socH7tkiqyiyGbdi0kvhzDv4N5nWLExxvBOJoQGVD3gpzIAKLz3v43bck/ZIBn8+cjKtyyc2Cv0Zy3A0w4sS1GE9ZjXDh4ZavjlJ6r9lzy55nQmeR3xH0lmQz/++XfJSwTRrZNOXycoFMsNZvoRplIwfaLnGZH7/K4Prwifm008=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhMYt9vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhMYt9vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB10C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747384193;
	bh=PTLtRp3voY9WFWhHRQdHQTBfsS0MyHuZv+CzOdLdATM=;
	h=To:Subject:From:Date:From;
	b=ZhMYt9vO4BJxKvGmv8Thro5hvRCTQ3RGAHuOT5fD6V0/UZL+brpKLdQq+4eQ8BV62
	 OvVjZY59wxmoIEUQh0XXxu0wGtbZ/w8PgEHSFnHi7vwF9nVARjybWTJGrD9hbTmhpY
	 MIaufAHujaEgtQeE9moHsb7G/Ck4WA5B71ZtxKtwW1aE9rqAFpGf69i0xmX+n/K3x2
	 +TUGS6uFHLejrxEpQcUgVCD32AufPaD7fYqzVNjP0g84wli03wR9Hx6ykCCI0Bvrc/
	 emb6LrrbyEyBfk7ZR5GJMc0wxXDCmosbHTIpCg5YJJV1TFUGWnAH41zjAtqFHW7vb5
	 RnXuRgGJT515w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD4C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738419357.26488.12948110906954688497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a3fdd22fc93671ea4dc23b484b74446526a52ae86052c8475e660fbe826736
Date: Fri, 16 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747384193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52726421A08
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780931074; cv=none; b=Y58Ljw86P4idi4V898ye6crhZQ9PTfx5jjKVPN84qC/kiuqFSnttlMvQrm+/LWCCUFHFnpBeQPj4oTJObJ6yjyVU2ejPaMVY8dZ3CB6kWxBydpKXqWXF8yVMhWW8nWqjRWSfbeVT+WKLyL4JrhBAKwsooTNnqnu6mQ1R5oi5xPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780931074; c=relaxed/simple;
	bh=fVtzMa9XdnGOWKCV83vthtrGljZf+ehaRZVzq0k9LI0=;
	h=To:Subject:From:Message-Id:Date; b=P55EDnvEYZT2YUjYam8lBGYu/ug8ly0trexmsAbpWFi4E0srzX3ON8EMwWVJviPgJ/ZLqAlKJdNDHrhuSz+aGMy4AFT/LEkFNh3JChT+gbrDFdRZlzTjh3USDsGWNw0PRAiG0h9P4KeR9o4k8N4BpPT8XZgwYZn5M6vL0I8/QZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eybgTuZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eybgTuZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780931073;
	bh=fVtzMa9XdnGOWKCV83vthtrGljZf+ehaRZVzq0k9LI0=;
	h=To:Subject:From:Date:From;
	b=eybgTuZTUMEhAExbVLZVkOC3kcZd3awx//PHcuG7URNbXjkVfhj9QoenfR2U0zn5O
	 urljFF2APGmFwxnfZM39AEmLhMGKtULWXHdaAJFFzMzJ9rGHH0loYajHxZjJ43IqpV
	 J/BWjeQIKliH5TbTyknrY7EKu/0KPo2DlhrYDz5x3kw2w4Ls6kLCxLqr2IS0KYIjje
	 wB/fv8A2zwV37vvyRs1DHkCPJV3oMyO66JXT0fttAwA9p1tcoIulLgEj2196hkFRi1
	 rO0BDlerjZcBXBcFdtRP4RxgLPzLTDkCw9UTNVOezWEkjmI98CLv6exxb9E1ce2Rbi
	 BRIrlMPxQzQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08F4CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093107371.20583.6432281713126261228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18508654347fad64de965f1c1c4f26b2cddb4674fdbeff9d813c71c4f80e889
Date: Mon, 08 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780931073

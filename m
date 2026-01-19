Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18427500978
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768783434; cv=none; b=PAjQACuBfI4yPhIA5wJyGuCNOc5zRi1Ps+FdT6LXPxH547ZA/77Hp4Nrj0eiEgP3uE7u3T8fA0UvdIry7OEdpUiWhQ1Lz9mwcihrVn1M6miDxlSXJUqRcSh3/cjZumSAN7ZllGHXcsSrX1Y5h29JXrb9DLpwm3tCCxCMaPfzjc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768783434; c=relaxed/simple;
	bh=0QgVg0L4sdQZ8JIf5GXAd0Aei9z+QiuYVFV8wLuXlYg=;
	h=To:Subject:From:Message-Id:Date; b=KlpkeQLEf0kZT272VlMeQHdbLsotkRo2jbiOnv2tbJBHKxS4umt0KFEBKFuEWc5dqBJjh4xiEBeYWR/sWMvbogA+XxYX8fNTDRZQY2JCzjzFXG7eRvRzNfwIpRQjsS9oi5KQ9gU5QdUYdB6QfVhyXz6W8FoCiUP5RP8RiFwChko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe2iwlgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe2iwlgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DCDC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768783433;
	bh=0QgVg0L4sdQZ8JIf5GXAd0Aei9z+QiuYVFV8wLuXlYg=;
	h=To:Subject:From:Date:From;
	b=fe2iwlgT3FP7wHxxeTKlbAiAoCdT7NWVFK2YoaOSW+goaDOgj2q1ZK/OdFqJ5cyuC
	 oxeowXRjxJDdx4jP4jhVkVqF0NzHwPOTxbInkcLblcjAbad0PISYdc9xwi1PkpYysi
	 wGuzz8WSWjO31q7hCxBZuZYMQ6UwpqJ3ydZzs1U2Ub+QPPToXmSXZycbZmmIwdHqkP
	 rSUEFU4z6sI0ykXDtS3XMe/MyZn7FXzs+jxvvuDVTq2CSZLJdV2/jmfkX5BewwBT5N
	 pwv6UqjLIMwG6bRpVjWEVWNAZlCsxE/cF0AZHz+/rLO9Zh4wLosTu/DLs43jhFhHQw
	 0QNtBM+tTLErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F1C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878343358.15873.9360734819298731358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda41587107cc662aa0f76559d1bafe965b2654020d57dffd2cbbc067a6bb72a
Date: Mon, 19 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768783433

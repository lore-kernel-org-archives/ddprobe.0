Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E729257854
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784077114; cv=none; b=gJnp9K54yVKCe2OZ/uhKFWpg8c25XYsiaF5ca15jvMIDeN67avtTTpZyPFWl0+B0nh5m5dq2TeVdWGC8DMQQoeCJ9gQBiVUSntXfQtHzwxjd+xBg8ZNV47n2jiXhy5mgjtqjqb6fpO65zyz13baXoB/UXnCDBTeDh6bjkXCfCAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784077114; c=relaxed/simple;
	bh=4N+J3C+oT/Mf+QUkzuUbRAF4OnNeLaffyf/9NRfax/4=;
	h=To:Subject:From:Message-Id:Date; b=JGbTHZH7MPj8o64EJMPNQIVOObjrymVaHrMl4WeJbSatky/lOHkkra1rBUHpx57jhGSDMi87diqdVQGjYM8W7uN1dynbD09BXCCp83Req4t2RyWMY89gF7Og7wPHM4bn39NnTFUEgXwVPn3eTBAB3yqNpSFucVINSOK++4qa/Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke+UzpuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke+UzpuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784077113;
	bh=4N+J3C+oT/Mf+QUkzuUbRAF4OnNeLaffyf/9NRfax/4=;
	h=To:Subject:From:Date:From;
	b=Ke+UzpuLg4l0dVRmUN7xqtA7/yjKDBytziUSom86WsELy2D1NqwJODR4nOXKBVBNJ
	 fV9kAvm62Uzpjzhak52PLRZL85TlKAo4SJkzXDQ18RTsjoF5MakpZtNlt1aqzzxqkQ
	 W1OqL+7hbP7w/8dsQfGwtXhBu13FU1QL+o+UmdoEPCufTsw/QUrbFXZtDvidx9mkM6
	 vt6tO22e9guOVSqhUsJ31vGwfkcH/WxvNEy9fp36fAYQ5NDp/h/7SXFHNYGO7G2Hpd
	 9xhh9aupbDXzYmyKCJBqVwPWeA+mdGhS0k6ZiTVgHLrOa6+lPpfgiNio8opi6CGytO
	 cA++a2j9HfzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCBDC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407711368.31533.1017614331833378210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b933423955a1a0f0ed27e07d5da9ef407f80299a65fbbb343fe52811eaecaf0
Date: Wed, 15 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784077113

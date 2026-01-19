Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010E8258EFF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768853034; cv=none; b=ClcVaGTchDVdYLFelUUED7PoWz4oMlAUy46moSOzMXfpCVca01pratTUEkZR/dV652R28u+ZpwqOk56krugnwT/cfUvR0WEm/pwez/FgyR0VgPNseF6CuqlC69yd44QuxqvR9a8ewYVtUnT2BsadSeS5+npcgGDGD1uifQr4h+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768853034; c=relaxed/simple;
	bh=0OtZSV4fIq6jlA3PzrW4ttXynYfsg4RlDbDqxA0u+Z4=;
	h=To:Subject:From:Message-Id:Date; b=brlJZjtt+pMzv6VeHB9S+n+NxEcZFL441AN44omtdPIZUITXd5dx7BxrWr8AQfE0vKy/ad/y2enENw2UQNPMFf87n5mckrE3T8CYWh1sOPxckZmthWv6uP+buYbGDTZGJRNhZ23OsiDbJBFC5IcRU9Rf4lBoKOEu1dTe+7nnnOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KekxQpHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KekxQpHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF0EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768853033;
	bh=0OtZSV4fIq6jlA3PzrW4ttXynYfsg4RlDbDqxA0u+Z4=;
	h=To:Subject:From:Date:From;
	b=KekxQpHoFzhII4zQmJQJDBtAOM90yfZkGgC00uxzzANOSDhYSEG/XUsD62rPcT2fX
	 g2jiyataio8ha+1mSZ6QUnZw5UImH8UV2KX5nL1N6IuyXkjd7Hh4GhDWBYgvIx23wD
	 Ndq0aLZL+qfDrfS/mivBFJjEiF8pzlxMxQ9iatfB5i+NhhZtWycua/u5KS0Tz4q5sI
	 zD7tqlcNIEB7ePOGXmGE56iGbJcCEUOXo3W6gVO0cfm4C9LWJbtYwJYEFcPC+TlWIa
	 iBmfnEvf7rd0JxCXx/lOdnK6nzJaqw7W1LLDip7j5Bmk6OkGcczmkj0exxKoOZQC+W
	 IXQEcgoDW4Lkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECDCCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885303358.8102.5372024448994272680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af0a1a9f158bb2e48f1eea7fbb84d1f6489ec43c4cac2c3e2c70d1b278bdb8e
Date: Mon, 19 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768853033

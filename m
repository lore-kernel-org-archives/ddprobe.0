Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A27072634
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748295594; cv=none; b=py2CvKkTF/SQdSyN46y245V6lyPxhO0IcVmzx/aY2kKcSvU2fIe4nNRRsw69tvI8rzaqcw1VKVJIn6MqTkyhEKTtnUF8MooXhcSx7wdFDKTddQzyScLjed+SSjY+6YbunUoSMS3cFw2WT1QKqGZytpCeee/oEUIq78bV8kxy0LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748295594; c=relaxed/simple;
	bh=uvpCDnC0uj8DpIuajw+xHFK6hpuzrsKd/ZFw6wjOVGk=;
	h=To:Subject:From:Message-Id:Date; b=tvYq+RfAbdPtUc+mzjCIKqM+MnyOfQL0EFPbpWH7P4B/pfc62etzs4Fbag5u6Cmq7IALXgthdDqbAo7NsvL5m889Aua7dJodobAiQkz0AoF46MI6X0mpf6azkL+sLshgfekNvZma7pg+elzz1rE2jbKJkMl012bf2wVArU+HCOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkDfZO2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkDfZO2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E3CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748295593;
	bh=uvpCDnC0uj8DpIuajw+xHFK6hpuzrsKd/ZFw6wjOVGk=;
	h=To:Subject:From:Date:From;
	b=mkDfZO2BLGWHiKlc+JoK1weQBe99srHNYy9L4hIWlQn/tOR3Dn52dt0NqTPWr0hv7
	 BSXhVwoKJSx/EVIf1lUr7o693iqQ01tPdBvIGfZZ5JbtWwuD71SLyw9mvIa1S1DlYW
	 Chtmypqpm1IYXJ9htFzFDZofvGTrmAs5MmnTnG/fky/UHjlUrz3T2aHo+Z5rFwn0zP
	 y75eLzU+k3aPo9PdYVr8+ojwXwah/15fIg1RtsGUG5lNnTEmGgF9dQLLLbzYb/f0mw
	 Y+Rn7jBTgjYncxdhq1r6o5H5avummMLiAUrVIqFmFNKPm3a3924pl9aDsjq6Z4hssT
	 fjwA5EOk6pp2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CDC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829559359.21309.11966970838884718059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb73a4b1c3edef259f356be2cdc7a52f48d4fb8c5601586b1aafff81f1b796e
Date: Mon, 26 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748295593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E5319DF7D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742992194; cv=none; b=YEdyqtuHSO1YMDUtSazdLY9D0J1V443FY90xk00bUo7rAMjDbUymLTpQIlCbkwzZFRjSnlk/G7Az8XAOeLNUwQ2WWYJjFYyFczfvV/yGosnXF0t8zb/rU/A+cemc+bED41dBl7sJMK2TX1kl8SS2OOhm6u/TNLKJa2X0tTWHZk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742992194; c=relaxed/simple;
	bh=Y51c79fOidzZy3G0MuBcTWLj77ZwEYBVtdraGHbFaDA=;
	h=To:Subject:From:Message-Id:Date; b=hg37bAwONeW7OIxoIU4HSTDn+MiOyDHJrEjhgW5BHrHdTheDbq+QpZchPvogZHSj6EWZZFJ4bIubHA+HAFkecfBxgDILHOWmaJb0PAnAovqMRJQD8s+tk3zBRN8avdD+PyoSVwOYGg/3AbgQsecqTb7BNdnGAgpfe76dVgnQMVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW7phEw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW7phEw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A2EC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742992193;
	bh=Y51c79fOidzZy3G0MuBcTWLj77ZwEYBVtdraGHbFaDA=;
	h=To:Subject:From:Date:From;
	b=RW7phEw2WsYuFHOMrxmAOulO04ZpWPZoLtpb06vNOFStFnUHYSgmdrw8spzuTpDNU
	 6zeHKtqB7ttvqmLeY87RRsShOhaOMXn1Mmm0mgH08ui7StKgkjY/Iss1xVly6UrTvq
	 H1jJx4Ux3YSASz3oy9ClenMhy3+IPt6MP9ssvTHesq4aUhwY4uec9YmrUiuHePzcYx
	 6otRip1NS7mG+1+xyr8dbp3Itet5a57LT2xcsqWZFH88E1tkuybCsvLdPVDThzO1k9
	 EP8tqlil9l7daPYMShUqu0hPgZrBblBtEmCEzXI/ayU79a97vYv2UsFXcAaLZGbJ/M
	 WjD8c6pp0tssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DCC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299219360.18049.11657264930179062896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f676bfac4aac9f18964b879a18f00236ce8a68950d23e3f61368902e60fc6a
Date: Wed, 26 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742992193

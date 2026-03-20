Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1532419ABD8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773981894; cv=none; b=jEfKVb6kc53cr8dmNxoDTHYnyULWjqsOx612Bij6IShxdI6Z00yrBygrNO0d6k2L0MIr2V+IGYijmluZrGTxZrGaTCM4Azx/JnMow8SN/S+jykZOHoGvdgUVcgMdOL6GVCloD4guBhB1STI8rBR5kxS213rB0NavLqZ8FV0z8Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773981894; c=relaxed/simple;
	bh=e8tB88NdSdZi9p2Ul5pWTmiZuHfzaMvA6GsIlJgJSDk=;
	h=To:Subject:From:Message-Id:Date; b=Ka6AzZJQaa8z+Ew1f2TN5vIOm/hSy8+PpNRyw96pwJpXTNvDyXv/X9AnaylVMG1GCa0yZObuqKy1AUi4dkPHmT95IQfLaNFuFueUUfLLmHmlWSA0u+GcBjgvwYWlMfDiNHOR/UKlOkAfey4SOBbnLpoHMKKAqWdX1PsKc/9QlaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3KOHin2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3KOHin2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A7C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773981893;
	bh=e8tB88NdSdZi9p2Ul5pWTmiZuHfzaMvA6GsIlJgJSDk=;
	h=To:Subject:From:Date:From;
	b=U3KOHin2rKKqVKqhxdjgvrblCy+Bm7WD9CJ67xf9tTeaZsMuijn+zj2ZNVBNpU2AM
	 VYxXAhEqAHR1dVZHjlzayc0XUj1OK4MfuqX1xRo3gPoJFLbJBE5MptlBh2UD/kQE5d
	 IIV/b9WgyUBfbOrSu7LFhLdxdRP3gkxsmyqw7ER/s6MMSqp6OBkHQn5Z9zqamJ83sP
	 QyKbL/cMXk+bXmjEG/VnKDmk1izHODKxgZuzAgm1SE6XVZ7xiaRR6ott3rWWkDnISP
	 Vm45A+xyj1og3Ku5TQr/y/gsYY73iWzGauQqBSnqnz4lyQ/qcrPGJTnIFJRW2F+kR2
	 h+Td+FDAV4aCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93E109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398189357.17991.469774584352950086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9defc7d23c4c85c00bc105d538b97a2ff93dfd8e9f19fd08bedf6744a6278a40
Date: Fri, 20 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773981893

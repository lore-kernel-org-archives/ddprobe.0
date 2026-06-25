Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404451917CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782431254; cv=none; b=fQewuRGCUlPHsfvMosHO0PR7TQin7cQ1R8pnpj+pnJWc8J50YDEA9xxxin7J69DnhGG6msIc1UhounMLWyY/9xmqEAf7OiC4rA3AHI4DiAjEp2pjeBB06TTZGzywlVJujJfYzculxq2nMP+9VpfUKgXuEVgubFe+BzXv+53UGow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782431254; c=relaxed/simple;
	bh=OY1CRWkTJ3RI4bqTFc0lbpNBRrHRrUXyejAz1lkQG0M=;
	h=To:Subject:From:Message-Id:Date; b=NUwvZU2EmlezLZmepH6kqvVzTBrUdRUOGHbDQiLoJgXjZTiuUYXITyotSJ71JoQiZxrXKJD2ndivw9TcWMcLD1q0feCdyzeGH3ygoMK/utCoWib7vZ+3A9uB7/OlUAToqnApCcDZ6zDPIZRL4+CgmJtZl/Kvr52ZKEXhtJqoVzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGsdVsmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGsdVsmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB860C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782431253;
	bh=OY1CRWkTJ3RI4bqTFc0lbpNBRrHRrUXyejAz1lkQG0M=;
	h=To:Subject:From:Date:From;
	b=gGsdVsmf8cK8hEdammDHRGPLGsmjOrWIwrk+fQ1LaWthNPUZqLbA07OgpInacbxrh
	 6RzKF3umULPS1mXaN80udbzf6VC9dgUMIVPIUS8ME4MP0xjgmJ21dpw9yXxZwhW/VI
	 /8dE2ho67jdepUX+kAFadbR1sN93rYb6FfhG62fciurb8o2id3tkK2Qq/c8EQ6buHv
	 r5ILxWg0LLR5Twu5A3ASCNyUPmmHOvKsk8SljJiSrxUIxTovp7v1p3ATxfYYe9Wi1z
	 MDTIEWMLgBnfh4eZuq3AFkrU7UK7iWzywHVtkxmFnkdMxqP3vZhvtPam+j+x8Gik9/
	 OfiemwZKXRj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F45CDE002
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243125371.14724.13839988055985602964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a01ffb7dd2cd858acdf59085d5d2998911d87ee72b1f021a806bc2d01c5e8fc
Date: Thu, 25 Jun 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782431253

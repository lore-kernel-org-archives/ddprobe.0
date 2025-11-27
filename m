Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12128273809
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249774; cv=none; b=epZA0RQoA4AlAvF4EKRLej2fUFWghMSZW8UH2VoQhnvmpqBindSA7kV1tMHqhAnf6mo17zFLr7JDCQzeeu070/NyrOajpiaO2y/bBmeDehkxlr2nU0a2lipy9j4jNob0qR7snb7HtwfvpxnDk9JEVxcbpLF16yK6Xi81PyA9hq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249774; c=relaxed/simple;
	bh=AT/iRW/oaiydTo6jYuTQXB+8DvWGdBh62HYdXv6KyA8=;
	h=To:Subject:From:Message-Id:Date; b=A+Kj0krD/yeZ7O4XOLrOyvFaOz888B26g9AsY6FBnMgWYnIMRn858b3z3RkNKbX8tgPjK28So0zyZqyKY7oyGbQ/R7WKWKrdcZjVaNkNZKRxxcSwlqgbPEwfeuXeBW62QDvk1AnEgHrsV+FEDd6NHHdD3T8agq0aGycIbeQrYBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ungybBBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ungybBBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BBDC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764249773;
	bh=AT/iRW/oaiydTo6jYuTQXB+8DvWGdBh62HYdXv6KyA8=;
	h=To:Subject:From:Date:From;
	b=ungybBBHUbTzlRrKnCSkboA5dbcwbXg1WEnQlVigxWPO5D+tBP6KIKzarJDajS9PN
	 o1I0rT3Vx2E87fKZSvsM+PJWSJtes1AF9Peg/d8Tkvzh1s73Cy9xZZ5zrdbKtYOFEE
	 oc/f4VEweiyqsEJgHR4NfwQkMaWbaQ6tGUQkMYaVnFy2Vtf3klGaHnzoZ6Y7Du61Io
	 b2h8frGPQIs3RECeuqwJrz0ZP9GjF1Djg9w7L48j6TkMT7l+hNtS+HqXQSicZH4H3r
	 dQTRJV65JgV7w/LheDm+v6pB+yrKxaG3kJoTvYs6dz1U2ySBzO2kc3bxASm2nMNL9I
	 /R2U1I3fD84DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB5CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424977360.25071.4314160645837905428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87edc5bafd3214170a6f529371b3c95861dec13a506030d87bf8f38ee9d5cccb
Date: Thu, 27 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764249773

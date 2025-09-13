Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB32ECEA6
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757769594; cv=none; b=t/virWEdXLe0fHll7jDSFIyaNivJN3A8AVqDv/eivwzDoracnvCFTyBuhHhP3NHHkAbT7bZR8H0sZf+tkvMGAz0XPXOBNaA1kTdT75XB4JPZrNtDHLj/wBgMwLu8xqGBm4M5acEIraKEmjpeyQ5hOW/Zr9U+mziv2uA+2j1kO9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757769594; c=relaxed/simple;
	bh=ObWHMKw70sy9DhWlYoXm77B85jui8DDwUC9XWy/cjl0=;
	h=To:Subject:From:Message-Id:Date; b=UXbopEUANsDjCObQlM+mnhcVMRA4eUz031ChScOUHpQMJ3L3WUWYGSSdn3+knv1wt3nCpQTDLYFIl7QVDOyLQPNJ0Z1o3glujCRzUAKEQDIGOpD9yGe92GFs7gmy0vt1evBAfpqT07FjGwlkMkiL5JvykUpBgHh5aSQ/YWPpi84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hafxcGMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hafxcGMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A67C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757769593;
	bh=ObWHMKw70sy9DhWlYoXm77B85jui8DDwUC9XWy/cjl0=;
	h=To:Subject:From:Date:From;
	b=hafxcGMC+Oq4LG3sPvIMp4D4GQWoQ00CBiptveL1pB5x9WbaZX0EQFzQ7NNSfGybB
	 t+XU+CjkzYlY+NFzz20CHwjXs3irzrznVf5XFKzGoQHiENBAf8PxKnNWTlMuB7d15S
	 R+/SCEca+EePwGA/J9eQqv6HqmXero7xOA9ND+y2X3FLUOvPdyAKmvgGlq1evl+n2C
	 YTwk12N21FVrG7oXevDMHRmy3B9np4hY/AE/MtUqoqmVwN82w22VR6a5UuM7b2/Hoi
	 klb4DGyQ14VvVyJZrsqCRfiLZqg8aQoQrbV0EsiQpdklmVomq+nArs1e5c9gr4F9Wl
	 lvZkRkso+p0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC2CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776959357.12331.15002301092000095975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b16d0bd05247a1cfe9620f05054c02ed037ba4bd4cd8d610641ce3923f2df5
Date: Sat, 13 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757769593

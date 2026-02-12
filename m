Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20BB33A9EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770908095; cv=none; b=nwY3YxZHtDu7T+dC15ruzk2MM+elTS/U/zWKayzWhkyWSh93conBRFV/142QObr8UBdzPhif+MR7FLkIE0rkHbttwg8bgzz1jdyGYJ8Ilb5ksG5mYsHGdD/a4lv9t76xYq2Ak0Aewexc7LnaWUfWzwyooLNzSS8VMrS9JfjQxhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770908095; c=relaxed/simple;
	bh=8kmvoTeVKiBdZyPNQsNwKSE9uPZQ1Gt+4KwGgzjeNxs=;
	h=To:Subject:From:Message-Id:Date; b=J089mzb+mlmXak/vbJ7tXtTYpMW5jfrnoiVXqXOYMrICy0GiMKXNrJjXgtkMJqJJUewKdBezc1xOch5Lj/v2xHR0cBhHI9IHwt9+L23OjKlc1wqoF5GY0bo/KlEp4WhLth+r9hwWGOxBkA1n7u5+m2CXewQ1gsXbcO4glGvHviM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsWe3kMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsWe3kMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2C00C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770908094;
	bh=8kmvoTeVKiBdZyPNQsNwKSE9uPZQ1Gt+4KwGgzjeNxs=;
	h=To:Subject:From:Date:From;
	b=UsWe3kMAVI3fWBlZDnAlcIdMIPkddpv3Vsv6wkJJbkAGrNRW1eNNDQ58/4jDj5xZO
	 QCSeLf/J0ZEamNifNrWHTW5m7KHO4vFHLa0X/WhoLaWAnFLd6ffvMFruTtRj0EF1J6
	 DmFP4FECM0emOghIxNBNXl9hVmuMWkXWyG/w4iToXDzn9tbHz53Bf2xAHjEPkGs6lK
	 Tt/w9dhDYoTvhXBfjqXPd1Ik/scuuil23NNeLiRXKBob7RNxw0DdnnX9R68Vi+tt1v
	 Y3xgDnXiFV9+J1ZwAKN6PKo4Uc4wC4o4jAc4gM7wJbKRM6jDAOEcIn1mVT3aBL3VqA
	 /hiromTkhrh9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64A2EE3695
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090809373.20723.461938109897985529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b085df080220bd1377971330d1c3962a9456619c89f600d81332bd7d98abfc
Date: Thu, 12 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770908093

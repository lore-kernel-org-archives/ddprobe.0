Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7D63438AF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781911594; cv=none; b=boC3AMIrFWks3R+Yj3AP/C9mqtgbtSOtWBazexFwJrFBncgOb4xPDAZUVMxX1pnTzOpowceNxvw04cRSA4pkKQj1a96zFMLXQbhy1XFTYg/cKjB2KxImxo4s6Zs50Sh4U+wr4c3HH8Uzg8nDxucV2L6UDMbKvsKs97+8OjWxecA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781911594; c=relaxed/simple;
	bh=sNZESjF8p/AefEdo43YMNUfKGcE9qasllRN+RrwhOko=;
	h=To:Subject:From:Message-Id:Date; b=sjE6XHUzQMy7ld04JKDNLV/55SbixckCRogewaARQZGqGTf9XV2WUmP8Ooe0YKJPUojH5scz0JirfN6+sObUQloy4qAc5iYZnsf4uuW+32i7cMpHTGbROW8CLEa65xSudsK51r5Z8yg6juQi1VKV8s4QK8N99QVKY/3JWhesaP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcxR9tE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcxR9tE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFFDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781911593;
	bh=sNZESjF8p/AefEdo43YMNUfKGcE9qasllRN+RrwhOko=;
	h=To:Subject:From:Date:From;
	b=bcxR9tE6B+khmCmm/Dilgdc5Kkc12D4O6WzdZN95nrj64Yx1lADvvwvvzc72aSAsw
	 Aji0DdT0Ig+t8QNRIVoDRCyyg8tEIk9WndT5FxIaq8PQJjVdiXHRIqUPSkLW1lG8Du
	 Mzt9QxRzI2z3JPwAjckBeXwAvw0YqsPxwOiAN5/ueQEPhuea2mU+W7gEhcDMOr8Ki4
	 /baYw9jbNbZeqWwx7Qx4YGHrHyF0oOyGP2sU1uf77rL3awYUwnTUMFXmCo+SAblLn5
	 WcjQAWpPqfraFwVQtt/c5VZYjiGS6/HqJwczlZnunOS+AcSjg2TSHW8T75srVXgI59
	 DAnpE8uraAheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0E6CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191159370.24618.7030130273897530787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7c62405e732376bcfe408c94c52077e4772ae39297c461af379294a34e8e3f
Date: Fri, 19 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781911593

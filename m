Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1989514A4CC
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725135354; cv=none; b=cW5M5PGGn3qjzps+Y/AcCYPkUAgJVB2tmyWJPgL0N/6jrs+VvLAI2WmN3/uO67dPcs3kUEb8pUkbhKgv0tjNbo3vgYg583181G0hqYGfVT79VmTwUCmT9Fab4BG/vL34ZYrITCbQZBZvErddsJwjdj+wISoXvTTW6jPGVx0mmz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725135354; c=relaxed/simple;
	bh=uiqat0fxI234Ig5LrQZIISMegVM3vHekAgFmWlHZGN8=;
	h=To:Subject:From:Message-Id:Date; b=W7RdM0jefdOUAZdQACKz0QpUPF8sbBwpLqutaS+a4Uh9awMGdBeGoP5G2BDdQMUaUCV7c1V4GAG2M9TveJ2fqDwJwB1kzgxLj2F6ql1H+6H3vOimPTfUkmtxDf1Yq/7PIJNxNICYvuNz7+pCJjJg/BYK3DF7MUifIkTxCbFVFpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvCRQxfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvCRQxfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E69C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725135353;
	bh=uiqat0fxI234Ig5LrQZIISMegVM3vHekAgFmWlHZGN8=;
	h=To:Subject:From:Date:From;
	b=WvCRQxfXN/exoom2G8jMQkAzIs7D8KK+s8Aie6xY/wuJXjcMrB1cxL1t9sBs0btbe
	 URVgXg+qYlSSqidcoPJH+vn/O6LVLd+/EDkbROBUoLPLWFRonNHarcehiTxBTUE3JF
	 1JUGqqS4obzQjvOrDrGejWIwXTUADL9MKJbCPz4IpnmejJzkOLEjOgLANPFR1BkOqk
	 8w5EPkKBVtZu9MpW68ClP6xhsz0uCmc9fmeaMa8JN5B/yVgqX8DCSmt2OC+e249EJU
	 eaqXKJANN86M24ymAQe+BLANoxuWSb9D+wK6jxsWfrdu7AyRkQrubRlTOj6z36OOZe
	 sbTEzLDAB0BeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8BCD3423
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513535358.30896.14306123822797724174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07839d93a894f0c3ecbee913285308f567ea0b4e891245849fdc5b4ff7a4365
Date: Sat, 31 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725135353

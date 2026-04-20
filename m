Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B02039C629
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776688654; cv=none; b=JrMHa3aKzTui+34mMfd6FXTFdFL+WikXDC23H8PKFNMdNxCNk5CUPiWFP/shKp9I9K39QGi/aK2t5w8vZEfu5JVYj6h2kJSfRTegHjZpfcQ+oL4NsmM3NR9MCOM8JtvAe6VVepRGePi4ItB6CMv4J7kLTe0WAUoz7DfmKSGk5Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776688654; c=relaxed/simple;
	bh=sL7JJ4ZMq9bpYBqHCzO1LRDnB4sxD+aUK1/y3147y3Q=;
	h=To:Subject:From:Message-Id:Date; b=c0j5AWttIGtYdH6MZsyKIaGsrUHNvJa3QtrdrlBymO5GdT+R0JIxeeP1KIrq8q9ry1FoZXzHXz8HPj3yLXMEFWWVuDeQnKlHLxErpQIE7r1foaV5+ZpUL3W3rxBqTYt5kNKASLBXIuD4YplqMIP4TFVVpZl5sKi0wTSZbFPtm9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYQn9xc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYQn9xc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B774CC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776688653;
	bh=sL7JJ4ZMq9bpYBqHCzO1LRDnB4sxD+aUK1/y3147y3Q=;
	h=To:Subject:From:Date:From;
	b=jYQn9xc0mj/76giFvHtpG0YcHtQjjjeF6Z/8805Eh8u/taCyAIE2NDzYUF2+U60h8
	 0Za2yrWTyCy/gOuPmBU29NG1KwrPWEOEYOGEuGPqUhunBOhzksacnDLUB5umjdSP9O
	 oILC7Sq7vzlcKr3P6c0xhaY/+LhkHSdzTYx9Ic/R/2rpKgHfn35DAy8pitJP/4cyHE
	 KpElyb9hfc5MLsnUWAl5RYV+vAxvdUuDMrJdwe5MCOp0iCwiB+3N5q44vrsc+mT96p
	 rZYelEV45VCnxj/2nhV/EAmpk7UrFlE5U/h0JHEUr7MM33X9lXjZtVNrNzZGYiJ1sL
	 ObzOKO3Yefd5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF0F588C3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668865368.28245.5675040957277250836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b020dc9df669a28ac8a1b7fcd6b68e2b31efa88d74f595d2d01e2e4645fd416e
Date: Mon, 20 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776688653

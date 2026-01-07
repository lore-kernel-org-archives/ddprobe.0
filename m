Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC19E40855
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767750234; cv=none; b=CUGBHUjBaLKWD0KtoB9itVPJTaGWZW46D1/hqcjgz3hpa609NgElKgZS2QwQK7qkcqzYOISBvkn1H8z7cHED+uDOQBhVYQf0nOqvfATX1yj9fbb2v5SCj5yMjVKqKqiGTanNCtLQrMRMEE3QjLCCes+H8WPMWq83hyYCHWEEStI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767750234; c=relaxed/simple;
	bh=NrsiZpCbtlu3ct5fzjgWDIcbTumzuUg3Chi62MwJiXg=;
	h=To:Subject:From:Message-Id:Date; b=KTX0JC5LZk+dPH9NgJzYBbT7WW/PyuTo/nkMHUsLPC9gyBGNuwAp/xcJ9AnD7Pc8tf/+YoqeYUYnXQTLMZ9WbAoMGap4JhuUABrfEGB0SJwLY1POFaMg9Ig8Eb2QX9jerMQW4txR37yAS81PZa6HkgX+pDfchN78fxWtVtLfK2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGHSA01s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGHSA01s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B18C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767750233;
	bh=NrsiZpCbtlu3ct5fzjgWDIcbTumzuUg3Chi62MwJiXg=;
	h=To:Subject:From:Date:From;
	b=lGHSA01ssGpmwgWPlulmg0vlHySy3abyS7A6DOy/pOPvRh454uNjvqryeSkEwaNow
	 KMDC1hbSw8DikRoL5uBnkLDlDUOr2VvIBBtHHWgk+QihAyJwJnln8DdSSKOBPuci5g
	 5m1lPoefhTmlzIclWjwqDleE0Txh07IKYVEHywKfdjRz8XwRKkHGHW5M2FLDnJsYL3
	 /6SCjIXXe/fW+1yuU33DJW2IFS3j8EV1fuy1a316hhPtRNKWMF4oycysOr+/MiyJLQ
	 3BE1ZBk1SjmByYcLoLM+5wdb90MjUnTYchiiBt6w5HBF7VruPvo2yCJN42eV4GVq+X
	 xLV+NoZWoG93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ABCF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775023358.24099.6602338966797373517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97263b46ebfee9f0557aff4d785c7dab8070b3f9e4c8e967433edc2d9303a278
Date: Wed, 07 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767750233

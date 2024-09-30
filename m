Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FA19309C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727714154; cv=none; b=cUcYiEiDN58pMVtnTyYCB3wsaE43luRdZutb9+J3vRRE1BqvbC/rBgZ5JrXl45SZoKYMq8hxYndFUvcA0XO+PFmvh1V3laObGO/cQU4Bx5rWR0U4pkmThcEU6B1b+f2KRi4ya2KU3jAOkw5AhpiBwzrX79ORj+PwZqjTf8uRqgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727714154; c=relaxed/simple;
	bh=G9osaqsTDega5IPrAuhIhhFIXeOFzWPv2rAhLrUwZO0=;
	h=To:Subject:From:Message-Id:Date; b=hC5D2rnC6dFcOqkz8VrGs63j94yI0Zf+VaIkcz39iPDmIBUSndAfj7jOuIhb+2kxDNE3cbW9sv6oa9/Q1C1MuewWZxll5ECGq03Yo6o95xR4mV4c+B23jiCieU3bfk9h+xj2G/5SB0R75jeDrbQxExu4tEiEBtygSwHzSEQ14mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciLLbjCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciLLbjCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B6C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727714153;
	bh=G9osaqsTDega5IPrAuhIhhFIXeOFzWPv2rAhLrUwZO0=;
	h=To:Subject:From:Date:From;
	b=ciLLbjCg49mZKwGZcdwowz2N7mNHB990e/Bxz99IQizYwWN/BP5UJ1nw8ZGnC6dKx
	 hxu7D36hsfuUyopJJQJRe4c8DjMdY85seqfOvn1XPI+q/8g0FIUo2xe/lCkAapt6Np
	 ZOFAeSNTGuUAencnp10wii0PLkeZt5N1KjbB+GDuCq8MeVhYjGqMZK6yQhOqzyHin6
	 zUdT1fBF6oMxA59ATCnr8UKfRJ19BEZMV6u9C2SwTMKKuheA+X6YXUG6kEIosmB5FQ
	 8mMZsr/YTfoaM4nMT8W/bMEAQgP8yingWImHtfHbRnrTSP1jCp8N8gnHeJElvV5mjC
	 mbzmuh4ptRXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC4CE8373
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771415358.8938.2982620133598230750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93830cc9898c099efc152fb1ecbb1bf816670fce330b037837eaf87ecb24db0b
Date: Mon, 30 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727714153

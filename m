Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1572E2BE042
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751988594; cv=none; b=GLrApQ6GmByXUb6esOYpeUOxdjrIi82sCL6zyQ4q+3+9N3Q4OgVixOrH9/7OeYpmVwMb+NCK4OfFFWNQ+Wr0Tut/pQ9TwdynUPQoOS1ueuWhpxPEKC6v55wR+KETUbNyNDkM0Jh7n8hYvgiHvOpDjlQwut5rPs9+q/wHag+UHqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751988594; c=relaxed/simple;
	bh=FXyIyU4QMiaauElvHk8i7RqkBlPzVyimYwUCUs+tClQ=;
	h=To:Subject:From:Message-Id:Date; b=A50gy8pNcBapBch7/cQrqliQVbZYl5JRh+jtTVfQo1tZVJIto1MsgoQr6E/eYOsli76ZMN7oZHPzAxro6NPYqkiWCqIK50ManW+AkVaX7ZIcCPy0yZZNdn00QyaL9nrLduXXpeqoY5JY5XZd3phl0309o9f79m4hTK+8WU7nPn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtwlV4R5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtwlV4R5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A249FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751988593;
	bh=FXyIyU4QMiaauElvHk8i7RqkBlPzVyimYwUCUs+tClQ=;
	h=To:Subject:From:Date:From;
	b=gtwlV4R5m8JHoYvUn7+yqk9Wn4DexPA4H+j8SN8nHLSYCvB8hzM3/doMimYvEXKYe
	 49w8seza2jQfWZ7+QcsrQ4ffQm1/jUEduNYYHdKdszjkEF95apzN0Svv550UTbzStM
	 /Ltvf5TrleUaXM2U0DlrFM4JMZKp5+rnb/mvyH+kODxoAE2WX65KJTPynrpPguHGJx
	 ULvQbK2ZZghX4F9EErW8e7LsFXc/eIK/DZIjT20FFjkLXetTXNlnCURYctVlmVeT9R
	 GXADhDb3bPiroYPoKM3ibBT2uSfB0ox6hOdYiTIwvJyYogyc+SrCvy2sfPkuYxBKqw
	 1XtAtkSBNUq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198859358.19663.8450458925533121547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33584b147370d9371a57205483f3d1d838f0ae9064e0877f37649df3126db460
Date: Tue, 08 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751988593

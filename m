Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB01134D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743556796; cv=none; b=kpnzUUmmrOcwpjxsvCyycDPYSvaaGy5dXlTO9Fea4mWvF90T7WZIHOyKXzOmT96bDe6+qSFt2IPZttbazR2J23ntETiMfKA6hfndh0tEJMVH5qIlHzcXRzIvI0UuXuUI25Q714noQst4G6Zzk2q8l9IvAwHMkJ+xWsIbY8EN2qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743556796; c=relaxed/simple;
	bh=fPGo8O48ZPogQgDpNXtlLtaeaX1ZArgU3wKU8/Qd5CM=;
	h=To:Subject:From:Message-Id:Date; b=mmTQvanH0xmSWeDjAaCGtb90Umc7PcamXiZ+wmR58O8oXKwa7plhQUgRxPAhTuPQ2g/6gBDbsqJiK9arCMztUcimkjgdF/28EK9PFABbds38JQ8HeJi92ALSlQ3YjKjH0K6dhbAYt9j2w7Kp1X8UAW0vjhhYLHYoWCoC8BMcIJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMvOtkUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMvOtkUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1105C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743556793;
	bh=fPGo8O48ZPogQgDpNXtlLtaeaX1ZArgU3wKU8/Qd5CM=;
	h=To:Subject:From:Date:From;
	b=BMvOtkUQtTcA5pDWbUbfYfM1dWqFDl5K2Fs7ORQbdScE59iu8FR/1vtB0IIycEDn9
	 TCJRFdX7xIY69p1DCfkD+qd/t5SVFGnNdM7s8tvw0GxdN3HV7mjeyhKCxEVvFJLyms
	 xUZfWjPwTyIOwinvx2XYYTQAQvt3Pdn/uZhjtHc3cIcHNGighLaHxmjn7A2R1k1AaN
	 J2wtqv+UpZkAdFcaEUjERWjZAJCahwl+hTRW6dVV2TD1+DQRR4IuVQwX4DtbiW758a
	 Ofc1JAjlwUfkZFMtHdxnUnTW8KnBZUNhX79OqmiY0mnkeW17UmBDiOGH8nbozczwU7
	 urs+773C0hxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76EC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355679359.22444.7128648417870700656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41058ad4cb631baeff05e6d4c99b45ec0a63c3b11969fa6021a123232e6a07e1
Date: Wed, 02 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743556793

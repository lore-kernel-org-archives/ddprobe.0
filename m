Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FC4B04AA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788622234; cv=none; b=hX/jesoC2eJ8QmVRaK65A4XMRMQbm86XfCp8lgwecz+HiuNGDcweFmq7vTHiL80ekIyBY4G49Y2QmBme860lTI+UFNDr02xsqD0o1Wrm74d8JGpcVXBu8bNuo9yLi3nzB+YF3TrLQulfN4jD2n8U+MQ6LeoZmeO/Rs+HWq/LAJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788622234; c=relaxed/simple;
	bh=kcQtaGhtn2jvHa+VtljcfngsSrnSf2YAy+2dXBOsnPE=;
	h=To:Subject:From:Message-Id:Date; b=hRYxnOGpUi776LrOeuNVgpnPmRQ0jzFoJCUMf9aaqzY0iGjXplV5cXd+A+UWkdqm8g/0hWKHqC0v+pwf7zEGi5JQkEJVgUgwu/Hkvq/NSkh0J8BYYHfsP5DDZCczj1xXUOkTBeT1V4stmhsPGHiFQ6f+p99nISTyViplaJ4rtLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWQ8izwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWQ8izwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B86C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788622233;
	bh=kcQtaGhtn2jvHa+VtljcfngsSrnSf2YAy+2dXBOsnPE=;
	h=To:Subject:From:Date:From;
	b=jWQ8izwa//2cSHXCE6AQ7DgLWAkn7hMdB3l55uxkpAXD1U74Z2H/d7lH9lZSPpWpq
	 u0J5mo9Q6kv5DAHALWm71rQZsTmxi73Vp1DDtLErbVHL/d5e3wylv0V2vdt9d9VpcA
	 sZqYJbb4r1Ei+55NEtubhUqdZFEUo1gZ1fDAKpOFJCuOUotSwhI7YdIKjnd42Vdrq0
	 PcvWSRaCa0cHHooMliBP1C7g+iW1TceoQKHAkJ18WiHSLmCiB1C5SrUEaEKuhFLoye
	 +ZCZzEK/BOaoBENFkes2XBubuZP4Dswh/NLeQKIlVBWfcPNGiQAuB/H63A514+Qs1m
	 f3n3ojvY3SKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F5C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862223370.23611.15495555161714663883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d059e427ba7a959a7f60011ff8bb3933c45f7c49a27cffcfec4624832c0ceb02
Date: Sat, 05 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788622233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B4E3AEF2E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774862694; cv=none; b=Pm7lhUdOpBzr9b2+dHVHlYZNxDKgaTXv4nDZrSICihhtAqYYBy7WhyENRqiDxgrpk4JtSI8IEkh3gUXyCNNhs4cQ9bwXTVr5NMToPulHtudMfCJah2z3q9UZrB0x90kCVazrdi7EjqXgXBRvaGj+/xUi4snboBTHBTQT+iFXVlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774862694; c=relaxed/simple;
	bh=HcuB0ZLNMFTTmv18blyLZlTiu7wFGfptjoP3ohN7X1I=;
	h=To:Subject:From:Message-Id:Date; b=uDNHpmnQWtyEgDfxBjbf5d40xUDYKyv4ZztrK2iE/yD3s7N+FGCB4Cl9tiMauE0VwZxUgqv+swZeR4kheqEznsIw8XlJiavZsWCD69m8BqY3TWd50KihO8H98YwlYEnBGtY18NQNhHlBYClyimPxRFwzBAW7J0laeTm/FPFI9WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PclthDBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PclthDBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA607C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774862693;
	bh=HcuB0ZLNMFTTmv18blyLZlTiu7wFGfptjoP3ohN7X1I=;
	h=To:Subject:From:Date:From;
	b=PclthDBX7k6ZzAEHlzgsZub5zhXZiACty79jIrrvEZq68dcgq4+82JTFs4CZqH46o
	 3er8/Y1TjmzQVyZiByM8pG2FCUkpNbpmBM6FA7muZGmBjqKB840dQInwsQvblzqcrE
	 5vi1nLaC/C2MNcLGS5jkHyw66R4mTXYYMfqXsMX8kQtir8haJcl0K97YDMz6J4M9Ym
	 zU/4ODu5EofZ44DRXEWOBzSVh5X1uPaEJqZHA7q/Z7l09Dbfhqc3uIISWCBYKaPdmB
	 5BauIwoPYMK8Aoz98bKXNQmY7JuIpT4liHBv8qWQps9JUvDEvF2PtCCIfQxzX4+XoX
	 RIQLyGUrlzjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9913CFB3CE5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486269361.18827.15771178207724721978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df777f48f3852db0bc44a94c523aa9b464faf68c0e832afa7a39050b928cd0d
Date: Mon, 30 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774862693

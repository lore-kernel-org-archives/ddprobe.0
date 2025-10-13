Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9FC2E5430
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760338194; cv=none; b=OAJCiAA5lEV4LrKC/eFZugF58f5DkXC6J6KnsUhrEE5EhG+CWHNaXn+4KpV3C8dkjbFUU0PwWBtgWcQ8qts7pFjsekKjHBmGIK/nJpVSV1pxJvvbOu14KJlzLShiDjLacHi7Zk7r3Ra1RY2a+4NM9+N7Xdw1raEi9Zl/40bvJL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760338194; c=relaxed/simple;
	bh=CExFbwQzYXfXVL4bLW6O/ulbf28LTHdp+0QRoUG84v8=;
	h=To:Subject:From:Message-Id:Date; b=H5PTzDrfPmGteMw7XBal5WD5QYLa4sl1H5+isjwonKPbC5GVEk+gmrcLUUegaV9gSREy+3+Q7geY/3iard3txED1hDqsDmNJuc51bHq9o8gIoEHMs98jludx6QXCpDSzs2uOVhuJ9mOBW8hGZqYPTrjINyVsn2BWu6tq7Wevp2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI/YlHSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI/YlHSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760338193;
	bh=CExFbwQzYXfXVL4bLW6O/ulbf28LTHdp+0QRoUG84v8=;
	h=To:Subject:From:Date:From;
	b=PI/YlHScXlm01fKjfaTSv/+/oiF503XAmZFS4qhKSn5CMeDVsWrrJdD6hX3qjSfoW
	 BQ3XbPykZuFPCvB5kQaEJ81CrAfqvSGrddrxYgyGRzXyndWP9NfSmtYdExJcAgHYUU
	 F1fWaPbpFoua99uPiJ9vphUlLqCzQnCPtojdfa1B1Lrt3LH7QECNbn3MUv1qXxBnWX
	 geC3CqQO5CD8xhPCxZN6HnGCPOPK1GqZMzAbeAC29vVtSuqRuW7TaM0dNhPtCpgxB8
	 UPZZvCoUE8oJVgnmKcD7iSLPrr/+FTdlF1ikzypxXTrX7w8NXmrqsMcSco/9Dim53i
	 TDe5zOrhDulgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91842CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033819357.31367.15925152250703254407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a772b2414abafe102b55bbf4f22edabf03ec45ef2f103f499f4436ebf7fc307d
Date: Mon, 13 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760338193

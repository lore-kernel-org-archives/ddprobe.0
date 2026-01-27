Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238BA323416
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769546634; cv=none; b=i6m1meITiOwLCm3R87uV2lRHAwITZoWt8LsDiwK5j1+43ztAT+KHKN3iAKwsabFjlvY8MnWT8USCJucaEUcnPp9Lq/0sC2c7uTWlHn4jWXEl5G4HyOdPP/3TmRM5Jb8b7JSN07SKnImT1g1XUzfy/gMpMNZraVfO+0nuhXmMvsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769546634; c=relaxed/simple;
	bh=k2Q50Ezc4b0lez01uK7a1AApTxGYs8MWDIdyrjq9yNU=;
	h=To:Subject:From:Message-Id:Date; b=cnQ8O2bRshbxBHwzBHXiYkUbI6C96raTdSbs7WlVBwdsqjhT2RF3IrCjzaNYDxDG//NlSg6nm40VMORwR4sTO8cd0l11oZGw4xbNzN3u/RkxCZrdDiu7u18qmz12Tri2h+6Jb1iXrerfYG3hHZDWegfFpzkmZgf+yZ/6FHB7heY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOOd0NLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOOd0NLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6A4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769546633;
	bh=k2Q50Ezc4b0lez01uK7a1AApTxGYs8MWDIdyrjq9yNU=;
	h=To:Subject:From:Date:From;
	b=iOOd0NLZL41M9F3rCU+X+ElzAUiPWOSk982931RPYArz3j68ZL4ZQTXzQYIcgDpVL
	 +Ou62Sny83pf2AbiCWOa/kphL4E3Qzw9dBNXfUr9Ia3z4qftaZOXlVvv84DFWrH3S/
	 ZcaWmnIXKAsCIh/w+uuTYAv21JHq0AMVBjtw/bY8t0vPbaSlcdPErGs2XfSdzb3k4/
	 VghGxTFQ5tQCVXimAcCRIGK8UFnYRTS6iKavNdgjeodUdEtQFnXSIJTjHsPVwTdXkV
	 yOufQ9XCa4XZEQY7Am54hk4mrBAXLmA4CSI1Q34zYRn32EODK3+vAGiJCFGZUJY9Sy
	 u3pGZlN/gZHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3CD2FEE1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954663359.22919.13970479780239438443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b6534f5cbb7742e197c30fa6f130413fa6deea3dd732926c3f7b6807fe0172
Date: Tue, 27 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769546633

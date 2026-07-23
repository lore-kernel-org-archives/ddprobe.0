Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9BD41A505
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784839234; cv=none; b=UEBPoxDspsHZQgTZYzeXSQC45ta9J7gFwzbt0ge1CHKljcSe+EuXghdsUOWphAFDXPTT+j4QeSrTCNyxbLg7XtA82khktBqpw0MDV2Kb3hruKlC6cISbDLzqZMe4W6MCCGoB1qpvVL602+gTj1FXLp87nD583wm9m9BELIodnx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784839234; c=relaxed/simple;
	bh=33LW4c8cBCHOK6Ywh1EB+e87xnq70nP2VY93IixSKmE=;
	h=To:Subject:From:Message-Id:Date; b=AlX/IOMetzs882XQx6I3vgNdx+Gpghsz98l+y9OfaZI9V/uPO5oU1GqS0Yf4BtlSIOtLnsSAD+B0XskQo4Vdh57/Qp6PvIDIRZP25CnvU9LWYkjFFgnVzgrCHBoRgmziL52vJRyWyBtjNGOhKJR4DntZzHAicrQlVidto00lTUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOb9oyJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOb9oyJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B45C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784839233;
	bh=33LW4c8cBCHOK6Ywh1EB+e87xnq70nP2VY93IixSKmE=;
	h=To:Subject:From:Date:From;
	b=LOb9oyJdBQs9dTtE9z2SjkSD5rT8gOZkhMvaU9+VbgtC8CQydPuMTpUfqucd+MUwh
	 OyJWgnFWEXv3Mx7y5Wc2fEM702DelJlDQfKbnaAMxFCg9pt3xgMCvuBgvehoJIublw
	 8zT5MCak/NtMaAOPGCVd0Jx7BmagjGTWhQ7/9HfAVfZ4fKx+KLEIpOczrNaEKStgEu
	 2yoqbT2FQvzZMVAxmBjLK8fBurdRaw1SAGQqOVv5EjmOSX6AWCukoSrp1qC8FPc8ZT
	 nlQnzfT8Km+4VTdX5z48up/A8hHdAZEpu5ziJ5j7+g8qENcQmYqXwJpi/w5Y8u9Qev
	 TEsoHVrRZt14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF669C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483923368.30748.9131757947869343148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e41234e3c639862f9e953b0c52b8b171c5d3aa6111ba19c51ca6d8f8e30126
Date: Thu, 23 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784839233

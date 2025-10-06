Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F000DDA9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759718394; cv=none; b=m+nCBizDe/JYdGM2YwfPhEOA/8QVlpLdzaw1Yy4h34ZF3y9wBqZnA/zV7AIme5iZzbEVc7sBDkGPUIWe9BibJEbGHfsrrQJGD67Ax3B62CSNRI5iawKhFB0TbRK+U9Bbhi6ZZWdNhjrS4LSATtNGA31Fgit3jlTyvMWaCoiwbGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759718394; c=relaxed/simple;
	bh=7WxgwZSDQqYg+o4Sv/0JlzYRd8rwzEznbZ8Klf1TwNQ=;
	h=To:Subject:From:Message-Id:Date; b=BB2OSJN29NAoOFI1a8Sb+QDEd9xQ0GYQcwjKwT0evyq7TLiJS0H6bkTWMRPWMHhdF7HivDaRILDyRv06eEEIW4ahOHBA27OBktGG7573rfN/iMmGkzIIzRPPMmIizYyL6gGRLNpojFJR6dK6ekGe2HR2+7ZKICRfS3PwTxBvUXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3PnUYI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3PnUYI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759718393;
	bh=7WxgwZSDQqYg+o4Sv/0JlzYRd8rwzEznbZ8Klf1TwNQ=;
	h=To:Subject:From:Date:From;
	b=f3PnUYI4JkZf8yaIGcf30Md/I7k6xqIthcHOzyH28V3NOIqBqxWextK1q4ENWJ5PS
	 OmgaCOshvcVXxtS7+ZroGBZRRx2w48AH/MFSPUf6oCunDuICKmoO4Qffrzr6H2dj2u
	 jWJ9TfTwYpCnCLXLXmqNziSqcAAZZ1B8WPYdcP6KE8MkO0LEw9P2imvPKvMnHgit97
	 SMk7ecVYTCQd43FUOc1cykk/D74i0XgAx7OyV1AXwjVNNLtLo0UDMxkZXrcuNE40ac
	 Auxk/udR5qeo5xhJzdeHf4JSa+Oc+9SPLXF6a/Rs/CSkCkcYloroE0kcELuOW8ytu1
	 y5nR13fe13BPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510ECAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971839358.21002.13984357597755401289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ca9fed477440a9b11e08b11bd58027956f299866ae8963731c23cae85993cf
Date: Mon, 06 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759718393

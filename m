Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4F2F3633
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756139395; cv=none; b=q2chTTAe5G8YyFbze5u59AQSPywnCKywejINAUGtOqgwBjKgM//kOT77ylNXCbYkVSQe3IXOhA/sxPALonoyx/l8OmjsTTSlb5aSZy66SRMHolaZSb5sc9EMy1B2ngV7h1JxA5Ea8JTrWKZadIwXfnp8nf96DqKpOv+K5SdY1z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756139395; c=relaxed/simple;
	bh=+iZaJSGeRTbQ3DgfHIlFlRlvpsut4k+8AiPxm6F0CqU=;
	h=To:Subject:From:Message-Id:Date; b=WEG6I+2p8KBm5g0VgGmr/oBtQTuyOrWmBINp3ta0LonZ3VnIPedJXk11InJCODEaYpwMuGtG1dC5socvyKW/0bBqBg4QaVTFl+ysT8FWgPwQPD1nuCV8MrABKR7f/DJcykl6xheaIDXnaKrFvPtmE7qDe/AIL5m8fCOacr++GJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gbol/OCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gbol/OCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5139C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756139393;
	bh=+iZaJSGeRTbQ3DgfHIlFlRlvpsut4k+8AiPxm6F0CqU=;
	h=To:Subject:From:Date:From;
	b=Gbol/OCgE5rJE1c959nJf5SBhu6z504+JY9InA4rAn7RdmV8mRW0skpf8QTCjASy3
	 F2BQTAhE1A0LqLMvVVOgFL+N6ahgANAoY85ofXuKwXdYkcsQ/UMmDkzrmdAyLhcWVn
	 PSv0yXOTvorJH4mt0pbB03DBNDf8gLOvJmQkBejSAJg2WzY01fwWZVYdav0z/rMK8L
	 EAWOg6kKqObawU79CmZCZcx9wrI/LtjJhHRyh0jYyH0skEtvucLlW5MKNW/e+YU+qa
	 MvDFcmE6C0s/JX2P0UM/9weTpmsqpsbriMGTfLVofk3OxMFx6xs5OW9KxWEktcLUIt
	 ScJSNpjtFSqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AFCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613939357.14582.15152150698236259104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101d86e45474f26b1d44e328f1cbb786452f2cada5f419072714ea2a93d018ec
Date: Mon, 25 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756139393

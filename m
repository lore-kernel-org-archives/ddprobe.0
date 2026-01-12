Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3D63A8F7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768184034; cv=none; b=Ml4Rr8finzCBvMyEYFHJj0e/7RTT32Js67hmOY4DaMTQQb0Eyui1zbk+ApP3klGM34p/N6bwmEX4dJvoli8Eu49+iMyzqBbvV+1nP1I2tZikhBeEuUkfHu1zB5ntXsWlpBOMHU2weJNIBzHZNsIYVRBM+o3WGga7uUnuRxxU+KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768184034; c=relaxed/simple;
	bh=wW0xLPCN4ws0hW07U6Yhfks951Si569nxOZJLpYb7sg=;
	h=To:Subject:From:Message-Id:Date; b=E4zmADgoqezVGA1RxLSuV0oYbW4B3UCO6dXSj10zgvAzSL2WYNKOWnVYg4HJ//AxSKevtm6zqzBmTmAyJc3uFvEfPmR1OQMveerOBt8OoIV50dSMzwyPX2b8J64kDV+hfdzOcwWX1kaSyT32lTuPBuF0WmlmDcyfLcDbnmi4Mcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnhlaHxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnhlaHxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7174C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768184033;
	bh=wW0xLPCN4ws0hW07U6Yhfks951Si569nxOZJLpYb7sg=;
	h=To:Subject:From:Date:From;
	b=FnhlaHxwDhAH/32vjSXotmYg1aKsy1A25TG1iJ/5obLzT41zIPPjHHe6zrCATyIZD
	 61gp/XNYnmQSbx8uTbApH38EyVX2OlevTDZW54HS7Y4c0lLGloe9cleXFmQAHeaxRL
	 MziLCIEIlwg+0tNncU6KW2Wk/CqJkcIgLXdnLpNzQ03L7HMUJeiTp41XjthWxS2Pnq
	 QzAGJOmuMTzmap1t3NISU3yShj6w6QmobseBAYdzyzXEDoZH1NQ2CxVa/FBvMyW7ZX
	 ouHCJ61KkFEsVNQ1bA1r06o9FSOuWcnJQYa6N+2MssS+PQv+61HtKwX3U/X75n1a0k
	 q61NtDJ+aXikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F4D2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818403357.24523.13809669597421481159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13832ee0ddc6779c2260bd0205465c3bcc8928d2bcf8cbf144bd6a5bd8873185
Date: Mon, 12 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768184033

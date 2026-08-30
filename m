Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BAF32C8B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788049234; cv=none; b=HMmWYNWBa/0tM1CueHByW47ZOdZa3H7+/KND/9Th/LS/yqDqjkwswPWphkL0uuOVZVnt7cguoaeBUAzKg4P9dCYjcaN2r5JAtBqx2DODLWh96mT+SGrL9hUjKVbSrMoJA8iKg79m00/w58DEEngCNjbGLZdOUy/+SsqKyh9rBX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788049234; c=relaxed/simple;
	bh=1ivEOPxVwdoTOD6M6rMQMSG5fty+Z+xLkxVBxOBSqJs=;
	h=To:Subject:From:Message-Id:Date; b=ARkQ1gQMA4n3e8UNe21Pn8EARAbET4DoVCe+y4/Bl3hAsogyq+D1pSOd24IO2uonpM3qZhX55nsYxZq9oqVk+dbIfjPNRa1WRSFDV8ow4DwYpu/qoTx6ax81b7IB1vdaTZlDlgY85VK7/zR6dH41OQyA3j6VhLBnc25ltLC691M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8P1mi2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8P1mi2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EECC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788049233;
	bh=1ivEOPxVwdoTOD6M6rMQMSG5fty+Z+xLkxVBxOBSqJs=;
	h=To:Subject:From:Date:From;
	b=P8P1mi2/3gei+Jamm2yvHHlWsIx8GgnL5mxm4jFz7hIQQv7WALU6lpKPpSaNjgVIk
	 JiZqagizV9yrrAcH0KvgD5ANuR6IXTjT7vpqHMqfSf/ftphGX5PmIFkye1HugIHcUq
	 35BFJqg/NTijPpobCQY8tCcqwN2og/+H93uiUqQe+BrwXtVlcM/hRoDJwx79SWiOdu
	 uyxtf2qwmhjMRecCMf7wGuuFKbpwHpfCKBuMUwUaTIFNPVDWANt8nc6/nJNIbrBdvf
	 eBNe5uSuJvWhKrKqIsBYo9lnKzsB2wO09VCevSkk5HyhG7+9g55OA6PPySwEn91yZ2
	 TQeOVaM7hU3MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD547C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804923368.6994.3830936343359238195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0645fdb80355fc44400ecd77976710771edf807f5844f172380b2f24410ed6df
Date: Sun, 30 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788049233

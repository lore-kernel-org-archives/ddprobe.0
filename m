Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E953594F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763245854; cv=none; b=DyVzXD6EoBRL/nKjNRenaAH5qbhsejpRqX2hvQGLun0cKRKtfV3a8WHJvCLJSkzSKV+m2hFltIbGhlHfbq0KHtNDdl0V8tFBO/m36UcFHPs3CL1judK/xhn2dRiXF85audM7hjXVDwbn/eF0bscnlc8wokdoi/9kgHM9JQ6iweI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763245854; c=relaxed/simple;
	bh=vhAuOoMNwCLVYL3AAUWySK5h0ejfP8dlCGcd5Q325II=;
	h=To:Subject:From:Message-Id:Date; b=WJ6+rOG46rZlJXXTVIKo5Thf2rIO58wIkuSUsPnsiOMEHAiOW5d1Xgj8qIRYYgr+pF1nTFShM+GHn+wU5XS90nsjZzggJ2fl7Caajd2Rv9Q96qj9LI/ch5V3p6beOGj8lyFSeOfWZkiEFEt4+Rwt/QtfRrfl1u5p0MBSQPb/NIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQT8pkce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQT8pkce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE87BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763245853;
	bh=vhAuOoMNwCLVYL3AAUWySK5h0ejfP8dlCGcd5Q325II=;
	h=To:Subject:From:Date:From;
	b=dQT8pkceiOXHxohW8OY6/Z0rF09WTkeULcMhG/oxSkaOtr6nlgPfnlCj8VK7b24eC
	 HCX/UP+ZipVHG59ggkiHO6Pig+WXMlmHiYI9eTVpzIt8tx8zvcaPjq92EzrrIlt+GH
	 b/yq0jt+RTIvA1WE+3CGSXbXW9m3F5Nd0L1FNJs2J7lcZhE0ToAoecxohlXzbJg2wZ
	 eGe9aGRMW9ZifxgxXNDpvVdor5aaPBbSVfNwE5Q9qvRRQFfND0qDsw7kCz4wgk5jmq
	 tyZYhmtwjMCTLSEOCkXXOaJwD2UoyVnfvDTAXG6B7vY7DcOOC6ul8f+qnRSE/CIpv4
	 TraFI3hLrX6iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09E9CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324585362.14281.17403987318901023521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da7931bb5a61f113d7c116ba8ba0d5201f428e3221c051b000c6c68a6f647ed
Date: Sat, 15 Nov 2025 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763245853

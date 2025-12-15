Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E11832ABD0
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765839774; cv=none; b=V7WZJLaZZy5ar9D3MYYAOmh2bIdWtZ4v53eCZ+YbI6g0h/Y7mPlr6T63w/rc/bJOui0Az5qqVcePYloE9F79aQN4kzurLzFlKbKEUzjw0vR0lD0IIv1uc9QIkxB48HzsQut/HbgNllRShQC2r/QsbKiqzwsc1fNEpqBgUcfmyuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765839774; c=relaxed/simple;
	bh=lFOC7kPcjL58Gy1arQs9JPY2ibN7xifRP/iNWiBjwxs=;
	h=To:Subject:From:Message-Id:Date; b=j9x0h27BOtii98PIG0Dt5llchck8YkzKUBCecmUjOsq3UUHYu1feN2fZ3zhfp4gzL4nsZFAfzpNuOlbPsvsRc7oxc7qxydd76SA5VA5SNfqYQlBrL/2H3CFc1jI2MvvMiQKBrCRabmROEl1iudWgkbR8hp/l09jLPENoZMkynks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkaRJ6x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkaRJ6x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9815C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765839773;
	bh=lFOC7kPcjL58Gy1arQs9JPY2ibN7xifRP/iNWiBjwxs=;
	h=To:Subject:From:Date:From;
	b=AkaRJ6x02UGKP9NYEqCOMhY9lUZ+ElrUGgrmNKp6iI8e0pPjQ2xmQf/NoWZsppSht
	 OMQl0n402jIpwdK66SbzjWNyA6Eis/mr2Z4Tu6DAwQ1psRDy8f0/4NzTZ/lZ9m1rBf
	 rrgcKP4GtOIppyBEHuaC6HllXO5oWtaDdV+xCzZFhyBGdfczA6aRBz7tidHv3ZSZub
	 LEEIIIwr6CqLQnqB5xpiCbg+GPGYVIL54oFOblCIX9lIRUqDe1Re9DUORfQeeJNfVx
	 /aD6qCcfCXC4qVJCBp+8bwIXjOe6fYUXPAaRLpxGd3bYAlHy1Q4oj8BbEHLchnlQdE
	 ADm45UFnDo+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9512CD5B876
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583977358.12643.7089745561446985369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3818998085294075a5f08f5f18785351fa5f94d05ac250bca72d85d43a9804
Date: Mon, 15 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765839773

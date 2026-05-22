Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1541A38F9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779426754; cv=none; b=DhNcctD+st6gerPdXDVRdZWDXQ8V+YCtgMyZBkwBQyC5LX0OCNUXfN1lYV2OOPGfzJ93jLUP47PODrAO1t4qdBuCM2egm5JdaUfX80wrgp78sDEQkelYL7gkr5Jk79zhMnx2i5qPcyKVJqHXvVmxpDQriCgVr4PXo1PaFQaG4vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779426754; c=relaxed/simple;
	bh=I3HUuD2IHu1XEyiRUA/DVHHpQL1I+mQGId1fQEWztvo=;
	h=To:Subject:From:Message-Id:Date; b=rD5I7CaYO3wq66nFd6pKOGWYMyOpg6fq+J1gjfeQXn+L7b0zIe1fqbUsYsiVS59fCbCYW8scDtvD2GV4hmxEOeP8H/lYB27CqtE6SSNwCmDiwGn80Lge6dYlOriPgIvEe0GLrm/8Jaf0Z0CxVGuqyNcPWATzbhLfhwG97lICqUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SelppUw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SelppUw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA68C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779426753;
	bh=I3HUuD2IHu1XEyiRUA/DVHHpQL1I+mQGId1fQEWztvo=;
	h=To:Subject:From:Date:From;
	b=SelppUw6Tp5dIyfy0jo+xXOyqc155ok2GLFVrbsbfxyWFXVgXZf+AqoZ9o/TQKnLj
	 oqbAvn5MwbjfjK30nknvJURfH8bDVhOiUb41BzacfUw6V3Z4tsLKzsMY/54eshylQN
	 bHxqedpTXSymo8oEUHSGLmS9pxPg7s2OiCNFe0T7tC9Tzgkgr3llvPHyf5tc4Ploz8
	 dFkocpKC9cgEtOZHjqbAg0jDWo5VSvpVJ2/K8wRd/Ee+1jcc9VcoE2UyiItMU0oV0H
	 0Ox7jlNUIm7jlsvonKdPxP2MjTZhqJKgs8MScVAFHGDgepNp/ZK8tPk9qcaba0zNX2
	 7YsdDFzzMQ+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8612CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942675368.23083.13663284556390865552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec0c1e465d3c26a6bd6a17b031258fc78fae1680466d61164543b0480e77c95
Date: Fri, 22 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779426753

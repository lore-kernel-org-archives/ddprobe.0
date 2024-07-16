Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A497198E80
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721143523; cv=none; b=SEapiBxZmhmpHgVyhSOmEXbG4B8xqsO1ztxvu1g2z/E/OhtPCkiN3U71k0gv9ClXUpuJqSX+qFh19y21XCWAx34al36JpB+JGxlZbtzFniNUrleCRGOVa8pI6IqWwBbbb27epCCp6ZTUVJOd13LoPrb27RUqcNFeu8wdcYMEU/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721143523; c=relaxed/simple;
	bh=68w00NsLHRUZjNqxWqaDAWz4qpGJ0GXCqLymqjSxvsQ=;
	h=To:Subject:From:Message-Id:Date; b=eRK26GwjoSYTW0A5yhJtOhWt1UePEHrcQPDQLId7pPj4zesvNDHyMSh4RRXUvx6InJmGLd1qHkEPYgLHSUXi93IWmmFM08IX/dgHkqK3vVYLU5fsJWI66qHOAImAzyAF2Yv5+EGkrKjrjHZyOBjIRzolZ++0warYvgM8KNcN21Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJXzr+8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJXzr+8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B01C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721143522;
	bh=68w00NsLHRUZjNqxWqaDAWz4qpGJ0GXCqLymqjSxvsQ=;
	h=To:Subject:From:Date:From;
	b=vJXzr+8RbtJn8chwQVRw7X3vss6Cfu5kLuiujYd0cSGkTnVwTDAJwhd9WYxT5SUbL
	 l3uBo5DQN+sMHIbFkgQHQdze+TpxGcE4Qx4t5RjV2W4evS0qp6WMHDh3zFBT0OI+Ot
	 brZO61d3IgHEqQgkk02Q9tDHztxD6ffvg6GeKLIEI/hvWUzzVLVtmnNjQLZPa+eeRn
	 dTokt07nIL3v0fCj3dJiSgojfd00AkuhbxONXOwm6bz4BLXVn7B4MHgrYH/mcYWoFj
	 W9rMUGDjuTwtmLQST3uGuptaZHge8Npc1n/MPi4nhsB4EOZmogFjk4KSFZkq3RPmtX
	 8MVcmBe/Vg0Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB01FC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114352278.23870.8364953713647801507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac20cf4af9e6254c460a15cfb14afb5325a7ec8a900e5c7d849734cc3317558
Date: Tue, 16 Jul 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721143522

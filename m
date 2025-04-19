Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B6014AD2D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745048394; cv=none; b=QuLM6CBBkvnBSQyh0acuMHMQpfPCAK2Fp9g5ne7lUNZwNL5ibSd2DHknIsJ2YLZATp8IME7SQfk1v8BcyKDlKhuTQBFw9W/PpiirTNFEHatXjf30jdgacyYjiiHEJGqmMf3haIUBLPWmV2ENoYs7kNDM9ZiH6gOuHbZsIeZBgzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745048394; c=relaxed/simple;
	bh=o+21FLki+6Dbydhs8cuk7yqZWcZZK/QIAzGUYNMaeL0=;
	h=To:Subject:From:Message-Id:Date; b=Exs39Fc9p/mmpm27on4qblmQueNFCACSaTBx7fJ/gQTeZeN0Xnodc9Gi2jInjZMogzxRr2Av/LdrTu+gE/LhWwuUhFFuO/WFTKQH1TpGgHkR5DF2kp6XnwM+JhQOLyut4q1Gn35RvI8/K0k5S+ys43nDxUGgGhkeP9BV8bfOIPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4rghZMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4rghZMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE097C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745048393;
	bh=o+21FLki+6Dbydhs8cuk7yqZWcZZK/QIAzGUYNMaeL0=;
	h=To:Subject:From:Date:From;
	b=b4rghZMteLbWPx5uhJIvo/6DIClpWS53bL55ESUMWputUZuaEonbFQvJJrgfPkGZI
	 wi4iTQjcaizDJtdHo0LWJisEXcvzKCLWZHGxS7RXDCRYutk8UTX/RWp8fFjIt6Y2ZU
	 Rj4WPmhSpDMLnQ7YFlR7WE5n8OgbNjN8TGXFRPQs2AImJzG+U5ac8BWPaN9gr4kKG5
	 2WaQ2xPHWdE0T3uIanGpPByiaDbh+l6QbsKSpn2R90Ow9vGmHveaU4oW18JqdK6p0W
	 SotvaNRCwcZ77ioSD4zhUfQHrmAoX6jnl0+agMWiDb1mYRdbIo5mbKo6rUhouVx87G
	 7osnO38Mft/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AF9C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504839367.23521.6139852297422538725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199cc95cb4639c26a7576b293ac45f5fa1edb9f01cd6c19c31b62fea2f8491a6
Date: Sat, 19 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745048393

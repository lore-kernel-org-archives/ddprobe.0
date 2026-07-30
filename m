Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFAA355057
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785430834; cv=none; b=AuDP4j7h3mxSmK1qThnsYAkcuJ1GX9l/U7z2vQcVT7A5HkUw6RF4urJ3aGxw+lHzRRceBslqq7xvCiiSL3cmglfPG2wwzYbljfQajpoebJ4P8MzBnXwLr6FW7cECbkvDdI4ObVP+17aN70VGPlWND29iKKPYrBsDLTzWBUXeY1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785430834; c=relaxed/simple;
	bh=cgPp9OgCKN5n9R6hybfuGJvIkrgWw2Yizd9QnJtOZEc=;
	h=To:Subject:From:Message-Id:Date; b=MOfXJFJmofQ8dkWhZdJXZ/bpDSf3Zqj4JAj3OcNgJLLDFm6lKS/ofb8QKhgY2PTcsZ4ajXjkXJj5lDBIZQ/NspT18w8kdSiBybdZtW3+27KPB1ZgT8GZvNfR551ojFnPz+4UDi69Tm/+6EUHelzTKi0QYtGwmitXUVqYWAJmAdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFcsZVZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFcsZVZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD0C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785430833;
	bh=cgPp9OgCKN5n9R6hybfuGJvIkrgWw2Yizd9QnJtOZEc=;
	h=To:Subject:From:Date:From;
	b=pFcsZVZ8NOCYPCQjX0nPBAlr8b2oiFvtOtsDPOdctdM1xBiX9Dsvvwu+N5/ZUSubt
	 OOrbx8xh1SBctFv93pkaVxNQkeW/SnZUKJiyb7qKKmPNE8odgSHmZeIzv6p4gRAgIU
	 yC8KpFk1kMao1xsm8h64SebSRLLNlqYVVLhbj3W+fgLAln7I5ABq0fTwKjIjEqZBsH
	 t9rkZ1UICfKVxcxauUuJjLqxOTNtGAvjDsTCgMZmWfVufM+fukABefFFflDXGxRYjV
	 BVa2Cd59Ap/2DUga3J6vEswNKinbRtbWuMty/vUJpd5ENjF3W9kt2FxuiI6jgd/4uJ
	 +dJ3EC5YHZxjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF14C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543083370.22402.2839721442081816437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a06c46d6c056535059c588a388041a6ded65664fef6a7e2aa8a23a5d27416f
Date: Thu, 30 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785430833

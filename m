Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BD33F384
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762963794; cv=none; b=Sc7+1BhkYkk74B/lSPzxIJSjMce5UyHXTFnq+pUUZ5OldsCP2hl48K3YODhe3ZGNEvEaEGi2Qvm8RONkMuUMMeJ5soPfzvep5+0fNWMv9JnEeMxcF8Y1/d9KNSxfIlLPk6076sPvB1MEdnQ9IVcuk86p9Ia+qlq9/vQtbDGc9zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762963794; c=relaxed/simple;
	bh=UCDXgEj3vo1x1zgeH6ySo6q1kuObIqhczKPe5RMcYEM=;
	h=To:Subject:From:Message-Id:Date; b=P/4eU9GRV2m459s8qg16S2kWfWmhBb09LnoPQOfxQi4OU+7bcuCHyRTolpuvDhEyKLpkDy9EnMrsPlRn2l52//7rfs8j0NoN+dtAI0iwMuJ7DC9TflTg/ibQsQvDyCuWZkx7+/yG1XKfTS1lRQauvFbMwr9MPg6Fb08caDK7tZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzntsT8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzntsT8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC39C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762963793;
	bh=UCDXgEj3vo1x1zgeH6ySo6q1kuObIqhczKPe5RMcYEM=;
	h=To:Subject:From:Date:From;
	b=JzntsT8vMpVeaeZNr0ky3TLFf+3kR8QsPhdLkURp+iKAD6+NtmIdw+089rglvxuZ2
	 FCmDzjHGt0m+QO0DWrDAcbYpxzlIodhoq9nQkV7LByNz3Ttof9XgZt1ZBaIP6lzDFB
	 sDRxqPCAIQUv0J4yDZEVnCqSHduhrIK8wt2qCBtwrAgOQe0AekW/BfFLl4vghrlSzZ
	 zP34XP8Ni8tgIQe0fC7xv5TDcIYBTyYMU18pTvADL+uLsAqiuf53slElIm9mF2PTCX
	 VBcuJ11ofysOUkeZLsflz6xA+KVtG4sIzLZm87431mXhwD8h64dw9h5Sxp7Ml4Qd46
	 lasIL64gq+KEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDCCD13DE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296379362.30904.13941686764963305532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c19cee39bc8563b300c84b6cdffeb02841b358e5026a95d6f4f15afdeb3356b
Date: Wed, 12 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762963793

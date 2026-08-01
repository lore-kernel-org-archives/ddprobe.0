Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BE73090E8
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785552634; cv=none; b=i0tWzxNsdha3mfGubRwXzdw6sdripcSx+H4ggndEXbGD0esQA/g8PUw+GZ29pYqSKgY+fLWBGdHI45KdezSr1B1KrtZY9HDuyjIu+zQS5bnzqDai+yqsHKlOiTOMxqWckBS+gnSge1LOrvmuLc/LWWxbU05JRV8kMT3EyPmIlv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785552634; c=relaxed/simple;
	bh=P1ITjGMgnt/JNBTXkdAwSaZ1JB6s3WjfRyXX1rAYDLw=;
	h=To:Subject:From:Message-Id:Date; b=SYXcIGsaych8xSuRUhC8RqKjgVYF3vJ3ZV1pVxlKDYDZmsltQbMkpoCUFRLupq1J9mTCkifHhwVn3UtLgOXo85arAC+BLlpd9zi0sBhhcogYCzNNnkHLrIoJeh+hlEW1tbxszRzZjGvvlyfRrzjBmg7PFj4tmiOSxFVnN9+LPjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLgHWEBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLgHWEBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785552633;
	bh=P1ITjGMgnt/JNBTXkdAwSaZ1JB6s3WjfRyXX1rAYDLw=;
	h=To:Subject:From:Date:From;
	b=gLgHWEBOwtwFMDJxBjjWeCIfNe5p5EUl3Pm8pHW+I1zQsNn6s0/KB6vmkl9H9rN5e
	 c3ePeAbXeupZNiq/HWEJExlTgAnwlqtq3b8LIltHYwZA3gcxJK/OrdrC1r9DdxGrdT
	 2BXDPe7i9KWNtVHA3EE/Q+bZRyUysqJAmdp/uNYZLVH+UuDeUQfsaip+NO822C/4AN
	 zjnTPhFKV3iD6eZK7zhRwhe/oJVawi29ET5rquTHZIILK4YNYa3yEXi8FZP3kVReRj
	 UGeKnfbynhoIPlrxqcSnYQTgjMULosmVP+oryHtSp94aagL7WZrkeDi712kbSgdgty
	 1leMat3JrSfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06CDC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555263369.20914.2226821256054585249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34dce41bb015abbdf9bda6346cf1f3c9b40863739e6480f0c359e8b35f155b8
Date: Sat, 01 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785552633

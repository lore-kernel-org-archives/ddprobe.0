Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689442206BF
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744785594; cv=none; b=ex4ztbKZRpa2q3XRPfCO4Zvz07OyysPwswEw1MMhOQSgwbW225SGByfgBrUQ0r1XpZHFSVd5FeMrE4vT/6NvxWgUfR11Q43ZDsSxI7TxA1MYauOrv4KJq9R0P9sOI3Y5AEsH2HMMT91hMNCQUk3w0uj0V77cXgjXVzczxYMLQ6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744785594; c=relaxed/simple;
	bh=2N71roIBSqcxImYJirUdU/52ZZllljk4B8sf37VciJQ=;
	h=To:Subject:From:Message-Id:Date; b=k5q/bwpUb27f0EG/piR8vj0mOepXJg+EeQOfbcIkh/KFMm+hj103uoJqJO3zkIfvdfERejP69S/2OZM9hbYGiaWnmR5v/F5K/zt/1pjEuV6zamQr/Q3mnTYXdBMifcuzuUVbDYbDADYaDSiPbdmHeQJmGnCOWLLCYYJf3oabwX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3gZ8On+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3gZ8On+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB744C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744785593;
	bh=2N71roIBSqcxImYJirUdU/52ZZllljk4B8sf37VciJQ=;
	h=To:Subject:From:Date:From;
	b=n3gZ8On+vvO6pe/nRA6igaNm7yXjBQZoKofq7IG6lOtitxXjD18E3QcdwzZjHbJOk
	 dzivIG1YJ5pZJ2DtpZnw+wr84//TVObEKOqBXDuN7HNbBwi1PsWzysFpF3OOdlLjtt
	 x5JooTwmsGJQkMEXM1v/z0epXL977DbYuaue5kqkFlVAcaep3Z59CnibdodLQcSz9I
	 yu4f31kzD/xt3iC9GQqxsxYYePyy14+SkS3wWYc1XGI6M3hLhwgwtvF8J2dxAQQZbQ
	 8Nxx2ewrJMQETcpLlsuY1ed1p6Q2pP/tqpt2yJyybDWcQ9YN8B3s/GasBjRacQdTNS
	 mgRZRkTnu6KBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94423C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478559359.29925.14386815379943279598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce88b8412b3515cf15417227604513525540a27ab04721c667376da361dd05d
Date: Wed, 16 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744785593

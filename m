Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD22E03EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774777494; cv=none; b=quTng4+U8oFmWIwvNs7z0lY0jbjaNzgGGBoD4h1GcjxkqottQu+GhWPpyEfMb7PJtHepVgoWmHQkfvX1qqHDwuyiE/byemzrcu9Ev8Xe8b/noBh8MErBzakrXf3tGoOAcW18Gt38A1Tvwe15IKOzaAuGXVghfNhXP66jfUJnmDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774777494; c=relaxed/simple;
	bh=2pfZE1jO9fA3i2zP62YcSWCkcee40oSc92/RdrNLv9I=;
	h=To:Subject:From:Message-Id:Date; b=qIPob6zhBnqD4DXPq8ONMfD0UhwCSHdHZtMEtFowvKdQby36vGxf8WuDqmqxkhLtjnJmCr3/XqEuGZAbs80cfzdN5IQIaD7We2nsxGoX0jXueNbAK8FQd/LWS3cCYBPczUgCS7w8aVWR4Vp+ucWEXxbrV8ZTr5N7AVQgGmwQjTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap0ppRTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap0ppRTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774777493;
	bh=2pfZE1jO9fA3i2zP62YcSWCkcee40oSc92/RdrNLv9I=;
	h=To:Subject:From:Date:From;
	b=Ap0ppRTMyh7v96yp7j026aWHgq5au3aXl6884vOpfNhf5nfv9cs6vuoGr80FNZpMh
	 zFrAcmEHPc7fxdzdRxTCKsDThMFzD083OGtugsumLDucYxHefoSJscuvNhn5c2Nh3T
	 MlH/xkhNeFfsdE1CxQKysp/Nz7ebC8kLnMy8+P2wiQeFZrAWY5V8AWNodzPOfzAV/v
	 icRT/m30vMh4GKvjOAWN+0D1rtrL30+0sR21QMIUBEO861vMkGKz7u1AGJNi9lATms
	 7KD0+H7wgvH/aegU/8VE3HKLdY0ILQSbgA7OggYSdJoPeU8tkBqNb6Yt7y4mbjMkZ0
	 8YYUcBKXNAA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981EDF3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477749358.32638.265123795098599579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a918aaf28fd528ff756ddc1c0f904e754acde9463baf2dac42deb89ce1bb566f
Date: Sun, 29 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774777493

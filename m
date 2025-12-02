Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D70624886E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764666174; cv=none; b=MnZMS2bw3lrxjRFSD/BqML/tvr/17Yv4ABissWqbQ+GM/NXeaUdJBId1MxkNpUtkfsCgRXqz+kYKukp9122Uc5m8+ChqToKuaGPC5qS3+ZM1aU13l1YyonJv0zkAjv3dBSlSdcEEZMIIGXHYMoAtoUDHRjtvOVSbL94WmTsFSlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764666174; c=relaxed/simple;
	bh=OqNGvy30bqHKWm+4kPK9Amvk2XAsMGOcVGseWN3KMzY=;
	h=To:Subject:From:Message-Id:Date; b=C/T2OLq80GjAjbbFhweTe8nZmJ3ThhrwvvyvB6WH33PQtTgB9eTxMza/pb0M+yzUAEl905GkD70AutPLGSpxsuEmxAhCQVsWNfauqJlSQbvfioG53QieUwlXWQu2Jn0NgpWswCcUZh0vNhmzaP1WNp5gRJHkkkULuGopxxZPeN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKZuLB7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKZuLB7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4B8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764666173;
	bh=OqNGvy30bqHKWm+4kPK9Amvk2XAsMGOcVGseWN3KMzY=;
	h=To:Subject:From:Date:From;
	b=kKZuLB7Ku1eu7F4TGcPHASIXQmd0DoKovNMaMBw1M8RxWbK0Ve9COykgboUKJo1+T
	 Vwn6W9ytq4RdJFwikgbcw/pKtn1UO9aFj9e4twlGbSkw+k8T1/iAERQI7aDxcwoXFs
	 cBB171TsGB6KupLI9NGzPm/TdUH5qqJuc+isP4gidGVY3OiuXHUXxD/06RL2bjrJFW
	 CfaIfMZaFpWg8KrK7aXphJr+H4c+Atkq07rHNkTal6baEm08MgRjhbRlRfNkC+15c7
	 SMDcRJVbGTke++XAYjiHYmc3uHWmJ9as8JlZ6VPiJ6UASXCa55F0EMAl/sfZ7asOqi
	 f7kjIbzmEPlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96809CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466617359.10468.11492342913942507465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da14efe06ddd2d80abd6ca3966c1db3e94ad4f569b58f114ceeaf4db2a4b88b
Date: Tue, 02 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764666173

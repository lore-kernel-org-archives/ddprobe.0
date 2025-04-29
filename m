Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D49274FED
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745917194; cv=none; b=Y7eplzxVbkZ7voOXYhaOkr+FhxzDSCOjEWRAL3pD2Bx14BSL1d+HBb66trRIUaeY5X4vtinJh/LM24oztx+E6wRCOZ9wma6pEzvihrF8Ox8DpD11BdTVtkpuBQJhu4X5MwZ56p8ONLghXbq8Z0V3MqH8M3UM8Ot8RM225r1y704=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745917194; c=relaxed/simple;
	bh=BZw/iuUqulwymnIcwWW9KZO9g3DHHVDwdEqEPGkglfM=;
	h=To:Subject:From:Message-Id:Date; b=JVDhCCnqEqxZUYKuBreRSzJFhkCnbynp3/TqKrhqH1/pKHHcvwiuWjr7mY+Q7Ux6n2vkrTAMVwOgKBBzyPAwHJnJjzMDvZxtQljioo9jBef+yfJQOlhvpZk9lr/5iXi0Qfbzkf6FQkLvqrkRRTStO/WvYEl+XLletwDnNGD8ReA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvNVRNim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvNVRNim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745917193;
	bh=BZw/iuUqulwymnIcwWW9KZO9g3DHHVDwdEqEPGkglfM=;
	h=To:Subject:From:Date:From;
	b=XvNVRNimCCOQuhZwk4SKwE4UByrFCWV1mnqqDQA90UnltfyqKdpJ2Zf7TwI/nmy74
	 LZ+/gg4Iu2hsgvz9ucPRWBiHBZOr57ZZdi6NRENEvxcgfcZnrWVdqyngriXKaWqYMT
	 cOQnbkkM3xWB/dynotxyT8lb1NWTQ3Pp0zJe07Eo2A/ZMzamqMTDUKCu3iX3DCx/jA
	 v8EETDPlvUcjK/ZPqRd47EAl3lfDmn90h4rR7ix/KPOeedc70UE39WzDqLl5qGyWQQ
	 ROPQe2PhJyK80XvROV5po5D6sBXJQQu5xhyB4tN8AGquYOGbBfcDeLv8tECGl2InNc
	 sXiQ/CazrQGBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1CC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591719357.25279.5856123515708469750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93cec89cb2ab0a939bb164a8c12fc7911cae6df46022978da8886efb28dc074d
Date: Tue, 29 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745917193

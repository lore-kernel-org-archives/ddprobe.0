Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D208BFA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718252903; cv=none; b=BKx9NWayqshlGjID3/hYgNUoIqIpirUlzYL8HE6pk3+wBDEhBsicsVGvfT7AOXm0WzwiIF9Q2nFXAA2GsI2Fv5NEfukYAvhxQyKvKyrkwGsndcT1j74nmELeoh2i473xPllqtAb8eAnDRkIZGkH0opwXTLxzlQw0CQeV/EMV2rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718252903; c=relaxed/simple;
	bh=JhBUmKqRJTKqpnRzXaj1Exbwh0iG1lh6gbC6rtmHaJs=;
	h=To:Subject:From:Message-Id:Date; b=LZHGnfkV0sqx1uVR6VGo3LENf7Nko8gX2AJxJWfIluT7gXy9ghQj0P94wEOxl7aVplST1dwF770XX7i87Ototz8GIfCj4oYrSVDIJCnCCMjXZ/rsQpAGSVRelDGZLBIFQnezsHTDZVIVPO/MpGOUpBhyhCQoEjd7JZS1xLFZGZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9HBIXXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9HBIXXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86B1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718252902;
	bh=JhBUmKqRJTKqpnRzXaj1Exbwh0iG1lh6gbC6rtmHaJs=;
	h=To:Subject:From:Date:From;
	b=H9HBIXXrWd8iggCrcHk9PMUkcz3YXBjTxStBKoXuckeZ4TTfLoNElwEsiXM4DIQgc
	 Qc8TT8XZqI24FetCzupNZzDpaSwST6UL8zn7Izqgc7pO1KLi7SN39WlZnC7C6NSiHf
	 HU6Y900u+d1vQWV1Y7i4po6ToU037KDjhM1DCQ9eOM7ldL3dxAWP1T3itrSsaZjkeF
	 AVqIWWVWE7F8GIUPiYLBylj7FpZf1/EuO3N/4RGhpD8F8K+h89ETiuXg6PNpeOl+0t
	 Zjhm5hm8VyUa0HXKuoHj/VJ/Cupm1lauFuR+WNHXtwMVuhYwOAV7kd6njMsNJCEDWW
	 wJme3tZ14wwMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33ACC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825290281.2001.816386906849812073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1993504e62fea41972a0c58e94be849377d44667e7f978e1bce5b3e5b7511253
Date: Thu, 13 Jun 2024 04:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718252902

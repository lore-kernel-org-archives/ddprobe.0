Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5344F1CA80
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718729963; cv=none; b=qwhu5zUMz/Wjo+oEvCJeov/ZwalQWaUC9ZigYYjD8fMgT5gG2XX19oqWS9EMtof2RODx3V9IPOSFjFAp+LbbRFq0+ntrfyu3ehGeCimNFbvT9JTT6cl2LqmlX3vJnRNUVuGC9G9ZlGhyrGakTf9xFbkbP8io3bzsGvRGnPlcM9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718729963; c=relaxed/simple;
	bh=YLK2XnOiddYizHei+52cvYNCIP8NDmdqO2Qyem+AKx0=;
	h=To:Subject:From:Message-Id:Date; b=tcnczKdI1xxWAp+NO/fHLXY2JQrB3nCH20Oczen0LUO9Z9F5ZkHbD9th+e0EXC58yEp97AOCuKFYff4i6ZHJypNgk5pxQ3XiwR+QX0MRup68xPN/5bM8Pw2Uh7O6duatKcBqI03YUm7p1OrNkVUXysR+D6f+BHh6O6RMdG2MEVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gypo1G7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gypo1G7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B8C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718729962;
	bh=YLK2XnOiddYizHei+52cvYNCIP8NDmdqO2Qyem+AKx0=;
	h=To:Subject:From:Date:From;
	b=Gypo1G7FUoohJ1Ja0ke9JI2w1NEvyJlaKmddjK8zSYbvjX5NyDg85BVODzVmfbWrF
	 5K4FLbfpki7OJc9z2aXlKh+n6qAUsEc8Mtgt5JYvjAfEisMAX9TtZQcL59UBuvCCpf
	 p8gFxnisgFWzj6XDswEIATUZmT+tfHdRyfRTnQlooU7K7FWzsxGqbmVCizSLtVA+nc
	 vlRBNown/KIxx7pFgaJAOV1l5NypZweSwEE88+23POCtkpe1CvHxSm1QkhiARd/m+H
	 WFWl1OVZQddJfQmRXh8SIOCVbd3has6S8f1y4jY26NSDCFHGwER1ZvLNy+VAdZ1ql5
	 No2719pHKQUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB421C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872996275.27182.5764747412851890883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521a8d04ef81fc4703c44ea96b115102f668aa01c876708de5c522e7a5297383
Date: Tue, 18 Jun 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718729962

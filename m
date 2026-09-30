Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6281136B907
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790755234; cv=none; b=WIepoSEwtupx081gYXFOpoi52UjtHTG3F3Pyu2wJbWnEQZzB3Vextb6Fqu7KjurJ/Z0J0SPb28HbhqOU+VXz3AQWBvQC2nNgQ45Hosfcfmt1SwBwLC7KmMNsXByEcQ3FgP5tSPNPWVPpiUzDTPDvptpoPkzvh3RH0wapx95eTN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790755234; c=relaxed/simple;
	bh=DuQeVjpnlyAKs14HEIgb/Y9SKstb/aw6pOyg2X1+2EY=;
	h=To:Subject:From:Message-Id:Date; b=tuovDYGUM0Ws9uLx77OQuZSfx+aqblq3mfZrnrzTPXR+tew86FzUf+rhozQ/BBQ6tbIrQEW+9GsnK74Zg6zi77pSlSZtXZEiT0DBLQRg7XoVBSe9m2vDH0YcR/DANiVf3eq8C/vjptzJm0Pe9t6djOfweUaLkxaTmjBUZ5/NlNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx59H5zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx59H5zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA82C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790755233;
	bh=DuQeVjpnlyAKs14HEIgb/Y9SKstb/aw6pOyg2X1+2EY=;
	h=To:Subject:From:Date:From;
	b=cx59H5zTnHo7U2Xzur8TRF4gaccg2tQKKQuhzzSB4awqLhbaz9MAf52CjK23dTrkP
	 7IwkQdOFp/N5jqOe7+spZXAcdv8fJHAJwt5My11i5861yN5cj8IVh81grbciMVK5Q2
	 6/bV9EkbSrzpl4foT+E//AJ+zWWmP0fUfFwKpRlTmxWHtkf+aIX8nSKYIGgVcYRSAj
	 Kv1NiZ1jvVhAYjcrLSGuUT84/XAhDf+aKiyQhhKmlEfTfubWZzwr+pcqYQYLBvZDds
	 ggV4BxUCrSzlaFM7Mrn+uCBHTECZvBhdSwMDnJehQmWJXXkTEsAGRGQcFzuVa7xn1m
	 3uv0tceUXSV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8DECA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075523369.7202.15225738229141704720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df520bc498c19eb452887db25f9de20d2ea84b0253c652786f9ed1777bdc8d1b
Date: Wed, 30 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790755233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F472AE74
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732025754; cv=none; b=m7r0TsDnINLmZquxJRulb1z02qc+SNT16/WVgOQc+GisUiUuPrZvRBSEY984ICz51EuMERqFGMmxS4s42gk6Ds1GKD6HBwOLj4GUd0lg/JCmc5j4laBtfORVt/SoeqL4ldmsBO80kJQqBGITUqT2Rext3df45uK4GuSn4Y8IJP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732025754; c=relaxed/simple;
	bh=Vl5/DZYNAqBrDpEp+rnbNF+UUYjoDUolDN7Wsf2fZOo=;
	h=To:Subject:From:Message-Id:Date; b=gjvT7tntWdxybNeEo1XLb0TgAYjuzhtyN1Bk/8QxFRX8TqGaJR9jg2eQUpCOYFWz0lKdsQFL+5DZn093xdpMBintGI7NzvDfKwU1LYYRT7yc7wW73mvUXd6ev+bSUiGtErv9WGsP/PtjhuGt5+vQrRNcs1WBLpr6TQojZ0bKtyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx5Duyya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx5Duyya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEFC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732025753;
	bh=Vl5/DZYNAqBrDpEp+rnbNF+UUYjoDUolDN7Wsf2fZOo=;
	h=To:Subject:From:Date:From;
	b=Mx5Duyya5SXpsKJ9SCVvjVXE+VR5IWAOXs9+gSyBogTyG83s9IjAizFMkFbAfZjio
	 9cRtWAog9HB8kESqFlf2FdNOMHvwdqIx3QV8Bx+B4+SPpnAhMyd9e5H9mHjHtgUUKt
	 xH4+35tLx+GjesaPaIrBCxrmrzVVAacpHdLUeXqmBuMl1ggZ9Qhxplf50VceAiyRf/
	 sfIAT+eHaxS0G397jG7IWHk/gw4os/IUnOBpMypV6lc+4p0hb9eY2gHhauvRpX6hVZ
	 VqRhCOe7XO5/QOYq4ko/rw647t1y2qIiat4nxWy2gbbMECrILcsiI+ROReFSV8Zm/i
	 hvHVEsBTY3wcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B63D4415E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202575358.1137.7844559229540834994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5041b12ab083d1e8125b5b260fab0e010266f1349f932f26d25570073c7d4054
Date: Tue, 19 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732025753

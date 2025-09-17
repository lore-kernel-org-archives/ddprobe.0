Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C2270EBC
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758094193; cv=none; b=gxzwbTQemMv344q5dUIxHs2BW+v8afvFprln5VQ8XX4SiiGsVyJlBbQ9UhMYMX1Oc+ueJl+3iF0MX6TKn8YlwEz1Yfm3n7/clJFwIQKccwfCniwLmPCJe+3IaQrhyF07UQRKsUlpFXT6mKKlXYIN9q/ziwj4oGo8bKw/aE5Y+oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758094193; c=relaxed/simple;
	bh=xVt/GB6ZsCWBE8VbuF73fxWvBAs+oUXXg+rpTjhF6oA=;
	h=To:Subject:From:Message-Id:Date; b=roG41owDby8b/pN+VsyoVnnnsr/Dx1yuJ1syZs0XtNv2ifAuUg9dwGm4p1Ued97njLdD7cPGje6bFPHmwOTPdc2a94E12bVDdpmffada2nik9gJXq+3/5pZFShFxCOa4T/cX6cXB9zPEMJbYJtEP/+VbOzyO8E9v/zT+kiWveLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUfqME++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUfqME++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758094193;
	bh=xVt/GB6ZsCWBE8VbuF73fxWvBAs+oUXXg+rpTjhF6oA=;
	h=To:Subject:From:Date:From;
	b=HUfqME++I2/rnbLvhlTGFy9AZrXA6fC30MXpWflfJq1caKNjPRAWJ9RWItUBBDv3w
	 /7vL4AQvCVQFbJOi31wWot0NMIAClOJllgQmBw31QkYIVfqPCpphFGGkw0+SkgvGif
	 UFy3GkfKXvQcufyCwEr/OhK6wl3VT53mYQGyxdF+t9imIhlSSIaaNMiFvt75kAYZPf
	 cTDMDC/5D94Kj0iHtWUM9EFijxwAHDx0xnbyyIl9roiHnYcc641pP9TjL21cOhLdN9
	 Resybv7AF/jtBgSZTkQ6uygo7rGG7WLC8B3Ix8XdWCAvLLuhmSDRd4ULa1PtAxas52
	 +L5E0f3po7O6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F053CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809419357.7867.6092218491830647045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc907934c9347cad9eb4b50eb8cde62d420f7f25c9cb6e0bf35b5eb31755d9a
Date: Wed, 17 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758094193

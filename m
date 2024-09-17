Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4DE17920E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726598754; cv=none; b=ImpSuALhfpbVgn3rkikO1kfQYV4DEA3L4TtXO9xcm/DRftux+hRqYkYbKPrJFASYQqF8K0ylaXr3t6QZyfKsGIF07qt8E9fNfDPf4itymDH8wmBYkG/CBUc8FDTTmIYnEbrQVFjPsOnsqH6cb72TggXvkSIj5o30keQ2MFaLhG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726598754; c=relaxed/simple;
	bh=gT96Ez2hCwsWiA6gzKs0SQMs1x4ziLfWaxzeQETlL4w=;
	h=To:Subject:From:Message-Id:Date; b=UNN7gpz9Ursn4X0dkdF4fYoUaon65qHh4PMpdoqES3wWxmfquit47ub8rIX/bnlnJt0DMEuNdcD+qddwP+kwavcT9Z5K1/5txvIbft7xccw4ET7W00RAtsqu/9VPI0gZh1wOM2ZTtbifcR5XCKxnSy7gSjY0k3EBhclgr6xmIy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAF/hSmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAF/hSmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E3C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726598753;
	bh=gT96Ez2hCwsWiA6gzKs0SQMs1x4ziLfWaxzeQETlL4w=;
	h=To:Subject:From:Date:From;
	b=cAF/hSmy7PJ7lJvRSkjeh2+NoPVfPQPm1bHD/AxlNpTdcg4S2wP5Fl4TWgg3N8wEW
	 mozr4doLzdUGOTgk3AsNkyAEAXg/apXvDYB0fwmup++p2E4h2uNseoJfWHMLRp8csR
	 ZW8vzALpejP+r3dYwE+LbJ06pulTypApOVvhwIUedztSVkdNWM9apJB7lwunUwm+U6
	 +LvbIwXwtb/dT7LZaMdo6iEH9hR468/jHH2ZH8UNQSCBivdlOf+ct19/NK6wCtEyn1
	 VzzSzsCsbd3rPigAcaa/iqjERlKcBSqHeZ956OtMxwANl9xG2cYhkmWaCTnU9a4xRi
	 OOYwkCP6xaoLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95294CAC595
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659875358.15390.17447458227729766661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d64350091137cd74b0a5d22599224a4121bec81377e9b371d233ce765cce4c6
Date: Tue, 17 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726598753

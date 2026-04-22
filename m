Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3CB139D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776816454; cv=none; b=tWRRcPB0hgVa61Pmtv6gHJr7ieNdcakCqTyZaikvvpoug3aXEO4Svczass8wZpREPtRj/qpyh8SbGmD62WAgIjihJlw0h6GkDcofTul8dPLl+6mrUX2XfS49xKZ8DLTYsQggp2WkFfOdrMJFUtVHD5Lr3F+OAeykCrbiEb89tlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776816454; c=relaxed/simple;
	bh=LhyKmQBgg/psYI5wPIEIj1pwQqMMxwZL+Rp735TQe6c=;
	h=To:Subject:From:Message-Id:Date; b=VS3xL2d9lqY/TQxjei3HFoQcGZx3klWG+WHKc1Cwsx1i61kXBXyXJ8BISjFfQp6yhG4PvqSY3H9ncywoz7f/81sqep18qfybMdlHm21r1pcvq4g4Y+9eVZnN/0lrkOJidIVObLBT7KwqhvRJG2SQc2jLO3tm1C+m+loovva7lL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfFcifgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfFcifgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776816453;
	bh=LhyKmQBgg/psYI5wPIEIj1pwQqMMxwZL+Rp735TQe6c=;
	h=To:Subject:From:Date:From;
	b=CfFcifgHdrukT9dRFxHJyxmSbbnTcX73ey6vmMakRgg3rUz3Yi4Q8J4BuZGe4gXM+
	 YJ782iMqjNMqcFpXGXaqk4z6qJfiPFMNYxFHcetNa4w9kfoRxpWaA4xu15ArCm5djF
	 RXCRJJAPm613jiL90dZN57ec19QKu9UVQmA5V9StU70WtHFZYNWHzfm9plxJ2jIFHt
	 KTdwFGy7A3W37/GGDCB6LVrWAsgyLW68HQezx7odZFQdx7ZyP0k0kLw7fALvqYBGGs
	 6U3e1DcDBjBbmpYG4JGezLF0e+GyhFnDmPaJkTZnBbmYfRyv3y6rwpj/KWVAaufSdF
	 otyAptxnXcJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8CF94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681645369.3465.14994608671601005347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c0dffba16be0e414924989b057171c21d3cfb9a2aec1e745e823713fad1315
Date: Wed, 22 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776816453

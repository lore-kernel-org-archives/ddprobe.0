Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED74A255F52
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778737834; cv=none; b=Zi1jQmkfQnjrgkKV80k2wfn0ZA7/wCk1nIIkdvi/LBjU6HTJR4UTvw60biLQcvSjTxF5zWixAC0jBZrCpxQErIhgPgz6o/chytskdKeIls/4VLY8JFH5sD3vHk6Fraof93+1D1QNYwzYI1p33CNxui/njWZUqbO4gwOSnxsQaFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778737834; c=relaxed/simple;
	bh=sJcCZsFwwFn31bHYxWaEvHysbhvVMVv532ZomdLsTXw=;
	h=To:Subject:From:Message-Id:Date; b=LzBLKWpt0oNow78RazvfEpFmj4oS6+vez/uzFxOjwli8SE/x4WBh0fhLu8y/rd954R8kL4DvnzZLBEIRDZDr8zbcEncFc9k1Sr0jPV3Rx7EqQ82utAqxUSQMSVUfytl9Ck0pCnWkIksN0VKYd2+mDb6hm9AltTi2hDqrkPPWuo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5Hk/GwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5Hk/GwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC98C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778737833;
	bh=sJcCZsFwwFn31bHYxWaEvHysbhvVMVv532ZomdLsTXw=;
	h=To:Subject:From:Date:From;
	b=U5Hk/GwKvcuVuWpdY+Ndwj4F/r4Ve3hHtgppbEdOwORXLWYuoLUhnuCci8Sg2I6Cc
	 eZkDDLJA3M7XtcoBUT4rMHIUTJ4iJtXlXvtRW7zFF95aOCvnAufDKKUrPjxMbMVWIT
	 vOFV830hBf4bQSAs/QIWmslhJaZ2dYAeSkOSrPk0CgQo1p2KnOy1U7nqCwmY64p7RU
	 cXTmWlzO30ik3IB+oQYuZoyU2lHjoBNoUTRtr3l5NeH+SS+apvsICy30qlR0IZEHG+
	 NRAyuSUHutH3UTwdiIGmT6VXVVRYpoOaSkyZh9zu8iDnuWjLYaCGgnbbwdFU6yDujs
	 i9CGc0EzDvocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3D7CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873783373.16837.16669225172206072476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaccc9c4506922b05880ce458039ca17f29a32ed407f6f2c7e24587a240b741
Date: Thu, 14 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778737833

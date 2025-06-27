Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE572E54C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751035794; cv=none; b=oaVfxfBoEdN7UtC2OmYV8ocI9lZ5z6saeGbigkfAcxedLo2nXBjkbRanNDBdHiiOWmcE/RHwv0QbFm2WtJaQ7FNf30GTbBbTmgJduzTrfEyGUCPcRZ/FJwaYEpz6fS6qN3qFsE3+X2lDF0Y2aocFspRpgnHF+wXhyzzUyss4LHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751035794; c=relaxed/simple;
	bh=HPW6E8zD7WhWrQdujTwFP0rMyFKD2q8QqCbZqPgabOY=;
	h=To:Subject:From:Message-Id:Date; b=POk46Am6/h+3+qezJzNSY2AUROlD+qmoPInS1dRVBORFg8+jAMMmf54lqwmLW+ulo0txVVWQc4CUHf8Fa4XxO1S3+9CDw5/h6SpsVebJ6/4U8VYi8PWI61F93XtYKjM2VMOjCNdY+j7aVRzmmSdymN77f1ZWPYDbDkoyY3grQWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjleblAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjleblAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A45C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751035793;
	bh=HPW6E8zD7WhWrQdujTwFP0rMyFKD2q8QqCbZqPgabOY=;
	h=To:Subject:From:Date:From;
	b=qjleblAKA0/MiqSrHIB0qNSOeFYpblRSxCrUQr4G8AeEs59q88vhYI9+q/1I8szo5
	 pLcGHs8tE9Yp7EgHwVOEsQ/1EvH0a08VwBSvauf9E+JruiTIrJQJiTBv3r8rsmi3+H
	 gi38SsKyrOn+Umm3w4M+RpeiSfj/6nxEMBrh3o4nD9WqViCwGbO3aeU1TqMBeVnzaV
	 sZErGQ3IzSK3KhwQZmANhbqYYU4kwIlhigKNDrJTr32rIBlNoGLcAMXKcJeZVIH4ip
	 m7EtUmx69hFbWtEyZdJl1AuxX1IsUSAdMh6XqHxTz4VisB9WxDjsGrIVPTztpJcxr/
	 px1bPN6YEgpCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BEC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103579359.4363.17752510390390770967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245f034c102177873abef5441e6c69c0653d8126a061510c8b4fcba28696f35f
Date: Fri, 27 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751035793

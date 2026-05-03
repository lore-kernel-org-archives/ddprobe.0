Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE4213E02A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777849654; cv=none; b=dTgW95VzGUgeFi532PPTyukZYhGLT3NWC786yMKARQe6w3vx9WSjIsjm6mTu3MLeA1Qu918Hp3A7QtWyAy2EgGXWCJcMpQK/lmeTDAtIVV8be4TxeYOakeouBspf5AuD5upHzMh711WUPdAMZjFdE/IqUvhvaRiotPcRCQsgBNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777849654; c=relaxed/simple;
	bh=BOqNS02ReD5RG1Ta8C+wyJ71+mYeRP5+R/W3WUSch9w=;
	h=To:Subject:From:Message-Id:Date; b=tG2b3CH0KSw5MTunZ5QHu4FvycG4QaBbnCOQfgYS8JMf5GCqAayprTUi3U76ncdSkzFYbReUQOVcmwVuYsldyoy3xtXpjbdvJU4tjVhD6t1HkkmRBRnbSswPJuONOz0kdMUxHUjrTQxdJULXyl1ywOKgHI4CJm/mvRuNDa0QPsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktB4qVfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktB4qVfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F9BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777849653;
	bh=BOqNS02ReD5RG1Ta8C+wyJ71+mYeRP5+R/W3WUSch9w=;
	h=To:Subject:From:Date:From;
	b=ktB4qVfE8ePu52KspN7WyMIDHq/biK6OJEEpnrLnxx/2z5b064cMIjzAfpWR71ftY
	 2Hv+wBDF+qtnLIiHHcy3Xd4hoX34KgvK3JJjiNcCnBO5tXQkTTh1oGuJjsWUZIn5Uo
	 h1yk7mDMYGYwEfb+TYi4cshzCCVJy8CEHGzDuIIgYUt681inOmrUQ2kHUU9cf/EwlA
	 AUmuEoFldhs0l3xM3voE5SGuY6UKPbTabE/Nb1ESJOVSABNFfju97wwadAVipal47j
	 yfp3hm/976Bw/SsQDnkgi2XYKfO4DIyvHcQUPr0JtoTKLLC+cM/d5NUvl136yTKQ6V
	 wAqTkoD8HU2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37CCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784965368.3165.475973169125913133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdc8dcc3557b9f1d9159167565bedac40066e2f9af1ec91b552fe4bc66c4b3d
Date: Sun, 03 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777849653

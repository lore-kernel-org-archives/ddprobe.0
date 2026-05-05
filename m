Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EFB332EC5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778022453; cv=none; b=jAXY9RgjUfEE+IhS8MZuGB8hU2f7FSBDC8jv4WzxMM21dOVqDeto/5xTIdrZTTi7WtQ8d4fRPWYCZRodsDknHzAd72IVXxkeYzVFPuhqcdUIjII9XqUlCcQ7SlAMi11WzxjEMTnl6sui3SbEv9xVUYnP7O1aXOEXVUTMGP/6C7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778022453; c=relaxed/simple;
	bh=Ys8ufATrlyZPKFX1kCQ2SF3iFYvBvVSscaA+yQu1Asg=;
	h=To:Subject:From:Message-Id:Date; b=O/pk2aIWxh91tlcxEpdPxFSaq6BMbnIocUpEZafnsNQOz463+v/dcLG21Dszh34GNBOj0MJGYnYk2rIXLrjkSDHfFo73EjkrnZBtwuAjsq6h5fFh8Ywrr2dk423vP9QysOpeVglT/9NCGVgZZyusnB9mW2OXtSX/U7WJr/7OHX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2oy+SxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2oy+SxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7982C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778022453;
	bh=Ys8ufATrlyZPKFX1kCQ2SF3iFYvBvVSscaA+yQu1Asg=;
	h=To:Subject:From:Date:From;
	b=c2oy+SxEJcGRXseOZNqf/FildZLg4X+6suK/8I45qRJ5z+LuJreYSP6w0ineQEGy2
	 q+moqt2tXoFSSE7a0EIuDqC8Mqs4z28X6TzFG1AtsRAmYenWPvHOMNnWqhpmB6zDPG
	 uiEr+2A4pcW0cJGDOTKVSyfYe8/PIhmMqp9OXjF9bRXVLnpQaZZ2BJUj9IEhyn/oR+
	 p4hSJTi0bB+Jrj4VDTLhSi7YP8yhJz4BMemWO4hTSNyADD607KIOe9eq3R6x7tpZZL
	 pdX9SBSx4szAl9Dg/Z/1k+bm+eot3uiaO2ne5XF2rAgm9h9eS49onjOwy57MCiaAS6
	 KGdJdcxC7qrWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD9CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802245368.14370.16163802534085751995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982dc6247bdfce8afbac36e7122e3bbb1bcf057ae11a867d421b7cbc5fbb08c8
Date: Tue, 05 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778022453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F80E56C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727021154; cv=none; b=OVBIP81XONFoxgJXWB0t8tqn3KhrJSVPLsEzrk/g1+bwqZNzKfRqrtos8kEBYZR47fxIWAwzeTU1U7urtmPx208xVP/CCCPO4cbB1uZRiSFblOeVU7WK0w0SpO3RoBfyfHsjxHvhVVVe3pkrCfVr7rY+yt6u098+QyGVX2xlBqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727021154; c=relaxed/simple;
	bh=mdE5iFEwnOPVAoXmf1YehH8BaOAd2sTIM5HUbCmAqAE=;
	h=To:Subject:From:Message-Id:Date; b=U+x7+4tSaQU3c4tAifJ4trwovabxozd322zhIKWKZHnyjehdreG4egn93BUGP/zal8c3uJdhYkztcCMPgZAcUSsf7KJDaqk+/g61KQ41F+2Nq+tEq8v6gAUpJKUcJCoXkd5AZj1niIEoPiYlOufvaPL5o/QcqNyd3thjB/w2hiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYp91U+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYp91U+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A92C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727021153;
	bh=mdE5iFEwnOPVAoXmf1YehH8BaOAd2sTIM5HUbCmAqAE=;
	h=To:Subject:From:Date:From;
	b=uYp91U+h6qZ+JxthycfQu5Bt7wju1snvAaZBmDZKj9MwQQMGcGhL6aGCiqhOuBAFY
	 wGtwdeBGWZ/dDej7dYM80D+a9QfiFTPXgEmrbOoAShjixbbaxgKXL2AQEsg6d1mcFs
	 pLV+pejh4pnps6Bx/YmL9xwLElryd0zq/8URN7SBLqEOLL7UR/PVOM/wiz3denUhwX
	 a6pXIXR7qCvun7DZ8EdNBK1vRW3+Q4zh3dwKu5RiwkAmOLt+NCGKh62vmVOivS/8pw
	 mzLhFhZeaTnag57EYEo4U82vcC9eEyhPFWU1KBEienvAglWVQiCcSNxewILy9BfgAU
	 GYwCLwV4+8n4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEFECF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702115361.3496.13272779141395338780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7825c734ced466dbcbeadbaadb49fff654328339f52c09aa4424cad8aa41944
Date: Sun, 22 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727021153

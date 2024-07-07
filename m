Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7023E1C3E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720322183; cv=none; b=ubMsEdUQag+1Sj4eskN7NeGVkGA4Nh3JzWIoxEC2k/wax2NB8zNi3QjEMMeURFfSraUw2IIrayM48HbcZjbQplPKQCT4aONZWALIcy3cWB1IFUlPXub00Ep+nXDyEAnV8VRVzlCPV14UtSyjNeD0SMIGagLCqijyJoztDY/Ng/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720322183; c=relaxed/simple;
	bh=Y0HA3IxZgoVfPknbEnImmR92t1wTBZjliS2NtvLSQQ4=;
	h=To:Subject:From:Message-Id:Date; b=sXsP9xYZRPLkmIil8SGdI2xhUtrBBNvG2eJ3xto5mXUOfpy4RsMN04xE+ELkfQ6B2b/FS51v5rOGaPQK5yU6q2IZn64EgzIk2j3+C7Dcoeq/TEsb86Ro2jhFXHlrZQaxo7WZT4+LoTlDoGs8Z30/A3B7hdkfEyQAV/XNDSA63SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcASazUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcASazUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0F9C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720322182;
	bh=Y0HA3IxZgoVfPknbEnImmR92t1wTBZjliS2NtvLSQQ4=;
	h=To:Subject:From:Date:From;
	b=CcASazUNOgE/9NxloZdlPBG9lA8eZl1R9Ww0IWhggzLRO75FrEpMz7hm5+RJPBMRl
	 SefD1k1GVp/TVpe+R1EHBDdu5W3qjinsmj8V5Igb9IqF1/iuiSBpv99C2e5XW31bXJ
	 ja2bgewNqKvVRCDX18OjpS5ZMngsrL/cu0TpWbatsYaIfraMUl36xg0+02Rhd6ssGm
	 brkZHBl9l30O0c1ND4ugLt8MWVi5NQoCDIAUlwITZ/gocxRfw7dFjdDVys7B+4+aTo
	 5weGyifWE6wtUjvLq2BU0FydayKF7WzLTIqFXtocCPTuXAnkbyub4nktwUwPBh5P/W
	 rmDg1TBm5gJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FEAC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032218278.29912.17483021820499010733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5178697fa0faa6833c5bb85ed17aba32044f666deef0cd34f350f31f112d9e3
Date: Sun, 07 Jul 2024 03:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720322182

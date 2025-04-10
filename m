Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C301D5CFE
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744260594; cv=none; b=Ba4jjl/XqFVuDV3GHi/BJvME/mzOwv7lfIRAms6eudEENzjJYOVPugiOWiVRkQKjFDFwEWqIn5SVAzIxCgFkgxqRmFdT+YWRYqATdgbNveczV23+a1zmlnjGpOvdtDlZr6sx7ulkn0X+BWyXEVsn7oUJFOCYDguRjt/5luDgjcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744260594; c=relaxed/simple;
	bh=/XOOgl5+OPhRrOlHIuctYxUs2ZWinqKW35uKH3Gyf1s=;
	h=To:Subject:From:Message-Id:Date; b=S3h2t419wZ95V0zCBzrtC+ICivKMAwul2LmoGr0YJajhoS/ZOdSFTMjLU5vcUd+mMY5gd+yon9SkcIsgH8RiQiLR3xo1Tpqb/iH7cYqcQlHOxvsG3W+u0rWhyTpBTa153yRJiyTWujmNZWd6etpa8aOa5DqlETOqZmg/MIPo2eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn2yyxtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn2yyxtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE329C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744260593;
	bh=/XOOgl5+OPhRrOlHIuctYxUs2ZWinqKW35uKH3Gyf1s=;
	h=To:Subject:From:Date:From;
	b=Bn2yyxtwpMOaFS74GM5/vkBOZlZXprwOtseeshlFY9M7LxF/rIB5bw92v3MCMcdAp
	 5qa3f/vDlPGLOdnfhUjeplQPJN6ZWBHkCcLooBi32PebRoflGmE2qBNkuMM1nDJ4ln
	 K2CxUGSREUXuaLlQ9lSxHz5+4NdCrJ5xZHIRIGHbO5P7KaPHkCsFds1Vfm7X7zsnHc
	 XZiyJQ31ZCWVOkKYFXFab6OX5Yef8nNPy4D5xR2S0LuF6hUCZh9Gc8sPVBr619ngEN
	 F9W1LKbXfGuhLM4tJjqhz0hFlel3sOTHLEjzHSz+SSsZELvI7Gy318YbiM9ppxOF1l
	 VYMqA2pxMpSKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B1C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426059359.16436.13647903159035630895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310495610f2234dc9a39c4995e65a4a285a60457bff7d17f5f372718a5219c3c
Date: Thu, 10 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744260593

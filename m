Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB7218FDBD
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782144994; cv=none; b=XXmrMV+jh1npIm2g9qkV7ro5JVN56prM12TGtbb4ZgK4bKyw0timOmohXsFPm0I2SkaiNLYDfksfn85qlNRk40yVDquaSKvCCLSQtK4m8wv9f7eMbZTrINjaEXWJUm+mVpeJ6TyEAdVo7lYF8p2mT0XSY03OAit2oDsN+lzONGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782144994; c=relaxed/simple;
	bh=OE90M9BDmQaAV35k5Bd89aC3n6n2lE2ePn52lGzEJ3s=;
	h=To:Subject:From:Message-Id:Date; b=LmWPrVwoU1kToQ9547QHrCVZxIyUdTspiqRbalClmrVztjIzKuZuIW3q9qgU1pGEeGraOTEJejNw+k124RBzzeSqxpVABxLp1AcEoQO4iBr+90idU1RPG3Gi77wfmN53JcDyr7mKhCIM+z/GDKNBD4tTkPjEqe9JmVMWRdTbLAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUG5hJvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUG5hJvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A8EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782144993;
	bh=OE90M9BDmQaAV35k5Bd89aC3n6n2lE2ePn52lGzEJ3s=;
	h=To:Subject:From:Date:From;
	b=PUG5hJvhS+Xx1NOW19hMgXLC5iPUGjWQgEDifQxQdseSXqpBmx6UVl6RBVSHuOz+A
	 qrRNcaTWwbTAOsmViABw89V41FcelZAi+7B795J39CenOneDvSHjQWx4HS1blkGTpi
	 PzR+EqV/5O6IghDIOPPEk6FMCBrKa/6tm0b3v/ubo89VfzUljm7TcbBhOt+Wv2C9WE
	 Rv3jXJ0YxP6eAKfpsmGchHIzivCw85rEzWchOOT62JyoTcvsVMADlyP7icAW0I8F7O
	 nmpWsYEORV09feSpTLduSThbUQTGAeRXvsEagySo3CByj5tKuPPGWUzxpX6LHNqibM
	 p07RxQsKrpWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC115CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214499369.26654.12527643853307640318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c80e580cef864286c8b45a42186279fd125658bc703469bba325f064db0b63
Date: Mon, 22 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782144993

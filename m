Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1799E288CB4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749650994; cv=none; b=PBzHWpIhoXS3jyL3Eb+Ks/kS1xFxgH4q/LDkJNKVAAC+We2ADxkeMHbqk9AXIoRYNuj5roIq3NeHi4eESAqIr+qaB7FSRb7mit9kolLyW+e02dw1OK24KRrt58c5Mnv2NJDO6nD5zpXHUmWNWM1OCLvk2JP2IcRhzUPL87zCdks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749650994; c=relaxed/simple;
	bh=eS5wHJTE6PiTH6U+tQhNLe5wTny/NCM0v7TWwt6/4qM=;
	h=To:Subject:From:Message-Id:Date; b=S2pF8hPXb/uBfBneQMX19wvhqc0/HKlQtV665fB0VZfip2S/v5+yVQZ0/eXiv5gj36OOcXWL9Jyfh8dB9lFmtdEuu17S7xrG+XNtTp5/ylCWPV/T1gbehVRRrrecgpajZ2wOFEyi3a5CFS8XYAaNSA3BfWV/6OiNkTspyFxDnhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqMEAZx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqMEAZx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6121C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749650993;
	bh=eS5wHJTE6PiTH6U+tQhNLe5wTny/NCM0v7TWwt6/4qM=;
	h=To:Subject:From:Date:From;
	b=dqMEAZx1iWkFO7vtUvMyvI9Fcss5sxeVBNQxJzz01ES1Lafr/PPqN33ZTJd/69hnL
	 C4zUXF5SPdvqekertJxWrDJQSbgbUdfTXY9S2kKRF3ai2pN/nNKEQIyJhWXt5HXZeE
	 9+0wvhWTDoWDfXi6za2DvMeD31LfKfze73KFeDj7Ls76Ku2jmsrUB16RExDQdh1wJ3
	 zJ3DsLvWPeQfvaEXHVav0LTR5VbDmNtJnl1eI2P7140rWzdzECdasmEftN+cXi8diC
	 UroebFemivs+8ThR5m+e+VgE1UqaqNFOFQT/m9AutuEQNjoCO7m30O66CCtX+u6BOH
	 AEnUcsZbgkdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965099358.3378.8313402880024704722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3c2d69f252756777796147901d91dfe2156b8bdb8e972aae43ec9e053f89bd
Date: Wed, 11 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749650993

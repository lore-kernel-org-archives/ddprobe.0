Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D794735838A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784051316; cv=none; b=cFtdxsbWVXgctU725BVkFnmyzPWSiOa+dgLnEjTYFLoKEaAkjEvXrAyWv+yN532vikXxD6FMCW4pZD+hiJW0sWwjmirEitnzfIpqkuXaCsiKQM3icM1ITduunki5oplTE3VsBp44VxxAqttZNt8PvUF60sbE/nqd98phRCIL8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784051316; c=relaxed/simple;
	bh=P8gmTxxcqKITmMZzKAS0x2TgjBmoKWnfEajqFZel9xU=;
	h=To:Subject:From:Message-Id:Date; b=nVy0enLXnpO2DVKZLNnRtbLA2x0ytium/HfdjNkJZHFzn1p2nbkHemHhVB/gW+v87AfmQcgcXUyMqR3hgC6oiXQti1AKRPEUQgEmi3S7iXCE3c61KfbgRN9YPBXnbDsRoia1ptC2LeT85qXBl+N3mRYxb1kZEHHf9z+iuv79hzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtiInekf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtiInekf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E102EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784051313;
	bh=P8gmTxxcqKITmMZzKAS0x2TgjBmoKWnfEajqFZel9xU=;
	h=To:Subject:From:Date:From;
	b=MtiInekfFlU2EwQXqSIheogNPeGNwrMdjRurb40Sfk8/cm+HYc2taGuzVvETcYrz7
	 lq5FQYc5KuM/urSs2mByEX9CCi6y+yOXt/rnG0gJzGU8Tym3pSigOMXEAqzPy0E6/T
	 v0DNYs4jQqVl0y65Yx6vKS/mO0YKeYDMTcMsVufq4ZVgwCy5hB94gIAYctbOVDIoGK
	 8mAa4oaHmiwyIGW4FwBANAVBCMXpK2fVfLPfuzaatwsfi/hMeX+f9YBANH7yQGmyJD
	 KgpZF6IuufcDbGBqVJVni3sYItbId0ESagyq2JVDKECn+E1q/HvlF1ziSjwBxvVy/H
	 /YZBQV+TkUwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA5C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405131372.29923.9303728010093071069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88062c5c6927f16035fbde4d4c71576186be4cd9523af72b1484ed0b86bbfb40
Date: Tue, 14 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784051313

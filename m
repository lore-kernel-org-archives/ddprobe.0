Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9E3823A1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707411497; cv=none; b=hfcmb2ca5Uc0UlOK166CmEa2YIFeqE9Iss6himBfDUJ+GS2BuE6LqVFHwq+Nw11F9o2AtD0pnQVFteP5bDhSaVOcEw1PbF+DiQUJHZpsHYJFoCucuGQpuBsemdDecNl7d88JoIR8UScl5Kvj8x/RqRlE4kb1tVt/KwaaTDtpkDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707411497; c=relaxed/simple;
	bh=qwy2QNelyLjeV/oAG4IjZaVp5FC6i0Y95Yc8OEFyB5w=;
	h=To:Subject:From:Message-Id:Date; b=ubMYoMWiJ+3XlxaHa+eeI2NHtY4yLu8gt1fMISN4/Tbgj94jQoDnIUTq9WIgjWdSlsxS2B03G+VmpF84k8w3jPAYyTkWc89qSplob4RDRJNZMhKniVpueDAWAyxLFAkbeQFlFeKqb1Zfne+tXfgZVH+4w0R7NNQ9Lo/IheNbcGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paHAz2jU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paHAz2jU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB63C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707411496;
	bh=qwy2QNelyLjeV/oAG4IjZaVp5FC6i0Y95Yc8OEFyB5w=;
	h=To:Subject:From:Date:From;
	b=paHAz2jU+CtQO4hlQIF0FYWgpvNmMq7XqoLpWCjNdiPDKOfOTJ0zwv8qIGsKxBLYh
	 lTeRszqS0joK6LZ0b52D7rCS4Uc+LmuZWXagrI/T0Mw0669Vp6dqXcIktZAa7zWSVU
	 bz6YYyL/Z6FFZEq9QxEjIVZE/6mv6s45LHDpaTOddgkP970MlXwtgnK8xmZ/RBTtuF
	 WaxEdXTyrBdoqIOqUuMlm75p5Z/eVRDhAZrAkReIR0VPrM2JnsQqQYdnvsIeQFbxlY
	 5B22ABCP9x81voTTlQc4bGr2qBzb5CM9ejQGMSmZ1Ow6aQ5zvNqa0YyRk1nDBlaein
	 y9HizF1n6BLBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E360C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741149643.13407.10508824325512964481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dd59198011b20da9e87ea9d44a898bb89d4f1d279676e36dce523c60473f89
Date: Thu, 08 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707411496

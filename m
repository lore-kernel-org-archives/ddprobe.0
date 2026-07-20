Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F135409276
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784567314; cv=none; b=c/CBTRYhxYHyyF3IrYV3IgVdzGhXPYFxDT3Ha/9aeDW060CnuFQrOhxgZtsTRiZJGQaszQS5xrhN+mY5f+qBYNpl7mQTcTBn+QoJPgCd7Trwnbv8pr5MIFKclQXyXIXoSN0q19wQWrsc7mf/6kydrl7aUrlTKyZxyVsucaidRe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784567314; c=relaxed/simple;
	bh=1VFGoX/mghBNJPPHrobG89pXXEzTj5iFmJNEJZeaen8=;
	h=To:Subject:From:Message-Id:Date; b=UINEcSO/0aTzrVZywhC2W2FuyU1sizgf4B8SDzY+aKHV2UOgXOxh2WBjmvWuuPEVZl0nOtbk7Kbghlih88DmY5v80J4CmKmFUZ4/fAHq57kKfRq92DBWLga1y8MQPo9EcNuBtvZYyZusIM3tWz0pE1w0Yh+QVB/2biugdGhXh/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Prxn45CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Prxn45CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE82C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784567313;
	bh=1VFGoX/mghBNJPPHrobG89pXXEzTj5iFmJNEJZeaen8=;
	h=To:Subject:From:Date:From;
	b=Prxn45CIa40a8tkPks7SBL8DiBqq3gNbWBKSmK4q7MvQMasW4T25gow0kgiYosJbh
	 Ux2dRA6uFQXMudYwt5SbHmB6I+1xoYy+H4HlyVLYD9lRHDTCkZUhNMzX3ZQx32Gnli
	 S9Hv+vo48biR69qeiqTRN15RKTglrCL+ahesKnGVYOIPkaxVYaYXmnrnF7d4Apna8Y
	 29TQN7Mn8WdChOqLReoq1u7QxFTjc34F5sMZkb8vkjYlFRKi3KnB96m/sAPSZCEB8z
	 IWL7+kMNwZKYE6sP9lNQ42uockssND9dacN2ex/UrMUgsW8HBUX8SWidwVboQAob6B
	 WK+7y7cbKBtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CEC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456731369.6025.6555853235088717525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcdde584843ac96fd6013c0c3c39f7904341897efdeb587f1ec24fc87050efe
Date: Mon, 20 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784567313

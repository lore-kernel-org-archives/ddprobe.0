Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097E030C344
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769016834; cv=none; b=ODQMaeF7YfsmkDbDPMkH/jKvIFROiyCxdl67shhZG0kQ8LMhJ/El9yVTTPMmWiP8njWaici0gdciPretAFZ2aNd10O84uyob/kCYzPTzUp7T2Kmgr0cA0O5rKiZBPxeUcNwxGve3GRqXO4WOmSHJLBve+2TB2Dw0lhv/M7CKW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769016834; c=relaxed/simple;
	bh=ylYeenSTNnnUXEudIJSybyPvILpw9oQEVgEIPk/CRwo=;
	h=To:Subject:From:Message-Id:Date; b=qmaOEzmwlpR6jtldtaiGtqK1G51wkskoi4wQBS+t8N9ds3GiuOgSkftdpkd90psats0jW2WETe1WgXQ3ffQBO4ooiq/MMywx8uAT72SJQVY3PEInbwlRFl8vOZvrZZ3zJSEe+3mfd/ipL68GMgHWZfoTnKI3epaePzU4hDfakdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da5f7XPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da5f7XPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9FAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769016833;
	bh=ylYeenSTNnnUXEudIJSybyPvILpw9oQEVgEIPk/CRwo=;
	h=To:Subject:From:Date:From;
	b=da5f7XPoJt/uRyWZ9kShCaRAhADp/qTwSp05FHkoD98NnaOBF6uW5DzcE1k/2i4pt
	 jF6HiRMflnGBI0vTh/1lNTGcMnk02KXwGbnvMVorl64/rH1krKTYamxT4kOESBSR3G
	 i93ESI19lxnvmOs+tAPMsutrzTBqwhdq8iVfgF2gxoCiM53SUmyaZNuTWiA5CFr9JW
	 kBd0wrmlZv4QBMvmvSaVJyZcSf4OspDFyjl6dOrvh+Sn3a+N8kIy4Ck/uYPEhCV0UX
	 8ZZKiOWvmmMBm4iXFdvS197QgOcPueQ+yWTzgOOkO4ImCE7AP51z1lQT6Jqdn9YWD2
	 zh//BYlq5xsEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047DC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901683358.7633.5053201179121197508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4931cb7a2ffcc4d6fc4cb5f120a110a6aea8a232986061002a7f05f61131a95f
Date: Wed, 21 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769016833

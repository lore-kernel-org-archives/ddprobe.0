Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153C19DFAB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755462594; cv=none; b=BmVihX0vlE4HaAivUNALIMpxkh3a6sGnCCEoeQrEFFSMsnaFi7X3a834NW1MRRyK7elZ18pk6mrIsz3LpfgEjiuXYpydim24yfZSrLuCqY1pmP7WRVpMuNNBVl59BTM/eVIzYNaaMO31RzyqlAhqRkGJy4uQMB5CU1Oom3spDYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755462594; c=relaxed/simple;
	bh=uw4wrXRZGt6OB7MJzPxgmCUSfIGyAONG3FJzSrM5Log=;
	h=To:Subject:From:Message-Id:Date; b=s29xi7eGrFWIbbrpHR7Gel0mNaYAC4CNRUodY4b7AEGyocVCh1zv4QhmHyCGYdhkgW9nTkgJq8KPM55BE6HoU7aExsJ+7JIhYbF3yvzUXdYxyu0GNOUHtPsqF8m0Hg49v+9e26/Tvj7GmSAja5dSIUJhuwBtJ5X//9qzCZrmilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrAeMsPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrAeMsPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB037C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755462593;
	bh=uw4wrXRZGt6OB7MJzPxgmCUSfIGyAONG3FJzSrM5Log=;
	h=To:Subject:From:Date:From;
	b=ZrAeMsPomv3XCsvwupbozgtae3dMX0MBJNHQOOtzBFjVmCdLggr4plWuTs+umfB+i
	 wybp9IlMtrcip6lxYRiWg4+M2fSoEM4eu5khJqAbJz+Q7zIriwVbzuClQFD7dOzqKC
	 lOki5dRedwKu8g7xMa1oTjgWlqzqqb4P+bThDTnHY9iXR0md5L3QGyauHft1OGGs9j
	 m3HVE3D6jswqan+m4TcP4FoUNDTxD7bgq/q2+3L46AMuyROqsS6yScZ2k0amG/5EOz
	 FWy/klyQD2xaWXkapHqrVgKu2cWdKdUyIfd7EnT/S5TH1SAChVM4cBRKmRMBTJaA/v
	 UhqmF1lYXUzdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97269CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546259358.24455.3764392353593602317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a11da285c280805579e505611cdf5b69917ec894b9bcc92ce5ba34adc22691
Date: Sun, 17 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755462593

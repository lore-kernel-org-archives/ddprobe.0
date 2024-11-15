Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383DF14F9D9
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731711354; cv=none; b=OP1zcgNQ18fzLg3EvX2Q8DtJHFYapE0Ygem7Ju2A3amttOZzD99rH6dtQ7XAjRmiqTLBdbb/lGIF8r2/kRdUdcHjp18pt/u0DhafifuwASdlT1YM5BLkKpSVMLtuvxVnyaWU7rPNkSfUx64hzeWbsQriTxao5cb5hQyOcaGzJtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731711354; c=relaxed/simple;
	bh=VoSNV6wV4IlpMVpn54/e8dMMXsGPyC7uFBzi7O1H8FQ=;
	h=To:Subject:From:Message-Id:Date; b=odzAUnTANwZidB9pPz5LIr4WLMFAoE/atCoZa/EumCNGapm+Gtc4fHprvQ0jrSJVX5OrqHn+1ZzbDc0nEEW2GgKm/ratt2WzQSQBKAknTmY0TjuSNafJRgd/Gc3iqvddsyzUdJsneGCV20VUxf9XjrBp1gpJ5p+hiowaOPruQ14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddS0xuL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddS0xuL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2569C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731711353;
	bh=VoSNV6wV4IlpMVpn54/e8dMMXsGPyC7uFBzi7O1H8FQ=;
	h=To:Subject:From:Date:From;
	b=ddS0xuL5Q67SN5Ltb3hLl/6QBJ150BbIovSk4FvbhVnn9UJo/K6kGg9eSyQiGrIdi
	 sqAA0mGTFuE8kKggc5dWvXE7aitcfyrIYdhP/k9vrXoBtEvuYZwYgIoWPjn73FxPGA
	 /BSWm/XXPIpkblhAsAVqlgvA8ZUJhOZC/+ZO9sz9VmTJo4p0idkTfDOO/Rn8ibkKSm
	 VH2ozEg4yk5Qmy+jJhMAB3XT2GoFwsiACyyGlDQiGtr06dzng5qruJQ4bG910M2Auf
	 xV35Pl1st+MlLsBpX8mVKvOpgyWKR6akO1tU+AcBj4lfmQJE7JahUAXrps5qGvzc4v
	 AkZ6oiMBGWmZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0867D68BDA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171135362.16626.9367575199442827292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010d1552b5168ae2862a94c6feeabfeb077beeca0dcf9f5543b380057e7cffa3
Date: Fri, 15 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731711353

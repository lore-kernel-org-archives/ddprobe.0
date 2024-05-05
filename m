Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F228374CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714925543; cv=none; b=l7X+3ywGspoH0OOMpmDkm7n5GWF6Ae7XgHkgka1+zdv7ogac4842/lMd1iHndQo8empuw/aYosf5UMmk8dzhDtpGqRpjh65fx0HB1kfEFu0cy9LJye69AkXiEEAKwF4sENidGWPS9vHB9bZ+5RKvXOFCZ6i+/aDvKkSw4rHHbz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714925543; c=relaxed/simple;
	bh=pUEBfcI0e+k3htTp8fhG/ARxj4NGhQQJI41m/O8WSSU=;
	h=To:Subject:From:Message-Id:Date; b=NjRpznbChiCxW777FIA+Y3J94OMAPMp7XBOsswiNn4bxf4dOl0vfwg11LQcdXK1v93KPQtOrXVk/TWRsVZVGkEOQawLSca6zHsSE1Dpp6fEFeUoOQ3UqQLJRAir2sPfymPEhvGr8LPAm69qdRGbc9f8SNjOtu6WGvxj9gQbIs6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npPz52XN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npPz52XN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1C3C4AF66
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714925542;
	bh=pUEBfcI0e+k3htTp8fhG/ARxj4NGhQQJI41m/O8WSSU=;
	h=To:Subject:From:Date:From;
	b=npPz52XNpwe/ibnpoR0o6d3dI+rFyf9kFvrsG4yOTCIDBCNmmCYdz5tkMfUHma68h
	 7QQgltCV6TMyG8Q1SYRi+JJf9UCeovcxZfcRjd0NNh9a9ig0JtdQgeOmbnn3jwe0KP
	 fif94EkBS3TCQU3epImuhanYWdkuZHD2YVyPUAm/zd1J2W0W3ZJJOxZlAo7HLL8TYb
	 q+YiRZwSoJnnVMu3MYNWLWfbFZb2RNaOoCSCkvFHzyyiml5HAca7niBzKpeboSvrwh
	 641kpgyUe8zBPoO6aQxfcBpmPp/WTBeCoaffR2OnpGRI+/eB5jzca6zWQuoyaP+soY
	 CANtj1PdvEaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C570CC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492554280.31123.6227729150194153160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73758994334fc03288918f571ac32ffd4148502ff51695e1c442ffba018a7b7f
Date: Sun, 05 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714925542

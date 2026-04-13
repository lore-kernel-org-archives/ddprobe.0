Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC942D3A69
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776081454; cv=none; b=XZZeys9TRdheOk7Xv3CazjOJ0JqT3J/a46lwz/ljMEUaVf9tf9i+dwo3fGop3EvZieF9JuTZcA4bdOsL6MGUXtGkyss/0xHEDswnfiKn7RagBFv/jKRkL9wkjVfVIv121OsKjtRdSK4jqDaeSmkNcTZPYjniwrJuTiJ6rCznqyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776081454; c=relaxed/simple;
	bh=BsguwUVG6cRHTC55aXf8YXI1znwxjqJMDfUViBgcK6s=;
	h=To:Subject:From:Message-Id:Date; b=FFTkK+B0xWHk55IfrLEqHBirtpeg26gCyv4uqG4Wiyb+nzzhTPaqiCbUcMwPsZEeytgtSk5AHCAxuvD9mPTzYGhAlijTGvMrWGyZ29cSNUWqoh3dBQpNJEdvHeduluPth4syZKyUOMeixwvzIGH6hoxtPnO4IuUtOrNdRDcrTh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwAZ2O16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwAZ2O16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8828C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776081453;
	bh=BsguwUVG6cRHTC55aXf8YXI1znwxjqJMDfUViBgcK6s=;
	h=To:Subject:From:Date:From;
	b=VwAZ2O1617tbG1Ua630oEA+iyr++StWS/tczLRnT70tRupB4XnSGKtgggUxWgN4Fr
	 KM5Je/4gRVMVvC669qjI+CwMxOcemwo/QLC5AYsu6d4Z3+DkPymZ0tk1a4tUdp3/Q4
	 9NAPNjjNxwtPJvQzCwJHAQjIesosiPq1/qtL8bm1Xv8FwlokSZUpKAGRitUqEOYNkm
	 PY4On0/IfW84pafSeMYGdvIPxQgJyAkYBY7kEzcxoOx3W/pY6LHZ+UpK4QsCuYTBXj
	 7WWTPzYiBfa6o1oyuLs3Tc1c45ubqszZIfnLaM2PyRsjyXNYXMGKW6AzaW+QkjR3JK
	 2Xd51yF8j0HTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31AF34C47
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608145368.9212.3698389973862299730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479b92e6e76eb34553f7622dca3038519a244f9d53287923a17a039c0a5fba2a
Date: Mon, 13 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776081453

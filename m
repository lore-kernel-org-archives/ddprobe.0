Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216082F12DB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765866776; cv=none; b=etRDkWRbXussnsAv9GsmzquD0O3h9vNuSnLuRLOlHAAK69Ed4AA5pdggNeUkbpkbeDCiP6uWKlb+4ts9HcS0ZuJX5bssYcd8RoVP2/mBdglhk5Jf1LZw3ugRQHC/fcS/xNkZZTt6g8Fqu3wWEvGjTOKB/Fo2NScwwKFIB3p0e40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765866776; c=relaxed/simple;
	bh=islcmttuE6cT7E8mpoXsVDUQGMil0ShnvY7VamvY7vY=;
	h=To:Subject:From:Message-Id:Date; b=ElO1XaUXIdtlOdCl68Dd+yORHBR8gVz2nzonoXZpu9fx2Iou5yiORYngFGNB1aptG12Q5/EN9FnqsnfgEbuKRIXnzT1FeO75zMo1WVtkC70XhwQMBY0ElLStO7gC77u/2qeaLe6JZwozp5Ea8yj6CdWDKS0e6MJZ7G65bi7C/vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3DZaK1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3DZaK1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6682C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765866773;
	bh=islcmttuE6cT7E8mpoXsVDUQGMil0ShnvY7VamvY7vY=;
	h=To:Subject:From:Date:From;
	b=a3DZaK1Iyvnnsru+zIOHLygI4b2rus/+bzkhDKlDE/7ldriiwxJwgvhZ4RIxSxPDh
	 c81vM0UC1p99ejBHAcyqojnO+EywpDOthxn9kvRiNQs/Y81HlgZT6r7Vheckd2mUyW
	 oY0/TJ8WG5sFdfl8NP84VFh81XWf5of+Mx2vccB6Z5zErXDpAZyQXXgHyU9ctxTlv2
	 4Lb2K4JRVz8ZWujK2msYicC/7OW3Ta2oP8Tl/m/uTnotxyUTHyZeuyQLx1UZ2scHMC
	 TxTnr9fI/kwcAL39TnL13XydIyZPBfzo2/r/j+HVAUfJGrJgiYs5rne7u7rAp/BQTm
	 cw011nZ4jrIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F65D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586677359.30675.13831312796795102024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb041a59c993846cc00b9d939a8a774b1420b419035a9b9da17b6827f37a81e
Date: Tue, 16 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765866773

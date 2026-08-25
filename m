Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD712E2EEE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787700034; cv=none; b=GIVIpuyCS8anasZDWXZBFXeQ79IAN5F2WGmjwbLNlvWBHt248TtdrdvsZx43lQahJPA5H3/Z3bnVC5wmh9flJVI4qm5rjEwwZArAeVVDHd7NufQr4m+cbQJ7WAGeig6DDPPKqWGmhlBGX+eBeKtxHb8HuFxr5sQ05z32ItnFq9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787700034; c=relaxed/simple;
	bh=bknKlcvJpYKxE5YLrLCAJ1gDUcB0JM5+qiohI6Ylaps=;
	h=To:Subject:From:Message-Id:Date; b=GSEHE00F52P+bNhG+LrTGrxoE/Oa3qphezkGAjLYljQJ9d7q3KboW9d8Dy0umzuvMxnfe3LLtm/WDEGZk/lCkOxsfqWtXB9S2NMba6QcnX2VNnpWopFL7KwljI/00KANwj1PuZODq5GaAWGS3hDYOvrFfHtRwG6kihUnoGCrzQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqZcOXAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqZcOXAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D517AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787700033;
	bh=bknKlcvJpYKxE5YLrLCAJ1gDUcB0JM5+qiohI6Ylaps=;
	h=To:Subject:From:Date:From;
	b=ZqZcOXAAn30bzNPMJmR83oFeZSHl6cdbqvusMK2Uz33wRirqVSJhBApLx3KcreftI
	 z6Fyq7IUIkEF5OypVBXbMG0AMwbucNXNMfM9nnjIEJ0dhjNr798KYpj4jvHuQL/9nC
	 j//PbgVNLNjL1FBy31Iy0ZNrgsMw6QgcQvh1v9cXkDMMZGvGNfkHJHG8HxvPkuKZui
	 R1IVm3gCJfQdujgEtK1kj6tZ9tR82BoLfhvhoTpD3vK/8U5UKdPYqyIiyHCSjpFmpI
	 Jdfnx2wlzlAu7X7o8/e7uMnQg7CKd9oU4RCeec825+Tm2Y9qPrCIxQ5e7NXg4OtzuY
	 fwbcuE28y1AqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12F7C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770003368.17096.5413703167917068007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c43f5d70eacdd99508397dbc827ca23086343c6ee1f4a345f7e297df25c53ee
Date: Tue, 25 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787700033

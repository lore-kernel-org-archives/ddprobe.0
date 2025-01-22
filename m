Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC96214205
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737561354; cv=none; b=YQW8LIh3/0824O9ADBQ7uS1ew9h8Ax06/WWuu3FSqSG61tQxlzpCq2+vQdCUWe6ddEuPl7aiiQSIKeA56Lr7IEsx0xxclPbHo9+9ilnRfN1XrmKHhq4GLTeGsOvYlyxxTBZuS5IVxAwG7hv5j9woTo1FxvjyNhS32tiM2kRZuHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737561354; c=relaxed/simple;
	bh=SG8P1PWpEGJyC2wXd2eQ1325VtEkY/nfTYgwszQ54ew=;
	h=To:Subject:From:Message-Id:Date; b=qcFfybwZDNQkMyQVlcdz5MA/3afDwUbXl3rHcocVFSyq17nLxDtbXmfvnyVBByyVbAMiieBgoFBVkNs+cVk0BJCeyCTVxJ6CptATYl1K0o01jITtE+tLDd9GQxnT/BJK7xgjWE3ofphufzmUVynigXAYIR6ZDgI5CuuNCvchYb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGgAD3U2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGgAD3U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E628C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737561353;
	bh=SG8P1PWpEGJyC2wXd2eQ1325VtEkY/nfTYgwszQ54ew=;
	h=To:Subject:From:Date:From;
	b=PGgAD3U2BEWfjgCIby9Dnr6/6o2CmcTzYABK+xDzQuntx7nXl9NOWW00C1jyhHhqI
	 NXoCWrx71dtvnYZKnspi8uGK/G4UosTXKesNcPrIm0/hHTA0vutPN4LZ589Zjmpw10
	 b4bg9sFSYCtP5qN0fqwuEvxY1vSyXWpcL9xWZHp+OPpHYubzRIqkbz4YstJ9JmeoJg
	 8deozPucMwT4i41N3FJPEZ/kS104Z51sdMYIXMOUVSKMeWqbSx/+h6aQShnccQWJqQ
	 t9M2Wx4hZatmIO5Rw13daQS/a1yE/VbqECFZhZDWPinwGCA6ElfUOxVOGeGUorm2ye
	 TvpHags7414yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FAC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756135359.22852.9760590812169058253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fc306f94ad43bc77bf59075717fddc63ea713ec9cf67fd55b915441314a8a4
Date: Wed, 22 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737561353

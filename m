Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F5B3AA196
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767800034; cv=none; b=QMBhLnKFM5sMmCN4NSQsns3DB5ccW06x4gXt4xC4ZkmmAUk9Eciv4O9mMZ7eC4qRCHszwAgIaYCboSH7DQA+DyzUzRieC45qShQKm9FNrY+BuZqh4AM3M+2UtcO/687PVwcoN2em0maxUyGFEvvXLalB68gH7Ympktj+6VaWD7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767800034; c=relaxed/simple;
	bh=r5iXIm52xoNd1ZoynaRFhpJhE+ZebDXg9yi+YtVE66Q=;
	h=To:Subject:From:Message-Id:Date; b=FVkdRVnrAji7g8aWJle80nYp5WmrZsq4rqilJtR5aT1ZVfEdo3yod8Z0bR7W6zEku2I65LkNU+IkFHcMnT+CJerVGVmiiObRC4SN+3GWWIcrwjaGNTd5vTeXF5UyULQ2tAA2MjfD3Os6VnW0xolUf5AtmlD4wjkyuf9Goh2qLBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5ULbJFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5ULbJFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95C48C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767800033;
	bh=r5iXIm52xoNd1ZoynaRFhpJhE+ZebDXg9yi+YtVE66Q=;
	h=To:Subject:From:Date:From;
	b=J5ULbJFM8qxmVjEimqH0aMh3rN/Alaj7qBBpJ14gLzM5Or/UIYNbZ430pdJgvr5bw
	 phcScqz1wqTGzo4bs4W2tDH61lfQ1u4sMWwGHuFOSVEc744PA3F8gPR692IVJxnmKy
	 /QRUo+31yYaLX1FoWLnuWGDFa0T5HKvU+xeKL2Bqpb4FRih6KrJpIAE3J4YnFuSu6W
	 TJs5HXZP+g/OVWNlJyq2qwxhwpgDzq6m4ZSv3co2hZ0tE7ii1rDEa74qxkp2ICz04M
	 8I0B+BRLf332Xa7nOZGGAteaFBlls4OvulVfPVhOg/TY4n0c/JfQisK3bxxI6xTlLV
	 4HAN6ocUdj3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A6CFD649
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780003357.4340.13313013815570259884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf4aebb48e87847161f632be4d2a5602b5210a33c7cf66d0aad05bb641d5a8f
Date: Wed, 07 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767800033

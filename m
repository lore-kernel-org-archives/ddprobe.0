Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3212417C3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754601594; cv=none; b=CKgP6DxcJbKrUwl34s/SzP7Nasl9O2yq0T8uaf3GDuAlHAsOeq5Q2NByHJeUfliDkmj+KN5URdb0+0HE3vHJkCYw7fiB4+WcC7DPGeDatB8KkacC8Q0GS6kobdfb0L89qiWq5g93jKRxT1w/iL4Lf/u5h546HgNU44WeWXOWuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754601594; c=relaxed/simple;
	bh=M1nJk2vAEZWq43PvyJ8HaHVfi1h5xPK29bdq5Zmow/M=;
	h=To:Subject:From:Message-Id:Date; b=d2wv96TERPNDeXYB1HoxT7KE+lyKM+IjzUdoINtxCV9vs//E696qTBpkp6q6IFMVUJ7T+EBxKzdYnjWXUTfbFbQ2PgDHrWjtuUL7hcZ2UtcT0pYmoklypmbqd/uPTQw/WBjFK7I8sECWk0KKyO5rWlfnQVI7HUuWk6nzS63e/yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYLNFHtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYLNFHtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9126C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754601593;
	bh=M1nJk2vAEZWq43PvyJ8HaHVfi1h5xPK29bdq5Zmow/M=;
	h=To:Subject:From:Date:From;
	b=RYLNFHtDlkwmznBEn2q1MXYJ3xqEsIxDZ2vf6c0wcau8wDomp5AykEAfQtHoPjfN5
	 Uvf+HKJq8YaNn4hXf4hqHFoJD4r/KdDoPqkbbx05g4Z8e82Ggay/EswAoFkiTG0RX4
	 boUto2BLVuyy96Gm16cpho5243ztK6dXs35JBVrZu7QL9BmlQsIDouf0jukRNl7k0q
	 BKupDlZogGXJm1z5/8o3MH5Khr1s842sWcfvopZjy/+TqIakawsUhepte5ORvdrue9
	 PwKZrGb+43GDE3tXo/4wdU+re7qQPMCpeJHQzEkI+EcL+w/f7GbQGeNBgkSLjC0WJ/
	 YBshrknMQ0L9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3BC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460159358.13636.14031781094955408160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3862585e859c86a19afbdeb30493dd6ef733ad1bd7d6bf31a25617c9a4de91e6
Date: Thu, 07 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754601593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963073A6B89
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780627474; cv=none; b=n0A9iNfaJPf8y/SBB2VLdwmD0stTFbcTSJ4uySEE9j3Jw6JV9zbwxe1+kfEhNhb+WZhBj0pnB9+fgeCyCX7eBIS6bP+Y0PCmdqCSkvf6Y3nJ3mjd2c1B8BWkhstPIvzQUJS7sjONE2ttdWUJY5wbonuVeKrJXRxGx2TfdLplMBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780627474; c=relaxed/simple;
	bh=TwL1v39svz4ugF43ooNGIDZplgPQb9d3cH9FnPHWyZQ=;
	h=To:Subject:From:Message-Id:Date; b=H+rl7qBlRsCq3f1GNc7tKlQL+eqqZkfKy4eCobeaaITtM2VtQ/qcOaZ6gNNdRwGuai/CYylTOsch8HZ3PSbKZnZNif090zfOPC1uHC0xDYo/CMjHdiwk1Z0anfWps8uAwVv12yfU1Lzsfz4h2SperDEdTIkg/CY2HdNbqoFJzLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqDOa01V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqDOa01V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E85BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780627474;
	bh=TwL1v39svz4ugF43ooNGIDZplgPQb9d3cH9FnPHWyZQ=;
	h=To:Subject:From:Date:From;
	b=SqDOa01VwnYAqZkxXLxKamSZPxv7zO69wblJRjghG5pi02gk435T5RNNq1WNk9MzQ
	 eGBMP6I2dSwc/xujx7VSlWfBfKkaESwLkby6Gs4CCjh1k18fi1Xd+EZPtDJu+uRcav
	 BD0zRv94ZOX4+Qc/TlUV+R1bMlx2tkBH1KwhqEF6/l31mrcVtg4V1UPlVJ4KkcMuwQ
	 +qcjpSy1bv2tVb+qnt8iN4i4hUH0HfuPD8G10vmNVFV2f0kg4C5ALKSsG5VtAaOpJs
	 hxg0SMDNS8+AMZB4bqQe+PAurWqaQbqsxjQe8l8UmVul1nPz6bAGThuxDJv5NaQ/bU
	 ns5uuOLYVEO2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3D5CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062747380.14969.4781958027590534543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08175b329c3f365b93f1fbb8882354f2bddec00fca33c8461fc85ba3c26d435
Date: Fri, 05 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780627473

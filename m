Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE422F60D6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755173394; cv=none; b=EVRIp44P+2DJKsbiGvfNHtatgwYNHLpD2gJZ6rtkjNp90vYwjx/fKL9bYmK0PJ0UKGyjppmGRfThUF8i6RoZFtzjbFRt3SME/lJidIYkzk2DF2/7iXMC44+1apnCNH8aIruBsmSlNQEO52/Yc8M3TMD7jHN+ulmP068JFMj18QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755173394; c=relaxed/simple;
	bh=4Q4jG6dYoOxkXTxcZQK/H8ui42OsI6LoA8MLyk+06Tk=;
	h=To:Subject:From:Message-Id:Date; b=ETBQwEW/R9xq+Zso2Yk7rfu+Fd0g/kmZ1c4b9K/dKpjEfcAw9bOrCszhgW17vdNnDeqjiGbNxSWwbFTileHk/sflymQISiAHx4v/fnaftq/TD5LIwZpVGVR9/rXAI+86Z3BmEz5Ggm5SRGRMj1jp/BXMvQzg/k2mtv8vP5bk4JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=indpgT9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="indpgT9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5FDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755173393;
	bh=4Q4jG6dYoOxkXTxcZQK/H8ui42OsI6LoA8MLyk+06Tk=;
	h=To:Subject:From:Date:From;
	b=indpgT9YfkRxdge/bSj2bEC5pyAeMzuzwEdAeQ05hEO0GNkotrbOIKe25zkek6BwP
	 QU+5O3lv1DWdfAZT6Tedl2pdyoiwMDHbjC29OUOp6B4XAGZc/H4Bk65DaeRJp5V/GL
	 RoQwMdFGh73mau4986YUCVuvZPvxvPI74BDFVJ3zLXCl63Yctkmt/yMQUuEwjbeyYh
	 1ZBiWesD/amC9t1IFs0xnmxocB7yBfk6r3GVntdpVktSHZo6p7G+J2uanjiINDzWMh
	 23X6mkSD0BUJO8m/T7Tx81BlhyAIwvHKmZvQEheMY/ley99huA34vYcduCh1Xbjo3z
	 hsdoJR5fV7G7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F8CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517339357.24701.1175423172872811952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1571682b2e9105e775ba079d2b7ad7fa471ba3490decb614340a83270031e4b
Date: Thu, 14 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755173393

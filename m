Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB302AE68
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719781463; cv=none; b=pcLEoKORqFIZAVpC7m3EZzTSzoQsLaD8HexwmtG4AAxE+47sxmH2wAH6hQ19Ibu1CsiR+xMENfDu76uO4zQ4BCUBQ0/i8nNExb3Ah4G2KMGMLxXIYKuwVTlh8GFuLvnQPrEz50E2fuCHEzP8B9eTmuULiBt1keiywKrNJPd8UJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719781463; c=relaxed/simple;
	bh=DqinLAzb9gClhXcf3J+8v1+MrSAoreK4QvzBXRduMTQ=;
	h=To:Subject:From:Message-Id:Date; b=cPEh022XMl8VA3KMX7Msf2J2GWSBXvpMa0aOIdQ3fhvhReyuhR7/uLibhXZFnc6ZhTActAzkehchWQUBZm57CCcT5Y3puUGbDWF2V2T5NpAR9zSukf0HfJDr/dMYIZBImz3IwZpSUzHNkyIy4Q6Cd20PCuxPugm3sKdWJk7DrxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiWSawuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiWSawuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D262DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719781462;
	bh=DqinLAzb9gClhXcf3J+8v1+MrSAoreK4QvzBXRduMTQ=;
	h=To:Subject:From:Date:From;
	b=UiWSawuvEl8TUTmpixN3pqqjuDL8q2zwNnDy9IWXTOvl/3AO+P53F2uA0dwd8aWD2
	 AlIFP+C1jUi/6pP0gQ3Om655Bt0zfJIVht9xg48TN7g62+LBMI7vti541CfCb16dL3
	 2RoPib1WTfQCv7p0Ii/4qkKR/dVRpSJ0ZEwXy8sgXiAX5rbp1y4qTOF+m6EAXQ7FFR
	 7s38mH7DGBnz3G2l98n2BwI+cIUh7TGgxZud6y+yWHQwEX2+pC/04JNBQ/iGzWZVg4
	 dWlQnrXI/iahrji0t55A04jc9vq4OjcxHNp5d2Fn41/1QTUXlDs+UbJ/S0NZ9vqj/H
	 pNqk8g7qvBB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4EAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978146277.30897.6087496271938719038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3651b537b887a8cc600d2604928b1f703d85d492de9af7fa81de706c6a7ccf21
Date: Sun, 30 Jun 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719781462

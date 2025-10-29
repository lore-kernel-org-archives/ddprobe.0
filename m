Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F207357A32
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761766194; cv=none; b=BArjPh4yiy0pFEIToLV/4KsZPoOihZs9vgcnDpukhHV8XEYNQ1WKJWPj178qSvI+KUqSAwebs1BbX51c+HckMOD+OGQx3UOSKqcQDl9Zjnj2N0UqIvxWfawJWL6B1Q7mX80CmpmAA2vX786sADLVd13QZkL0rztGaUKgUAEM5JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761766194; c=relaxed/simple;
	bh=SF+PcMSfQZdPsuIL3YdyuQwQxqU+NDc+dDvsywcAH6U=;
	h=To:Subject:From:Message-Id:Date; b=W1nCcUUk/xFyYdZ7H1z1xhJNgu863YCVomLwR3okbkeiFOcIYQ5w3tB5+E6oYyaZoU42KX3OBSuWorAjGQQ2ssNZah3cRaTYRbKrUnTqI39ghJUIxvKkIQSFzg0Ym8xoBETulaxGNK3uYAUP91cQZiWfx9/7inv9iOmbI6TTvDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAHvw2N5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAHvw2N5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4731C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761766193;
	bh=SF+PcMSfQZdPsuIL3YdyuQwQxqU+NDc+dDvsywcAH6U=;
	h=To:Subject:From:Date:From;
	b=DAHvw2N5jb/4mzgUqIj1xdPC+wYySf1JHzx8L1AiCU4nu9pBqsBpblZ55jTM7y1qk
	 s1hGYAm6npSMKjCrfjKGZ191f7qu1NqFc1OmxeOgmlPzqQpYB9mUnOp9HFqaPO2s7Q
	 p3ciDRS2CBtbQKrffO+fVEuGw/DDQpU8IUBiZs+TNpldJq+kRobQTiZiN7WYN93FaG
	 d4GDqlbH8ehYSNyIv4zRt6/21b+dowj57VroYQnFBTKFXqx7cLcMSRyXeuJxNql7Dw
	 lI2D0MuiQumXZ3TtBNS26TXQBX53mOWoB2M4ImO8csWVndlR0FyDvAxYLGpdh9kHSb
	 G+bAl8cNTtP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0ACCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176619358.6321.12554986038971625932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702a66e015de9fa277e93227df6f8ce62b828d2ff91dd02436d42d2434a88cb5
Date: Wed, 29 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761766193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698E62F39B5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784053114; cv=none; b=ugQLEdr+4mSh8LGrjrp4BW69GBLE0TbX1EIZnPYz6jN/AbQbjLoMA4IZGm/uthAoVHs28Z6i0k120RRQwh55c99OlR2D1hSHwrIDe6VCCfmaf8EyjsIiWXAnh4M/zM0taOV1iENTtbjBl3it5Deq6f1VFNCK7hjYoKkbS35xrig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784053114; c=relaxed/simple;
	bh=QbiHpoHkHevdn4vfcIh+GCiIo9KqQxwF+1EbWm4iWoI=;
	h=To:Subject:From:Message-Id:Date; b=EaXE+L7gl3kxx1MP36V+wklG4o0MGh4yQ/FVs9M4f/1TluY6NGB2QeANGG9YSDY9/do3EaMFP23k9v+6I+YXPsGQ8DV39puEWBmVe/G/jX3p/3OCnZBDrtxik6O6bFZsK9snJULLbaOaPJB6UQvfLhGW9EaNjNLuGdWsfOjLAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVWjHRHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVWjHRHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE6CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784053113;
	bh=QbiHpoHkHevdn4vfcIh+GCiIo9KqQxwF+1EbWm4iWoI=;
	h=To:Subject:From:Date:From;
	b=dVWjHRHGfsGSvw+rLJRpG14cPfGrijfFkKPh4WeZDSDE6H6RzCEDmBxUYqWN3401y
	 2UdMpklhbdbH36tu54UBNoPH9DgYlPkHrv4Vlb4HQ+eUVkiUbuvXeU06OE4RgxtUad
	 1axzfCIiIqOjbZ7mPctHLJz4kKdhU+YJncdCnjlXZZO9XkVA8cUwNfmApx0mJHDLi3
	 BU5Hb02NdWweO13qE2G/YCuBxW8T10lYh+8WsHc5G/0QKSzsVmSooQTRGBPQVu78pX
	 AwmepKBAgcscz+hIgfsS1AKlVrXkyNHmIN/qfLdnOc318bVukYcLx4rxGrMzJHzKBr
	 fdh+laVYe5QVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D1C4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405311369.31756.7918161275459240752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8a6482b1a8b33d801a0982f3b3e6c4ad3268d2b6efb3263cc52afed1582559
Date: Tue, 14 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784053113

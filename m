Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A6113DBAC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713892223; cv=none; b=jXdPUtsEzAvNdj+S7wvrPtiNEFZJ9JGttqBjU8Fs6mg+8GNEAdVC4C6KeOOr9f4iSJVf5kyjJfvW+2hhAukoubruS/5vafBogDgQoM7E/Id1W5jn6RKsw/EOupAfvRP+kFjU926Ylf0VYoOE7iI7CuK1RX8tztj9fU5YcpuTdOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713892223; c=relaxed/simple;
	bh=U/gtBHVLGg3oQF/i/cod8OD1HWACyc5m3KaLHM1AkxA=;
	h=To:Subject:From:Message-Id:Date; b=bBqre41kFj3bQ9hxsjEkFESr6FZ4XX50GaMjOBYIdNIm4I/SHNRRMg/M5Q0225mdc7TzzZPtRlRg5YW3LjYs8hq1M4y6ka536mp5Zs6IdY8FySQsibEEnpObFZC1nTPrnfn+mGijzSKSQ52nFfQKOTiVJYxc1o2l6QJuZ/vlSIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuZEgnFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuZEgnFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7E5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713892222;
	bh=U/gtBHVLGg3oQF/i/cod8OD1HWACyc5m3KaLHM1AkxA=;
	h=To:Subject:From:Date:From;
	b=JuZEgnFIIlllO731Qd/u4XrQh1NZl23f40Qid1IVrM/jYe1fwgCZqDRBM43mxMoVw
	 ix6xdvlg3r+BU6uauXVDtx/RqowQnYw+fwCrsERvgj1WPXx0xx750RakioEGNwdEKh
	 kNbCAHGllFWiUur6a7Qer8lKMqdVv34JO3DGRm9Q3iBWvGQjZybbR3PoplRRxMHyly
	 j3AykLFFIGeTME4Z1dErnMkBFRoAQGxH7zr/2CMeprbXDtu824EPNvHK+CKQuel/vG
	 yn0hkfxU5RjfHJmmKjGVTCZaZGIgmKGAMQh+0nsJ0xa/SueisNEikvhC2VQsz3aqyV
	 RuOQGKBM6uACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53A1C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389222279.14354.5442443415233989022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956025c20677a0fe9856bfa5ea5c0ff1020368ebd14f6c105a51696a90e3f083
Date: Tue, 23 Apr 2024 17:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713892222

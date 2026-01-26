Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F391850A4
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769392434; cv=none; b=KOrZ3HTNotiM8qBcRA7mEjz/jd+wDrg6J211Vuz6kszw4dm+qQa7DUvBQEhfcbQV4S+RXj4lvnol/uj0zM4DkWcWOkVpny3xOVj1ltQLZgEEkOkxH+Ma4UFSu9AgD31KcUG6TMO7DwunFCQf6u9wwKw2pNyuuqhLH7FkeDvLimg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769392434; c=relaxed/simple;
	bh=Yw/8/iOCs0VNRua0lM9axcGK+4INm7/psYODqvemAxk=;
	h=To:Subject:From:Message-Id:Date; b=Ws3KhknfrPF8s+sO6Sy4LtvO8TAGxwm4wTC3uFGkT2FWOTK+/El2Kofdl/t1Qs6cI5NNlV9rDfU/CfgeeBJlkVE/9CYv92lv7m0uqIV9s2R2HNNi0ZrY0zszWjiWxXfdQOeMbYpBE2AlMshhT9IrpbmW07ID8sIGh44gAVfWBr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/erko2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/erko2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769392433;
	bh=Yw/8/iOCs0VNRua0lM9axcGK+4INm7/psYODqvemAxk=;
	h=To:Subject:From:Date:From;
	b=i/erko2qpwowVz2ytIs1ut2w2DRZtnFIUGPn/1WrxFdnX4yXzCwxno/symVC4Bril
	 0W1CamVpxWo9k9LDoeqVMiXVn1YTPRgm0W4bGK7ixeLglCJT6kpdmV4DCxyADIKthO
	 uWzGe/JqSqLC6xdVli/8fRxvUD8bzbfM/GmfwAzrmi/xATVooEQi7IKhvZbs4MGkoq
	 MXnmGGmfxo0tyVOzmcWbdM/zKRWjRvJqodNvclr4t9+3JL/1X3XmCFEcI9oDav+f8A
	 BPLQCNy7N8eDowpoDDD0g95LRADIzEhan3L6ZMVhgX10J9lFbMiAyDuBx3GrK18502
	 T4p7Abf6lrXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F82C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939243360.25437.10849170520054402936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a399d06d1c1f1831f4f7e75c7f1e768d579e17aef7b026e7b55dc8db5b4fd685
Date: Mon, 26 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769392433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C311B85F5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727202954; cv=none; b=gHbVYPz2jyBxe8SHCRIOZaPwcJc65w4YOF+sf/zFGurVFtNyoQXHvyrbZAlMugsZZapDofFHBUwtEFpZKHlPpLsAGgyIGPeAQl1HdJDjmh9lmgrBQrIl7lwv9uHMDEUAEUTr8+S5Hy6PcDcoe5fru0e2bnueANb8mWAMLhO1gCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727202954; c=relaxed/simple;
	bh=K9LpBiGNoCgOWZlMjv130lfMW9mQeJaQVwL3QdFAF/M=;
	h=To:Subject:From:Message-Id:Date; b=NAEN075g9kywCsYsenCED+JKvMBtuIq20AakgCKbEmddWI3CfAWpJMEHKu9yXEX6PbTJiQs0u7yWJRdoT5t1WwqBRjdEpfs0WtqlRgMSJ9eeRtWwqWloU3fHBsmRqCZMV3kM4xixeY3wvv/1vH6Qg6LnmcpLKhBorzhtTkb/poU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9Nhf0uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9Nhf0uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F3C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727202953;
	bh=K9LpBiGNoCgOWZlMjv130lfMW9mQeJaQVwL3QdFAF/M=;
	h=To:Subject:From:Date:From;
	b=T9Nhf0uTzkz2NtwPwWjKJSRsKNbtehLT0fVAUhJQwyaA2eFRjDvG0Htk74rQ3InnG
	 G3KtbSJqHJO/k6L9B3h9fQDl9OJYfcSG2Hzjb3KithUvddaQVDTNhftouv/V/SG1Ia
	 SYIH+a/5J69l4f/vFJulC9+MiWql5fur+smEY0HZ1HTydRP0QYUftmIYrahBwgeUGe
	 iAM4/LrvXU9nwQN8h37Q6TSZTCt4yVBydooyv+04NuNHuEhNGmaPu6juAkr95NJS1e
	 2hHrzPhK4X+0qre/kxX2vKoHXGcvOSgGjLS+tPpytgSFxjz5VDDlTI92TiKd4Vt/ek
	 ey2JK0RW2hVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B953CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720295360.5184.16176286118110095915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590cad45ab15321ea643862baef56b270bdda42d2b60b6a9a4e518969b44d173
Date: Tue, 24 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727202953

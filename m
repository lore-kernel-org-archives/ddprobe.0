Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8921B7E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707514697; cv=none; b=Oyo2jOKqtR3xcNyB8tlUsEaWZbFYWg53t4t3qBwx5q56oQyjJi4AEn3frzw5glMVP/4D+Db6z0TRs37b9IGpCaPVd+ellv57qeF1Ieh6Ccb9PmAsgddc8LSATc9ORhOS4Iu/vWuvSNLG++pnIswDyDrNa7dNtvKkvKYg32WHdCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707514697; c=relaxed/simple;
	bh=BZRlLFqo8MYm2onq+0plH6wfcZhimbzihthExC05SZo=;
	h=To:Subject:From:Message-Id:Date; b=pS/vf+jZOb7o78PATBYioveEp6O+Uf3zOgeH/CpD7ioPY3W2xwGZ/WFccHAphAP2dmgwQdm7kBDG4iqpAtRJpAiocsgqBg+mnH9fLJnkIXBeRy1qRSnB1S/Awb2wB23JLypxl9VxAIV1TDvFPhUJxBcptzK0EsSy1/gTJ3824bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIkOqZq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIkOqZq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1EEC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707514696;
	bh=BZRlLFqo8MYm2onq+0plH6wfcZhimbzihthExC05SZo=;
	h=To:Subject:From:Date:From;
	b=UIkOqZq9rlk1i7K0pYRT8fN93tM6FYOL+WEXmFLq0mgkGLly3PTVvI0rAPxVvBvJg
	 rS7U59SMjXxDRmpKj5ejHGu4nMVZDXVm6uLCC5zhAHJIDhNnVHSo8+NuOc9zk9oz0E
	 t70jOvc0uEq9ucvLZcttifhXa7CTmUkjFxx1bTJ8Iw++xpeOkGGiKo73Mku1pi4uoS
	 CuldurwrwdVd1f5SIKSQr2QnG8tt1fayEEnMXGF5G+rd9U5wsAwgRga7ilPd0GI1LE
	 O1RE2KVdXwSQRiu5tDhhdyB4b8c1UXGPqgE4UQ37AJyS3PcJP/Xsy1am/b4KnveJyy
	 iVd+ogsFF8BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F168C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751469638.4023.8724630856175355647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada7358556781daf58ffbc447c7d41bd83f125683436e72f746c91627516e82d
Date: Fri, 09 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707514696

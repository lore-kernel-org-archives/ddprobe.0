Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD8299A82
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775966254; cv=none; b=LrLyYjsoVu2PJHAZsdkVTvllZFJzi2w9bpI6sZq/cMGAxT4tdnPwurQtX0uQuAc4btrmsSHdcoKizu807zZ25Gn5B5E8KpZa2IGk5N0dMtywXJQzZ23AXqvxT6sXE347+M7thVdMCaD9uTPQ5q78pP1TebUccPf1az99Tapk9nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775966254; c=relaxed/simple;
	bh=YnOUzxvbm4gmLwzaQgMbKpesXecTkaXUiYiS+UgXdnU=;
	h=To:Subject:From:Message-Id:Date; b=HuRPbRXmK938x/md/jX0Q7UOcMS/UAhNaUroJ+/5KxHw8NWuGtCgoxO3ClhDmyBUsX2GeJHDitWHKDGeHGn7kAdkxzmrgsMfi5F4Bk2M+InxtiuZEw06NYBxG792A0zqMvBHLQY7fFXMRJAUNy57ODHqPYxiDHpqfOS2QOCn2Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m810cltW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m810cltW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB15C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775966253;
	bh=YnOUzxvbm4gmLwzaQgMbKpesXecTkaXUiYiS+UgXdnU=;
	h=To:Subject:From:Date:From;
	b=m810cltW/6bPz0OP/RjeRBX7bMwwNzhIb9zqyV4o47eNa+Eqn3twQVOMbxGSgE/JC
	 tvazJ+wyvlQgYujjNr14hiq7dDc7b3xVk64X0UeSwNKSnbP7ptkAdIXTH1Gsf+FCAi
	 W8/EyUIzkK+ikUepFECnXzqMWCw+ANDpYycx9Dss2Kgjm4WYWXBHJvrypS3h4BKfvu
	 jh1k+Ifh+CSYuWoNml+cBwsswbXtKKktTcL1+X2qSbGL0w09PPmfSLNyPLgchng6S+
	 Jew9RZXErwNgurBxL3RxEouIo2sanH/biTHCldyunbJNvd30Qby9ZJq0gLLKmmh5IX
	 /ubGhimzAke3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01B1F3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596625368.19709.3056179209800756955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d5d211c572d7b82ac010c53744fc9f6ee63051e79db5dfccac42313a828e6e
Date: Sun, 12 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775966253

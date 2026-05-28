Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371C43BE653
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779966754; cv=none; b=Kkkl3wBg7DRl1jbDZx8Wud314j/moQaQoXL0sbgZdDscRMv/G2rkatmV9wKY+/lxyS73BKAT7W4pVRk00FXimyg3zLvsb5I5zcv3Q0O+OAYYa6ozpSYXNm4eT+JOkXumdCnDn2TpDOGU1n0VALHJfgSmU7TFawKd9b34LWlbdiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779966754; c=relaxed/simple;
	bh=0hXHCnaU3Fyz124cTEV7LPF6xUyo/SGCp9zbUT9dcSI=;
	h=To:Subject:From:Message-Id:Date; b=uibvhio+NyuVgJCtETHDZDRA466kqDcQwgJm2U6TYZxg1P0r8Kj27j/ZnOiDTZ5fEhqtbwaPIbghTQPJytjfseD54OL8R+91lRMCqggjwKgbIAYlcM9b4KtxO3pRzI7LzCTg9E4Roi6SrcDXLOojOUi2Ue0fMILcNRKk5vdwAkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlPlfsNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlPlfsNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B5EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779966753;
	bh=0hXHCnaU3Fyz124cTEV7LPF6xUyo/SGCp9zbUT9dcSI=;
	h=To:Subject:From:Date:From;
	b=AlPlfsNIy1hwmJ1W9U62X3+XVW72jtVuABMWqa1OAC35ctUdN3mzs/oSxd86Kcwnt
	 ZLtkfL0cxBOpSQvcLPcU9qnHhioqFziJeUimox7jIkU3z1Daty/oy5mm67c8HAEasB
	 M4btf0ylSENZkaKerB6lPT2uRB509gaIbOGeVgIPEC3wUaysrm+o7NfJxS9f+xeWOW
	 H0YqPIoDd2c9F5fCyJmH347O8El0B7Qa+4qsWqRYkJQUADzyMRcWC1FW24Tk5gRnsN
	 3bGMPp2+mOJOHVSG8LmRYWWWTFhXar50ryWwp1Unv9gLLv7luZMGiSsYXNZJl7nK/z
	 ZnSTaEu9kZmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0380CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996675371.19634.5694852656902109806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624e10b6a58bdf98825b7ea19ff455810a233b98277e2a0cc11dacb3d6ca5961
Date: Thu, 28 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779966753

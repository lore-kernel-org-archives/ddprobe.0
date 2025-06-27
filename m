Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76425DAFF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751059794; cv=none; b=NaPiGkAlBPxM/yYQrKY/Oho0QkFFPzVvZGfIT5ysYbu8mJdkLzBViqCMkiAGEhzITTdvhIOQuPz/tkKlqX0hMU2VLexLIB8Fh4FAsfKSukM7wk0hx8nd7xgksStinGf/X1oNECS16vlk40r/ALepwPJpDbl9NLf65buxicfTUH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751059794; c=relaxed/simple;
	bh=Ni4gJnjHusERnhQ+AVijf07GCMu56TYP1fO0fxQRijg=;
	h=To:Subject:From:Message-Id:Date; b=ca/HeLOeUJGgSCk2zc9fCdDKk8/1bNcVUw2wkJVnsIg/4+TxG4RH0sH/+tCWxptsd2DZM/MjngAxUDLzbW6Wt14GrE0g6V2CXA9ldtTt37kwoDD4BdOhCJuTdVimWpBLsPgO08TRY+Bu4eH0/kqZJBnmthg8oE4QbYdvrjyeWsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcFN5V92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcFN5V92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81DBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751059793;
	bh=Ni4gJnjHusERnhQ+AVijf07GCMu56TYP1fO0fxQRijg=;
	h=To:Subject:From:Date:From;
	b=HcFN5V92p2Cz60wsio485JfJCMznuAop5VLUAo4Wh99qeKwHjc6k/BPwnyzMAFfIv
	 IoVacVZdJJBS/Qbd9CosS5DucB4HJr1rcNSzgDYxohLxCuWJxLKz8YUGI73xEttpA1
	 eBqCoMo52i810bQK4Kn51yptp+l4OC6nUb0Xs+ekgwrBFrJv834pDgz2ZlVmn+nBGe
	 ghTzVCs/yGVS69j2ain0VQqWGZjkfVLWxVouEFlGOtc8KXnNbVynLYpG+IZiL2vF8N
	 ncyMs0CSVbypREuxtTMu8KpJCpmodk2PydDCkArhHravGARsVphfmnFuKV9O9EuAgD
	 4MvjkavCqigGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC9C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105979361.24533.3334679727507362563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f91a76876d90f3f910df60152b991d7f48c4bb6adbaa3d5b68f6b72222572e8
Date: Fri, 27 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751059793

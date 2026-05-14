Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E0833C532
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778780434; cv=none; b=Ycy35tEL11lR4lWeAlI6knxBTFnFuG04Pt25ztEtxNOjDGRRSD5DklR8v/KI2SY7kcDjvnMYDSeURZMMvGeTq3KCWjK1AuaOwTKb7sHIoLsEfLpTmRcd7msQ0tUpyfzlmtvCfIeKyN/1AqI/Skoyv6d8nnXeWk8veOLd9ASslqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778780434; c=relaxed/simple;
	bh=OGJvXJaWnT5vd5bG5ZEe6N5qyDH/f0VamclnG2oYr08=;
	h=To:Subject:From:Message-Id:Date; b=KhhgrnyotwlWdhYKFbFnB35KbBqgN90M3EeeYdYqrDjlbREpfXlHfWZ9OXs3y7pAQrVU7HvSgDnRWyITfO/4sXVUl6Vh8QWShMoVmUuwO4LfN7fszgLtyUQOk3CxllmbZFHUUFWulqEv9ytNbLv9zFI3nsyxK0H8xPv1EgOIToo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBmfWpkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBmfWpkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC003C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778780433;
	bh=OGJvXJaWnT5vd5bG5ZEe6N5qyDH/f0VamclnG2oYr08=;
	h=To:Subject:From:Date:From;
	b=BBmfWpkgSjKVREpL9THJcA2r18y7repxmWerHWwVnvjOwp1wKWkkpiqZGpHzWIYL1
	 4liyfn0PI4KOib2LefkCvsl/jqRmSjT9LH/TDtN63r9Ii5OYDlOJYYg0FoS5edCMjv
	 SomI9uFbjboNq6jvtwZHV2E+cU85k68XSKmheuzTKIEVKqWT/rrzg2/QIzF7bh6fXs
	 JnwZa/wlILbREcylIctVaB2WRDqYzBTVi1eWOZ5Kj2QkIoWOJx/NkopB3V2Roi8b65
	 Ry21IQsIqD9qjvmUPsry+o8WovegZNoEaWzPXE5Q1ujZ2JQzAiZD94p4jIL5EuSkVr
	 U4tgyGDLou+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C1CD4F3C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878043369.18731.15025963332140119288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141d53961528716a57b3bb0f3f6bbf2437aa7eacd91a2f1fdcc25e6d0a91d829
Date: Thu, 14 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778780433

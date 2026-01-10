Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DDF248867
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022034; cv=none; b=uwTGG18VY/JYGFjENnwqI1uG6Ms/KN1rHqNit7rLFPHt+K2SAtoBqlBgWIezvkftYr81EbSTLKxSYE7hTYUXNKM1RGRaNHOITbJbaWYfXjuhXUUtIjtS5yTgMNjlLwiT4c//wwa/2qIjKfnYfo3uZV86CXKQ6wMho1yOpjgMmyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022034; c=relaxed/simple;
	bh=3qSkKvWnTMHGlSvHCTGU6ldms5DHzjkFLs/g0jgue+8=;
	h=To:Subject:From:Message-Id:Date; b=BjTMMutjyEbbYzkaGyakEIrVUYzukki8xPOHdY41178f+4ZgH7zRxKqLcL6ZaE/8QKhGW+tCQkGrCzky9qKOTTqVCbscK/HLSDt8mXKrvk2OPydgBEM6JL50jodfPloRqWHdkProlMEmc8pUEUa7uUjNQFN5gjQ8Spul+IlCVmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAWR/XH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAWR/XH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E8BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768022033;
	bh=3qSkKvWnTMHGlSvHCTGU6ldms5DHzjkFLs/g0jgue+8=;
	h=To:Subject:From:Date:From;
	b=SAWR/XH19kwqob/9ak4575fjQygiVmOk3fMOTT2ZEDlRhYm7vCuclrscv3gFIEt88
	 xuwNkWbgJH5Hi1Djy5CRQrpNOBo9wdVooGuQEwg/b79W84PgDSdwZ3QHDZ1svVPUS1
	 80zCj9DSBtPcgh6g04zDD8QD8+dzYbBDjSFwVhbZXrMfzO+XlDx2NndDGykPRL/1JA
	 P18AzXu1B7+zjWwITyP90j/9dapmZiTsUl4I+IskbUmWLuNd+yY8jBUCdINxzT66Rg
	 +JyFCyFbg/GPTALsofHSTUFt2qtg40mgDBtYCgHOh+xbjxWWXYt3e3+Glw0FoCS68q
	 JLgvT2w/RK9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C32D277CE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802203359.27603.5019277568401792912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aff6a7c8ee053687d7fbae60123a7b50af8278db6727966807891f88be5da82
Date: Sat, 10 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768022033

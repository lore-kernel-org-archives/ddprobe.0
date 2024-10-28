Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC580B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730088354; cv=none; b=LKOPDnWI/1tUiHAT76xi0MOpERLN1GAZTDM41sN4YZYYYDLn66JRvff2+yB9YY08ZDTZASy+dX8j3dEvAR/fNesS2Q1bo7x0qYjhym2ZJXGv7S8gFmDaCbykJQ7y/T6p/MZqQmp5p82H0LQBERImVyLRGaDed+Zs7EWvNRhrtzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730088354; c=relaxed/simple;
	bh=+Ap9Nn/aiH7tBSJA6BxhRRdf5cOGtfkwiptnPy8MeNE=;
	h=To:Subject:From:Message-Id:Date; b=WYj8ywV+D561Llwmx4P26eMkijMEx6GeuGG2gYq+HSNRJ7MWn0KEYJoRlTQOTI02tnCPBCrkChS9GxJ8IezPW+wW9QCW7yXgI2ZiZv89mPJJw8kXXu/YVm85qWaWARc1/ma71GH2BQ6SyFD9gBcDC/bgx6Ta/GNo3qCEF85IoWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXCg/fKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXCg/fKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC9C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730088353;
	bh=+Ap9Nn/aiH7tBSJA6BxhRRdf5cOGtfkwiptnPy8MeNE=;
	h=To:Subject:From:Date:From;
	b=nXCg/fKkrcrrEqjukL8ccHk5Tg+V/SFcdU42EOLmLBeMJrmAdVYXtBfrfO+D94ZiN
	 +tvA8Ma3INb4R+3wSjorlttT6+Hv3ngVAl/1iXOmnZYrI85U7Mc6VRGZlK94k8aPFY
	 ScvGI88B4oj1h4LfdjmRhjvITnjW1sLVBte/nG9EOrp8lsMtkjdV55jFF3qQ9qS1xV
	 htTmQwlbNl38hFc5kr10hK4meiYyHqQIodmimSBAAzUkNI5/rS1kuD+cFt01ZZbUEM
	 6u5fkixxmtLer8mheIXxqbV6uzH/gluAGqrh6InZUlOmkDrwrAAJKfAjqBxobESG7J
	 JGTai9uC5lgoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97910D13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008835361.13920.4720333535593516332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f66f71157d856b545f6238fe61a605a48d7444c41f3e227759aada30967877
Date: Mon, 28 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730088353

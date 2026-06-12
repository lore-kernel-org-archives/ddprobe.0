Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1893644C9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781261794; cv=none; b=eAzYlTMrSVCgg4DXxaBbGKF8C3z4fpwEZidBZWjGQFsuNem1BQYJeVYHTYxlABcfL/xBdzA+jPlA0QHy/FGtHAL0t26O3m27B+fnWLvRxvqn/jO0xmJQ83lDw+3QyWqthoAaWRzPcm7fj69F7iaH6PKjh8eTgczJn+RoYXo9rFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781261794; c=relaxed/simple;
	bh=U0SH5xOB/YTGWU9jOhlttLMHJ1krwG6tVJUcJ5rEFcA=;
	h=To:Subject:From:Message-Id:Date; b=nJahcJ0K9X9HhMI9eFfIaKymsBKpjH18gSxL0DXNrsw0PzBGZrCuR0F6UzmVh6E6OmevZqa0e4AHav/Ovt0ON/7XSxou7FOdhzWpszYy7oXgXWGQOtXeZuDPFsxWbJc/78cbQsVpn1dVwR7UgprUQLB5qenh5Q+lpFZDz+7Fxdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jyz+m6UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jyz+m6UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C835BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781261793;
	bh=U0SH5xOB/YTGWU9jOhlttLMHJ1krwG6tVJUcJ5rEFcA=;
	h=To:Subject:From:Date:From;
	b=Jyz+m6UMlNRVjOG6pPfnSz3fG6J9Q9SUD3yumcVOmWnB4ju6zJFn+fPUH+fmZ+2t4
	 SyiX1CoLWHLeQqs8jf3KSr8zBJahfORCeDelD/lgxT6eNGgGDBOBB6oQxNVIHS3h5D
	 pLaQJqi6OqwatEhMWjy3oFFpLUVzKpFCL6RVHs3eIvyEQADkov4/a+OZyQ+etDUQkd
	 PkTmKs0gR/mvVi7fTgwaNvlj5rIwyL9ALCIDB+Ccq4nUK+jpgqQ9IDd8uq62poXgKs
	 yJJsYfy5F5hEF5QEGzAASyYis2ntgOfgoWb6L8Qagtgd66b87FTOhVhC4r5naFh2+U
	 X6Oj7KdYlHDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9221CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126179368.32245.12170762451685112763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cecccecd00506e2eb2a326c3707a6a21a1d6f30bc635dc3eca542e0059886d
Date: Fri, 12 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781261793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A03A1E77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766740434; cv=none; b=BkdXwVZxKyo+Zh1xHe0n94d+2ErvxBW/ZiF6NqievWnmkgzHuZAey7pUy/y8dgLjArUXRR/mDKIzbn0USZnmOKW+RRhhpTNmp4ShYe0N34Tl3oJil/m9GBY0FeNo3zJdNH/HOj8hisnoW27gMMQPUBrwgryV3gitUXaZ5inRLv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766740434; c=relaxed/simple;
	bh=Qum5L6StEli2cFb+NKI4yo16BN58UgwKM//i/jelFOI=;
	h=To:Subject:From:Message-Id:Date; b=g8gE1EfPaaNE7owl2kCoE+HWZRUL/fJrUundTEz4ul2MBbIqZAMi0uGtWmMzMTt6XJ6DFwt9yp1zjBjZJ6kGHoV8QnY9ucAhSH9vZJ6cvDYM0/C8A1nQnRc19RJsLl4khT3IpQsIB6MZZNmtBbT1s5yuLXvl4h9e82lt2fMhbtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M99/5PAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M99/5PAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A599AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766740433;
	bh=Qum5L6StEli2cFb+NKI4yo16BN58UgwKM//i/jelFOI=;
	h=To:Subject:From:Date:From;
	b=M99/5PAMMLOQj6FL6QUkUjjAHBlEEihtwVpQl89oY3Q2lm3QJ+bF+68iHFOSClbgP
	 R6gs4FfGhKvnqQeiwRzeZP1ZKQ5d02j80DHqfBPsH9bpdPO5z/mJcZHzagJ0ZXbrRJ
	 HGqI3K8MySbLO0CXvvQH5WU47acWsc9S9Ev5009WdiQataMgvr++KmqeePqHrPBXsk
	 /5TYA8BW0m5p6vCy7zbLWe9M7VlKrpPXgr9+5hWOVIkNTJ8sOhAHUtk5Du1Z3qrUhx
	 0Jk3x3AoYJd8gFItTx7fOaa49i185dHEkqpayYcQL3kAOBMZAnMkSup6K0PU+JIwFy
	 jopL18nEZVESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169CE8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674043358.16958.18232013700860739632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202f00527f32e769f50df9a393beca0999c7d02f4be1a4ad292943e5f294827f
Date: Fri, 26 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766740433

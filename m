Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28212224AEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771157694; cv=none; b=INvmwEeiqhVJmuoLGun29/mJaxJsevExm85FOrx2fkm9rIUegU4DmlRzWBO8jcM4M9xzvUlyjJiYROVXEr+csKuP5/BqW76VD5Tc2cAr2fFxg53fq+uraQfpiZGDcY6NlBv4yu93e8Mz8OMUFuMoiUZSwuUAqF2s3+LP/b008IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771157694; c=relaxed/simple;
	bh=cM19dLzBVT803C+/TMJSg8bXVH1dUUneu3ozexwK7YI=;
	h=To:Subject:From:Message-Id:Date; b=hOrsbgRN3r6ZHRjY1UjMMu91Bq7pXi0xcuoWNJi9vuh/WHG/iLdeBODqbPzKOwcrf141gpiaRaSDk/QHm5soUU8t9lKt/leeBSQoG5Gc4JXhyBOHYG6lit/2hWnv8nW8/ybBLIijIRvaxFIQ2ntkLc5R6+SMT1oQN5NfQfHE9a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYyVw1RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYyVw1RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A73C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771157693;
	bh=cM19dLzBVT803C+/TMJSg8bXVH1dUUneu3ozexwK7YI=;
	h=To:Subject:From:Date:From;
	b=JYyVw1RIX1KIXZomqslHbenyPneBZj1S5kJNrII9C2smb9FAsGE4LzLV3zWH5+/j+
	 mTbBoiVdyYFyL4j/lxiKVIHkjqjH3YnAsmWjydnbRwqNFSaPtaktLFJiZWak8cg4P9
	 x4mOOosSJTCUEYhMrTO7EcaYWjVcm5b90HzdBN3CQP/sac0afR+2MI/yX/pibHuk1U
	 pduz8OHwI9FYSE7yxc4tV4/yAetDfIbJcQCxAyw9vscPxCElJmxuc/1NYSmHlHsLcl
	 yr8IwUr4+PVQ1dEZZVVC4Z1VOgvj3Ykr9isC7/p7KHEFUy7F8bAd5dD/9TKCBNh/ef
	 ZonzaTY67O8lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E75CEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115769362.11497.16002248216905008776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30bbeff8a0bb27dbb0440353de82a59e2821dbbb89a32166aae2481bfc1e20a
Date: Sun, 15 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771157693

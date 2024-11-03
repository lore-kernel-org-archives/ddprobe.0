Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2A37083A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730631354; cv=none; b=p0Dj/niNPNXqazP4G5pSw9oN+zCBzOnYtBKoSQ8YDEQATZl3Fs4oLZD0HSPy5PGAv3jBJG3/yhLcfJxxSb3Bd7aKrcd3Cg//tRG2/NrvvHKkgE75p18Bwvr3F/jZtWA/skjZZOvu4+fC1fgFGWHJkbK9TW1VcP7a6U24am7Cc/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730631354; c=relaxed/simple;
	bh=V1P+PpQfpgyNGWvN90cHIV5xlIsQMTsmSmkxd1TVTlM=;
	h=To:Subject:From:Message-Id:Date; b=dfaLBJgcEZC3sEOssjUJGbu9JJ2F5kwtyEaNuFS8nHok61EaCCGmYpz0mlB+OZpy2hIKTVn67kI2bKOuVP033NCu4/4vWl8rU06GVjVH+WNw8G7I0qsNm41uTm2GPuXcwOvpVj5Ny2JbIB6OdOQWDCfHj1vNZtous5po+TG83H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzDDkidF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzDDkidF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0369C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730631353;
	bh=V1P+PpQfpgyNGWvN90cHIV5xlIsQMTsmSmkxd1TVTlM=;
	h=To:Subject:From:Date:From;
	b=RzDDkidFG1uideOVFjW8++lPazu4tdeCh/JT99JRq9lxvp1Tp9BzDlrDdY5Yqf/Y+
	 HuP4AB4g4lZE+H1pja/6UjsTXZeLeLrnlvSZXIom7aKqTQfGN3jLuzSRQLBg8Pjvg3
	 aUlreFVa3loKBrmvNKiWxB0lXiEisd/SZ62VCkbOTsu4V5sVtNb8Xg68kDZ708tZHA
	 n28bbjMhLiMjzYqLqA65879QAIfRLXd6Lo98tjVNl1SaF7Ij7ww5NvPEBX8c5cUHPb
	 peXtukyUurCQ7milstk45qomvR68cv9uzvn7+9kY4U0JyDYGnCpIVm3dUkOCw6SwjF
	 +mp8Bk7g2R8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9982DE6B27E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173063135359.22027.6954775064803021375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a2b4b2ade067533917a21ff79c9cc597d78bdda3cb56f856dbf7439a1a0ced
Date: Sun, 03 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730631353

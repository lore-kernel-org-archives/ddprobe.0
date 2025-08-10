Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9E12D6636
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754864994; cv=none; b=Ra0T44Nan6x/0rDS/emXSHXUXtaUyfqXEm/I62DKqEXAlrunyDLA2BnnZQtKUtjM+NJ2HRu1PJIEUuRAWblDM/5lHqMGncre0OxWx1gg2WTp4pNqKGAioZqIecZKpxQS1H854xeRjfhBd3FBOcP0pGlaIG+4/tsGdH1euNt0944=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754864994; c=relaxed/simple;
	bh=SDSwiL38O9UCs/p/p3kp25SBTiX6MHQiGwoeXjJam1o=;
	h=To:Subject:From:Message-Id:Date; b=R0X6JwKK5jaeJD0dwHz97h48Yzx2b6M6RGLhd3uZMa/xPGpnZccd07ZaHN2UPM9cG8w3MhpREgDJPQnQ5etUKHi5W0SJeOFkYMuExMuf0tkN4uAa/UFiv7SeXtUvqCYlxUuno5FVezHIJKbhgL4PL0kgggFNvfBZOat/fei/yBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHf/jo/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHf/jo/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754864993;
	bh=SDSwiL38O9UCs/p/p3kp25SBTiX6MHQiGwoeXjJam1o=;
	h=To:Subject:From:Date:From;
	b=nHf/jo/DLswA+PbxYRjT+6pta1W+FYvb+lL2rdRqQeTzY61rH4A40YYkalsXD7SNg
	 6n+h5YWV/LqQCwo9Y2ktwl539I8MUUvNDuY7rrWzu8ifKvAIDDsa32ppEA+qQiueeO
	 IsUH6UJTY8ozudQzoy4pdf7zSVi0CWJ5GyjTo260myfqjh894BCsg3ZSo3+aTwwrFV
	 RQt2NtCMBk3I3wO8gpwcyPFzPj2uOlNg8Mca+yYklaVWKvFZk2JauBgFPIwq4b5Yi2
	 YCBJqYB/zYEnADsItiHD/L2XPa7bJ70UN9TcE1J8Md7+fjm8CQRBsq39WY3bhfeOyt
	 lyN4nyDb1Kszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486499357.15287.9003446080091606149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbdd9414491e5a9bf86d7f881681350ba2071364a2b82560b47dbee37fe5825
Date: Sun, 10 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754864993

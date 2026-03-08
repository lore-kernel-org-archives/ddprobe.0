Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1949525D53B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772981094; cv=none; b=MlH/hh0Ga7uJoNUEC6YOtRw0YOGYLRspKSrVkjSY1RPeljY3ghfiYTaO0FxuTiPih/UT2H2rJ6IzVMvGibOa6T7P+7kFRpfubGIEtD3W4Gnqcebm6ypMJ3ebPZmjYUGg5kqRhJn2F4oGdZVW32U5F2/HvuwnZoenYE/oXgkPgXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772981094; c=relaxed/simple;
	bh=4AWbjm5RUdFMeErUewD0Xq8uxHcbpCWmu7PGdFjRhpY=;
	h=To:Subject:From:Message-Id:Date; b=Q3k+NUdbssW4/UbPvqsxEOhWZnwBlnx5oK3gAijRPGRSiyCCPhbxGVOjlRr2j1P2aCgWjaEFvQDw58HQ7fQ3Wb+00P7ACuzl6mdd+IakeyKeHDnpr7gHpHwEgPsEymVEF8Px8ZkjldnKfbgNGNum1hdrt73BwTiCnJJhjT3+cvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/1hCt57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/1hCt57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41B1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772981093;
	bh=4AWbjm5RUdFMeErUewD0Xq8uxHcbpCWmu7PGdFjRhpY=;
	h=To:Subject:From:Date:From;
	b=o/1hCt57oXNgXKPIj++z7IJ5C/LkXzo/mXQME2+UilAkjgV/+zBOuP4TFVGafsVu5
	 0eKt/k5J7MSQ59EYqoNyYfSX5RynkhvZ1f9yZtBP1yvAuccPbjml/R2xCuDEP+pdkh
	 NEeSeztzdzwHhYtgme1FUB2TV69ogB58uPa1n7SxZUYqdj3+/tTCMarGk/AGODWuRp
	 z94zx5E4PMs2ifUpDuwKYNehEZssgzugE0GiR13UegK53wuc6bXStl5SgxzED74P5y
	 +f5Jp157uetuoeXdSOg7/huM1TKBin1O0TE8vKKnNeXJ4ArLemj0kLoPlidEvOUhkJ
	 DrBmS9pFPb3dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1621EA8521
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298109362.16911.14649757055584365973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e2e6c3f13ffefb3669b763bebc30e4037d7b39c89e0ea0b9e1729f3ad54b56
Date: Sun, 08 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772981093

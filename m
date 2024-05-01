Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1AC2233A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714600943; cv=none; b=LGqJKWtUJlLYe4Edpy/nUJnDp7i4E+0V7ybEEh+Y/D7f7NaAZeaPK/2lMuOwdGMFCPo+0ZUZWg1cksGSRP32ON0EQJsxha2sZM9tnLJllaDAgKBYQEKytTsec25qB+lXEl2Hu9OmgJBlkWGXp425yayOoGynwFyIxp40HLvtemI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714600943; c=relaxed/simple;
	bh=6f1IhSQ+/ALaDQQa+GgHy/0u0Z5A89DuAPUJnzMIejU=;
	h=To:Subject:From:Message-Id:Date; b=BPLROhKIn6vtTLIgwryHani/Tq5nbl6PJgTTPF6oAx0sGy3ASj6LX9AUq+VJ7+eXE2ACBq5edAXvxmNrgAHZF8k1yk6qTFVFbVKvs6D5x7JH7ZyGNPSO2xEI+IgYiRgFuG+n8FtVqVP5UElIhrR8M6dTV/YYsdfV0hMM+P2Mcqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoPShIFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoPShIFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BFCC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714600942;
	bh=6f1IhSQ+/ALaDQQa+GgHy/0u0Z5A89DuAPUJnzMIejU=;
	h=To:Subject:From:Date:From;
	b=JoPShIFmM7mH7MhW1lCrIUNwanmO7NckSDrVj0fRl3c2zC5quXQujBWbtfz37QYBk
	 a18P0OsK9kCEgYWGZn3J3I5S/QXK3YH0Nz0RB/Zlq5WXOheHfTsv69JN9PfsnVGz+Y
	 2qDIGS9MSvIba4l0CpjmvBG52KKiOWyqMVW7ThhbYIqaVJlwEFUD1XP1E92RMy71a2
	 BKCTPXhLWZv7Ejzy6DqxGWvGLfOKhPo8eCj6eHobRWnMdcWYCUsPU5908Y/8voKxlx
	 y3qxrcuUzxSFTtsHRQh81L73sZuxG6Pu/a8qZFHq74dtPupyeI0lCIUTMNrmWzzQTz
	 BhlvA7MDJ82Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2139C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460094278.7126.4706806346908334193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f3b7cc8fb4594cc8c3d9fa295522bc965f38e19a13d68e09bb5d566d39bbf1
Date: Wed, 01 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714600942

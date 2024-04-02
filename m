Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B2D2869A
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712039897; cv=none; b=oXollrVtIBHOc++a57OrzUKveqxO2GYSB6Fx7IS+Hqk/lytljig9UIeXYJmJOwdYLn0UCclFvKMvwTiKyheBAJ+5cN7aBo2DZUQfjr0XCTS6z47mt8szXV9tTKwpeh31XRT97gVvpz8Uko3GndsGs7fVw094awWkpTt84m5lQV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712039897; c=relaxed/simple;
	bh=wW8QgskrCJ+x8kWouPTQ92rpVI+U9rwb4AT++06vHNY=;
	h=To:Subject:From:Message-Id:Date; b=k0pcKDQA+aLlzC81GTTEgrtMA3vdopWkwdSf76wkM7+Xa9CvqJqz2T1xRO/Pjh9Pknwoe9XnCFWFORb715IGwkcGOADzv4c0wQpv33blPKqwi7cOdsmfNfbzw7k2n+4EWvQNtNyR+ki8LgYqtORWyTG/JgV4ES40M12pkgR8PRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfI1maV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfI1maV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776D5C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712039896;
	bh=wW8QgskrCJ+x8kWouPTQ92rpVI+U9rwb4AT++06vHNY=;
	h=To:Subject:From:Date:From;
	b=QfI1maV21i5dIDWkkkVkkGBu0n+qTxJ+/H3yv4V0eSac13jTUcWD+M6i256mIALRo
	 YnlVW8tWwmhnaVJU1pc20U5NvqlbSVsP2+5ICpQXDrtvn2M1U/jq/SF3Fz5OOmcEqO
	 LItRg5OpAa7pCXSYdXnFxu3v47YNDc4snBtj837ieB6mUcutgq1eGY749PDySTE3Xp
	 6rjBHwIZF3dAljk+FqnenSU+DymRuvpazJ8f20HxJhIKW3eS0zV2/AJTVrIR7dM1/f
	 4zAajBSXG8L8fbRplCLVjYlL1SXC+7Qxzu0bJg1pbDA3kxvnDKsq4NO+5Yl58GFfxC
	 6hBPlRCqMRI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60007CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171203989638.19145.9284599378925809444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126987b29dd179e24d6307ffa9556357a9528185c4cd599449ae4fe9b11ea10d
Date: Tue, 02 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712039896

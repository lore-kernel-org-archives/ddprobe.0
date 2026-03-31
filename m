Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A6F39C007
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774961094; cv=none; b=RPPmPLaz+HWBdVXJ3Q/zXX7R6b75RN5N5MtuWXJf/v5ouzls8Is3Y42K3FnwK81nXpoHrzyAz+W2nYEu7a6cd5y1l5Y9V6H9SNr37IMCl+qltzduEXCKecMW6R3UU9X3sH1vA61rvND4Uqk3pjYRrfG3dWS0Lq/xmXYyCs6HEcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774961094; c=relaxed/simple;
	bh=73DK4htV0ioCmblRSDEd+gu/C8iwdgrol4ZQaYC5Src=;
	h=To:Subject:From:Message-Id:Date; b=B5hKZz3km1oEpcpsQ+ehpekC7U2Hm41N4rTHhYiUeVqYTOnv9Jd0wDQlmWiD2ydUwqMMV+hgVrkNyclofteBK5n1ZC4dkwPb2Cd7MNBd6QN6yttMOtFEfvZr4OOC0CfH73/hWkX40yvcsf21hReDvE5k/d3Tf+rfhOnQxBfjBGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4rZxCrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4rZxCrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19FCC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774961093;
	bh=73DK4htV0ioCmblRSDEd+gu/C8iwdgrol4ZQaYC5Src=;
	h=To:Subject:From:Date:From;
	b=q4rZxCrOnfe1x6pDkKrexJt1Y2jvR1eM6wV4a4T43Wuo1Cssg3083+uCoLE+DYw0R
	 Ps9OdMNsM1fMjWJ9Z/u+qS7zHnd6ax+6axXq7iX2ikDlMOPCs7IXP4oLx3bkHCx296
	 R6vus08cBxEF6MUgC7DYxyVNGgrm8UqF753BEbvjdCbfmDEMboFVbJ3Z+BzbqmF42E
	 9HgsizcRqMwGV0/SQjKtZ9LJxmjuysgqjy5ltxdkidvS/OyE3W5HV/aZSY45Mxr/Wm
	 PAt2/pE/X2IiU0qk10tI1IVNa77POsp1upEEXBYGFOfjTy91Se9Nhd5OJqOuqPqml9
	 kf7jFCtjnj+5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9284A1061B3F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496109358.19505.11946323962455142626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e340f5316431f211578775ccc521200e9eba4d3d26d2e305b10ef94b6c91f5
Date: Tue, 31 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774961093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376611BC5C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742737794; cv=none; b=GweG8wx70NZ/+0YCR9GMaRwTGmEQH05wTfWvvjwZ6R4cbRFBYBg8+Tc6H2Sz3rrkjOwaFPWI1q7U7qBT4i6nAN5YagLNzL2D/IeDFex+VNwHa1/zzsc9yyB7rg0uAW/G64orccns8OtQLnMbUBmv3/6lx2s5DSBOGWfYkrYKr3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742737794; c=relaxed/simple;
	bh=4rJN+0+/xv4XlYJS+ExsiCWcX5sbKKP0k9iYHuEfgaU=;
	h=To:Subject:From:Message-Id:Date; b=XlhjYscOMOqps1hPcjYeJwFZjnNkueupmtETQy0/tYhd7bLXLLuRqTh05luCo3OGKJjyRckWjQrrYw+Cs2EoYSmCMQzpXI+jzrFZ6gLO8rJdLCRv3y01SPw1bzWohnrrrjvHmIcYn59l9gcPTy/f2g8gPsd2L7pw3kJTtPdMkoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWMB/ejw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWMB/ejw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AF2C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742737793;
	bh=4rJN+0+/xv4XlYJS+ExsiCWcX5sbKKP0k9iYHuEfgaU=;
	h=To:Subject:From:Date:From;
	b=HWMB/ejwSdseE825iYtPZLdftx2+n/6CmQUubFBJofHPM+E9p3jgu52Tj21ScWj2a
	 yoGhsJFdbqerkkqu/uAYvBPZhxFqNYGQAEoT/0J2GsoemgoCI7AUA+zs+rVyZHjUm0
	 vWM4MILgvTAluj5CYIiVr+Z6Q04xFCWDwNtIQe2vSv0f6IBvLO1vPl7NRlf0EiMbap
	 iR2xSfKtmuXzICheWvAEtY3rytkoNPxZh0dzGbkQKOSzChw9wZsyw7K6koMkLpxK/8
	 BGwWBysosAYtqdNdBynFOLoHXR076csd68mPruSqfPjNBlX60071qoUaXpraaDq7ec
	 GVT7BwUZ5tefQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F66C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273779360.20268.14315103594994838041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c94392ef4a12f8e79e9eb3a28e8458730ba31bb032ab3facf505583dd0e1fd
Date: Sun, 23 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742737793

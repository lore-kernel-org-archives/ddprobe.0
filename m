Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0583538654B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776207454; cv=none; b=ps9NvgtcaeqzaZVaugG1cxRqNy/gcYlFA6ovbKt5/hmcnnfEytThg9CQ6NrdLD6JE4b0HBIraVLT+YJJWMSuDP6mNbMpSeOtqT1GD6BuRblVKHUUHzS9I7eVJThTohMPVkwxhc9lpSvKk2XEPwaJ58Lwov54mTom2EjeDFZdHD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776207454; c=relaxed/simple;
	bh=3VHAbjf1XjDZQyqUt4+CT5W1Oa9+dAEEZzqMpxf5QT8=;
	h=To:Subject:From:Message-Id:Date; b=lOw2Adr2VJJM30orAHNFWX+/nbGEE4XGJsfJkF4ALTNmPUBdeHlg/ZzqRKnR1Lag/lYjVAYxYHoNdTKEQtyr7/1ehcr8IzEsgaTF7m73nlkedQAlVi18BUzMlOmCfYvo3Q8vFc4GuCy0C3BapxVmqUTEW2rKZsl/C0PBwz3a534=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxdAYsZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxdAYsZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C890DC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776207453;
	bh=3VHAbjf1XjDZQyqUt4+CT5W1Oa9+dAEEZzqMpxf5QT8=;
	h=To:Subject:From:Date:From;
	b=CxdAYsZIsbGyk/IKPIMZrBvKVpbUp90Jom2jAL2NJHAtxWkF20f5gAVp23tAg7dbr
	 JjYoDmoFG0kx6jLNUSHlEZI/JkiL5dYO+3/pjCGvNQXF4a9Fg4q2r3dvDlSmC5TX+Q
	 hFOuNUuX/dzqQfGgYN7cvzeio+SafpTpi2RZ4zUwmvf78HZTwLubDmrVVwUDQE8VVf
	 g+WYE3jMxieu44gL1VBkkp2oF0JTRNxyLm1fvzPXsUxGe2VC8fR1LOPXpPyz0z0c4T
	 EYfzTaZxMamTRATZfhnEuolWOFPMS6fLnj6eOx6ySE7CPYoo69g/ZvLnIJ6Z+JU7Cs
	 GRMi0Quvb803A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE6F9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620745368.4304.2233109893045506067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac55eb5d056297d7c15b3bb704db1e2ce06045bd4a3abebb38141bd1d123c6bd
Date: Tue, 14 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776207453

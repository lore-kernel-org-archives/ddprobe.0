Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D0F4FA
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722938154; cv=none; b=Mg3GpLig9mAL+5bxc0eopjNxHEMBCUk7uRpcsJRsNkVbl8fM6v/Fcfxru1+dqlAEuOJulE1hZO1weOsDOyfH9Jp4s0Q4PkJg270BriMmQelt7wMFvhPGqOAVSBHNvmlEWXHUxk/nlCZ1Io1yHEiuMKlQ4yH9qH5rkqecHHVJTgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722938154; c=relaxed/simple;
	bh=Cc5T//aA4kGJKNDQLQEwh+NqcsJqDWupk33PVIwmoxo=;
	h=To:Subject:From:Message-Id:Date; b=HZI3tvaeB0ts8JcVlZXNnWipdtyPxAF5ejWEZvyg+BQc/A1Mu1D2pU7vg1hcQPNirP8Jkok6DjKFpUv834DzBkRslJDuGBL9dW1j8wIZfMio0i/uvrKsJkCqWbwe6Ja8Y/YgstEHqO6Ca5ztQFjh8xMN3aIsZQExzGZzwGaQnYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN0eIoPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN0eIoPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0797C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722938153;
	bh=Cc5T//aA4kGJKNDQLQEwh+NqcsJqDWupk33PVIwmoxo=;
	h=To:Subject:From:Date:From;
	b=nN0eIoPmuFwGerqzNdUqFl5maNz7JX0yUKRyS2LkLcHs+fUNTe37VD3Mox45HyGVI
	 pVc9+Mqw0LqS6qYXSryvP9kNYCpaP3XyRff53MXKUMOf3DLCqLXIZ+g4xclX/JCPu2
	 qKs3ViX0JP/+lDrHKU5Qeh1speEB+lCM2xTOJ7DlvRK/7kPygpzRoEXnFGtX0hKHYa
	 lFTE16Ht4eVaneTdCJ9SjIDSOvseJMhVpehAALd6ePpyJgNlwarG8w5Vo9qfbCSE8S
	 LBV9pc/s4uEg9Sffnrr2dIwRlqHLVkwyTJp6KMWgJ/LqAXMYTzshyzyn3FW0Lv3TV5
	 dUiuC7O+w5zdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6E5C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293815364.16061.16120681614079334347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57900f0c886b2f155a0d4dee9cbadb70c41e3ae712df2fa94f85b9e7ebe5daf
Date: Tue, 06 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722938153

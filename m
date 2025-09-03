Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB4F1459F7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756942194; cv=none; b=Kla7hg56kLy70gSGgTmjv75DRk2L+f8fMDJVnzGj0M2KeDii0sFeKggAQnq497Ih1ShGyJYYd49M4rFK0cfXnmjSWSbQyypgkzdQRjsDMswKubiYN7X7Bkkb+0IUaG/wtMDOCPjUYos5GjxNXHG9yD9Ox9u/wZDx3QB1JIaGFZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756942194; c=relaxed/simple;
	bh=KnVWGM9WEtm6Xe9Rrlmlkz7QBSEC2/hsMFuGGAEkzq0=;
	h=To:Subject:From:Message-Id:Date; b=itvkxzViGMkP/ktfFVywYko5W0+aYtQEUSi7ZAG6BUlXK1IRnEfVnkr1S0WH26QEGK3dLXMzS4bizqzGI21w0uN/No5LbWcR/mfLXmYwySQ19IRSa4HMYgpwiAt7Zj3AFog4m4qCZHHBLwkrMDjzVnAFb8k5W3MHFH+AGqY85sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSl2+7vN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSl2+7vN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6463C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756942193;
	bh=KnVWGM9WEtm6Xe9Rrlmlkz7QBSEC2/hsMFuGGAEkzq0=;
	h=To:Subject:From:Date:From;
	b=LSl2+7vN38hey6FLafugcUHgME0iCYL9gaBwmMQAQysbAti1ToW4NRQDuaVgIQH++
	 bAxNzX5qwFVHs2g3ocFjK21ZWIPWgEyNjfSLdcaGb8SrD14rvrrj+zfBi7SL8lbIqh
	 7mr1BNVyYZvFbJsuocxszyrgUOPxYpcJY2wA/vUxjMPEFFTEp5i2ErZonTi4XYievR
	 A3uLMyT91XE3j8YcH6DbMPbQfOAgv8W82oOYBhVAUAvOZgg9SSYTAnALw7B4HmepOV
	 smMX4zTLpAh1CN0CKagWvIUPIiUaF7WlieTsMUntg4823FMGxXHOqr91lD1BAkBaA8
	 MwaAbFkUTKzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4CCA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694219358.22674.13584344486444668250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c40df59b93bb2286eed0f837c73849470117c5b248eb9f5d1d5933e10f83aa
Date: Wed, 03 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756942193

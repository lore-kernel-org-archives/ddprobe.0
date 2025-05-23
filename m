Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0FA20E313
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748042994; cv=none; b=C1eWPkNh+czrXePi0U1lOnIXd+3poSyCTzg/x4FTnboLGrM/pUWdE/1+7IltlCqSyb0Pe9BH8p6qaDp4hOmY2hes6Ioj4m9axQG1lOTY8ij2dufzTbuq+dKfiS4gEwDo0cjmviQAtLxv0eJp0pMbkF9k1DJIIpl0la4Woan7rXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748042994; c=relaxed/simple;
	bh=MLobYX8oIH5sY2JTtJSjRjhXo6C+zcXXXZfVlbwkb38=;
	h=To:Subject:From:Message-Id:Date; b=pU9UY7oYZJFXWuVcMoEmLqi9xRktdz9gHXUzeGywTSmBfeCsAH5xOZISNYoR77buWetSHc587/5UDq7H51vnyA4yjOEJTGaQ0pRwO2s5ST8dhM1stHllccNVqc1uUJLY/FwxskuTDTs7xYNxkSEw/47Q5nkxuvlXXRtEGV52h/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrUSL8R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrUSL8R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6713C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748042993;
	bh=MLobYX8oIH5sY2JTtJSjRjhXo6C+zcXXXZfVlbwkb38=;
	h=To:Subject:From:Date:From;
	b=HrUSL8R8rlbuRwYWqDfeB+eSmS7A1ODslzR2U224eRbb629+EA0qiFU9rIzebY0Oi
	 bQFwmu8tFY7xzIz3bH+8TXj1cUsrl95KKxUj0EOXB7/zSEj0j+K3aD8XZS1oK9VzcJ
	 aibO7tueNSybTMDL10Ub/nSF5LbTpWeBQfuHS8D840HFkBUjD2aE6WZH8cVQv3eg9K
	 1BSdQpNHY4VTGvJLvCSefqxek+EwyOXZWnSsJKa6HCogvesTRp3oHdWcy3GOeAshwa
	 sRTEQO/Wi4IQd3w8h05t4LGnn5pF2HdBXsMLI5q5QtUjXzm0ERwUz8lj8sr6fxez6n
	 foVpxV6TDy9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D3C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804299357.21977.1731695227837995354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75dd82ca2b6d2d1f2f9edd2b66b8a8ec84ae7199e2eb0ac10f51633d71532eb
Date: Fri, 23 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748042993

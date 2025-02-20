Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A921E9B19
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740037734; cv=none; b=FBXUilN86rIjQ2QwqmLuFGSCWWoNUVEQuCC724+OLlLw/4wubT2Ev1ZxwGtFIGrbmwzrgz1pO6XY1j8fnRXwbfCyFPX7T1l2eoMUmErS8TveN07HVLpnAvkcVWgiwBMqAzZb6ZqmkJhguVXx409+FQ76fonGbu3OlGkgQJsmgjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740037734; c=relaxed/simple;
	bh=b2t/wvbsnXX/n0v+kzHv8/fS2JTmHpQa56YOMVsatyY=;
	h=To:Subject:From:Message-Id:Date; b=XeT5kVhbX7dUtIzuuJlh0qOwGLzTK8b6vxCy4oftr87hbWHfZBcqVeJV07lFlsyQDS/C0DnzB4hQN0RTuR2pCodUUFI0BJ9DRAeLUyRJ/rs+2QgoODPtsk5yRNOS6CgkGSrWvXl9SSUCxeipXj4RydThpHBnu9OkYUVLsRFltlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojg+oIUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojg+oIUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4916C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740037733;
	bh=b2t/wvbsnXX/n0v+kzHv8/fS2JTmHpQa56YOMVsatyY=;
	h=To:Subject:From:Date:From;
	b=ojg+oIUcj+KoK3grbYo7WzRcr5d7KmMadhY068oPXvLp3m+lPuV1i0qVY7ZWrQtyw
	 FMwSKZ1jh+nFC+DofeixEcfsbFsDACi5YXIyTmSjXadbDhnmopv3Ls3UvKBq6goIte
	 mePzghVzBUeyUOcBa/LAebBfkWU2d6ZMHEUkGEvqr1jfn/ZKEbnRAKBO1a8adDStFH
	 2YtQXIq0aZOaeD/1oqjUinwR95IO8N1xCDd8KHIMkhFIQ1sx2WzwfhLkMH6Dp7ghX/
	 WyfRP391eVa9epdT8BOmYI5DUzY4VOfQyeXj6h6sUnQVj1NGWGwKr7TDRPsZgfbrZs
	 aUbGKX1VqZRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18ABC021AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174003773364.11608.6043064201540600038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4daea8fe7442c378961a72759c3e9355cca495974569558db787c7453456b9
Date: Thu, 20 Feb 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740037733

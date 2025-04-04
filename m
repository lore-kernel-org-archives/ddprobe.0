Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353112E62DA
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743728994; cv=none; b=sbtQ92uu6e9paZQmUca3YiLS0clXOn7EdRZwCnatfy1iThWkqYVfuVKfI+XrWPAz/KnLjq8lysKy5TT5L+ONoOIIx8ek0LcV4Efa2NdZGcn4t/W9esKYTImgEOYcnmyNSsLFT/J8HIZLS9NQZ6WyqFRi45MJBOKgzHD7F+uUs1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743728994; c=relaxed/simple;
	bh=F8vLG6pzRMck8SiDGlBDwmXZLVsdW+GVVJslzUpptF0=;
	h=To:Subject:From:Message-Id:Date; b=NEv5avxpfAY3GFs7r7G3k9fthbriXgb309j19oCn7LpmU5nyFooDA98LV99cdYSNoXnuy2REU3ZKSI5xqucaW4kScpP5iTjRuulIoesRyj1eJVGCZgfxsLvFJbUa3tNYZM7LXtWtBZeUjkHPxeQlkN7Lg2iUktxfdyXa6bYpu0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGjoKH5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGjoKH5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743728993;
	bh=F8vLG6pzRMck8SiDGlBDwmXZLVsdW+GVVJslzUpptF0=;
	h=To:Subject:From:Date:From;
	b=EGjoKH5IFrEDg38yg3uzGNMOZ6v5cZQeGKXQyXF8JC8KZ3K0W5L6iNKGhNrlc74eC
	 OaAhJpMky1Fv8AZCu+kIZ/L7vESrsTYmUJJtxt6PT18cMqeK7SSYhu9UoPo8gwQsI1
	 +rg6EsFLqFispBdEEbvHKDylE5w/cDL49oXxeqqwaHoFulUHGhwLTJngHVIVC2gzwu
	 LIQiLKhtO2m7vYaGVgSLXgbl0bka6hDhrOyk66FXSv/vH3Hb+fiXekViOzfkeM6qCW
	 Mx+T/yJsDXDIU/6LWVqku9I0kYXfr1VgZG5VW394V5jhbenT2QaHjG4wtV3ScP7LUB
	 Zqrl6OVXOC/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED0C3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372899359.25679.7052535309877307613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bfa49c8b9412e284a6c478358cbc05c07e7509b94e18ca74a575016e59dd55
Date: Fri, 04 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743728993

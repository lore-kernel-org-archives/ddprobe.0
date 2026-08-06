Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE06343D75
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786012834; cv=none; b=B31+oF9YKEq4wkl2k2NVD3SmRNs5RXdryikmIQe3HrYFjPgGTUHbFymPDSrdAI2UenOBAfCOAD1l2APky7emFYKCZxSpSiuDoEKXXgRBY7PpXifBH3Pttn9SvZgMzYper23MFe+iq3qHy0gY4iNeBs/5ytVhrvPRcYo+Lg/UMGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786012834; c=relaxed/simple;
	bh=LS1EZ3mTcKBrzz+AxQy61nbxaVpB8mBD0xcIuGFKEk4=;
	h=To:Subject:From:Message-Id:Date; b=b4rhiErykTDF0wYn2m5VsSA7IWeHcwbInjbZskLFBKL7JbOQYLrkyp4Y7374ElMXxZlljYTd0EuXbWor+Zh2nugyT7ov5GC59kAmzSPorEIi+jEn5mnhVv4U/anm4Swca6lyu9ZbYoTJ5pm8We5asqAUiL9KdUPLkeEJatJOL8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVL/DlXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVL/DlXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B7BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786012833;
	bh=LS1EZ3mTcKBrzz+AxQy61nbxaVpB8mBD0xcIuGFKEk4=;
	h=To:Subject:From:Date:From;
	b=DVL/DlXJD2XshD6jsvXiMn25gw2V4Ed9feh5lHBzxq2RmYfZfva6Uj9wtJX15rv1F
	 Lpe/B98vkyTcGVEtBiQyqF8SUDAt3AdbcbKsQ5hGYx7U9t43CFahna3NpUrfugMdnW
	 CUJbs5R5VpShAg3tAby3PdZGk+ZCggyHe0FevAA6AGpJw/LhtyOXD2p7Msf3KJvBBg
	 406g/pSyq7Pr/xvqaiCrL2WpPwX8NCUhmqyxmAEUBaCqPFhhEL5YYE8vX/kBjOqk77
	 Ku8/IZTr7FDwixwrK0dESxgxBEUJPV0z8buJOkC3EvQQ3ZTme8tB2ojNtIur6nY/aH
	 uC91prNLTf4KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9BEC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601283369.7927.7713957350240727792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d712184bf700d869043940d60390a7aa8425fff840f2b1d8327511c5468d8c
Date: Thu, 06 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786012833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248A61EB3E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726755354; cv=none; b=T4n9bhU3V88t19lzlNjOJj/lDkuHHlJCmvkbA53V39IRJcx7BthojUo7u61ONJKkCLWlOArAwBAo2XM4RX5V6CD7FYtQz3GX9/HxiCM9ZnQNpcQ9sb6zU0vwFmAaDcJ4WrhCTf/l3khbQf74g6xtcOSUH0B4pBVOZx++p7cHWEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726755354; c=relaxed/simple;
	bh=PtczNvLsWwc4FPzkoE5BVV/pUPc/Yv69Km0YE41MtWo=;
	h=To:Subject:From:Message-Id:Date; b=fuQ3DAEtxDKOrViKnvaozLmIdo64ZTSU3bo/SSZDntqt32hoVBjuwQQDsqUDOFLri4krT9Q++Ut1h6FIuYqkdEU/1E7ibpqgBDu0+DWzooY4ubqJNIKDaDw1dL37mKyuhZNgUK7PEUMxSA7L4OhI7MjJxCl670xOLYNrIAbHIA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXtKeUYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXtKeUYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C5C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726755353;
	bh=PtczNvLsWwc4FPzkoE5BVV/pUPc/Yv69Km0YE41MtWo=;
	h=To:Subject:From:Date:From;
	b=bXtKeUYGWI/V43uyjJBYYaWFmHxV1GjyZp+KNnRLbwzFeiZ+Tuur2TDKdTQPD6aZM
	 etUUBJjGm56QFjmOdkt2F4IpoxIbT0HABju5ekM4oJ+ERe9ViwsI4MMaPCh2QIaDHO
	 EXHWY0ZoaSNt9/iOKP7Lq2pHSgkV8luLhfJ58v+egdAij5iKBdSmxWADd1QeGwedQa
	 OXwGdHC4++E1kNpToIJkhKM55XOe/Lg4e+bzsKSiimw49VTPnBA0GZAlxmouvsdMBi
	 SG5VSQPkQ7TVXXXCjGAW9mMLimLoBxoQV6lUxPQuWA+ktVPmAM7PMzWD2i/vkJe3AK
	 IeoZ8A1UHSeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96200CF3944
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675535360.11452.3177276678777058542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f52a46d7594c5adf69161a45ef0965d5e4bfa1327bf770b5d0d04c6d3b54fc
Date: Thu, 19 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726755353

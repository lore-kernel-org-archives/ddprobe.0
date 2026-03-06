Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3DB34AAE2
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793894; cv=none; b=uR4uthrPqt6kXfnEBrh+dd5BqbCrkGvTKGq+sWQXxttD6+yjAwOY4G75TnJR1v0UThkapeLb0/cFcyB22A/PfunqQhGdeJOJTMgGB5DjANvmWFiUGEyekFInffuF5zXANltx6jaMAhvpdYj4z+xfN6zOOMjhZpKBQ0Zp+ns/CZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793894; c=relaxed/simple;
	bh=v6hwYNViyyvBUokPikK5bf543PrkYY9Sb+bgo/Vgg8A=;
	h=To:Subject:From:Message-Id:Date; b=iPKg+lKXTnoES+iUZlf24R+/FS5X53sTkkCqUKOSLmxqPUyipP4A2q54X1km6hCbzsPuJicJ9oEZMBTMcBnqdHSjQIBGZRCttbON+3mtSP5P4TW7WAsFGMwtl1/b3fRj+KTcp8d20vMRI54oIM/3vCNEQKNYyfpuytkAb+wfulo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOldz/eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOldz/eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C55C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772793893;
	bh=v6hwYNViyyvBUokPikK5bf543PrkYY9Sb+bgo/Vgg8A=;
	h=To:Subject:From:Date:From;
	b=cOldz/eqUcKU7iLqiL/vTI+HT7jY8jhfyofCRYDL4Gy+uezknTS+hvs1XBty0Z1En
	 vFJDUOe3yXTbFWq6qTJT201HW7o3U+rl036e8PxVihQdFcYHMgkMeH8BxRtJ+E6azU
	 UPzzdGdGMiGNvim66ryeSlQ+u/sidtKk85IWvsTFYtpzxehf8lK2IGWF+rV7anfI8D
	 4FAAzYT//EynphD7E1JEF6SJ3jbrJSf37REryGhbh4l4acXfyAJYH3atl3HWyOPwY7
	 oZVp7gvi7vW5z5ylBviXW03SYlRa+pjo/yDw2VPFM0/CW3Bs5qhQ7pyk9qUSv5AZOf
	 PuihvD1XMepBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90549F01821
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279389358.6894.2426647808435416007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68262e08332d2891ad22ccf360b7a08af1274733d2c86b4eddaeaf5c97275f59
Date: Fri, 06 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772793893

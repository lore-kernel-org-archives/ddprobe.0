Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA9D13777E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761833393; cv=none; b=Vkc96cWdoodpnjk0OZYOe1MALQdi1PrMT1tKa5I/3y7cizUVmJMGs8m1g57K2/Rbh9A61pHgI4SP0/6hbmZr+l+3dLWc887UXFgAVGlF0Js6fFIkLo9rLgornip+9hpLNsHxSK9FvCD70LgC8lAaDPj8lz+x6exKet0TNPhxcXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761833393; c=relaxed/simple;
	bh=w4P7avD+8Ip1xpbM0cjqI63BHSjpRtOBdZ4fWckd9uQ=;
	h=To:Subject:From:Message-Id:Date; b=SnB17TcRkNWX2td18ZWkivxhjqRwa+fbfV399hr7CBQsO8E3KlTCGxvgQv+2tO9ak/3yLhiQdqlS+ZVHNXJNIvTC+KLxZZi0ht6vrkkh5dJ4G69bni0ftuXZvIKGxK0FOw8rDjBKTISPSyEQettpd1sKox6aMZfDb1oCVZ/8cXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXGoWXsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXGoWXsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E68BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761833393;
	bh=w4P7avD+8Ip1xpbM0cjqI63BHSjpRtOBdZ4fWckd9uQ=;
	h=To:Subject:From:Date:From;
	b=MXGoWXsJA6ONgZzRGBCfN5fSXGmAXuEopQbyzX6SzBvbfBjpNP2I/PFfV3E+qhr77
	 988h6eo+e3OODka0TSQ1pdy9SHsW0/GQp+iMMdh5BU67FpNvxBue2Gwdrc78ArP2V/
	 i5daAjWeJIhCbAPuZ+OIl/KLCNoUicMepFDTph0M87eHw+roYDkZVucQt1ifGI/xmw
	 RDdNehcqtThZM97448sYLByKI/SRbah8WH8ikCVbmJvNLUbXN3KWmgR9znzKBVsuOP
	 VTJ5YkQNUUQ9JzH/iiQwQPZmLYFkPGb+hpNJeVVm4O5CPuoavZet/fcbL8Fps6UDa+
	 eD5yTLh9a16iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA4CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183339358.12096.14888930763474230523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d94568a687910d7ea4c0da13a4f407838eafa1a8ab21b407e0c47edf8fe6e57
Date: Thu, 30 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761833393

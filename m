Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C301CFEAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730267754; cv=none; b=q6Vw74myBv0A7MAG0hoJBs/i2S/h7gsYNlNI82LCLKvfrlLMYaJSwVg4hl6pL/sAiisXEv4meKKtHdrZE+E/Hz8u9IsD3DsZM7Y7qXJul4ZgniEU996BdLd1on8ZwupB+jMSdC1NvU+FRZIXnXB60xV2k83ipfwHBB8zIde4FvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730267754; c=relaxed/simple;
	bh=s6xfqNI23F5a8w1OW/AjYgLW5OpQ/STxehc/GTKOlTY=;
	h=To:Subject:From:Message-Id:Date; b=ZCrpKENOQUDBu3fWpHNbH86EJGczCW/VOVzWWa9DZIT4o30KS1jFtjtCt9Uzb0ctDee/eSiWCwGuzD0hxO1DZgcoJxI5dPJme/uEaNg+OV8YFv2cUjw7ipwQhuEyduLWCzzv34cs3lVSmZaHuFkeMC/YMNcOonEvAN/c/Gae55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyssE0S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyssE0S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68ABC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730267753;
	bh=s6xfqNI23F5a8w1OW/AjYgLW5OpQ/STxehc/GTKOlTY=;
	h=To:Subject:From:Date:From;
	b=eyssE0S/muFtT9c8dp3P6owWjSHbOewNXvwagjGqyY3dYG6ldpvvZmz3V7KsYLfgE
	 rXmWgJACy/EkuR6DDqvsYF+rEZk2Z9MPFdcwQyGQUoB0Otxkp4bFHnUq0JzsDKFQy8
	 A+NI7EZlrKYOZIEwan3ocNbW4xdN/U1FFSX+xbm7XhPXRRmB9rPa6Lwq6WiAZD+JVf
	 0iINhdwH/PWDkNc7qx+ZbsDHbBohQYqHZ3RCVYluO0Znu6BgaN5mR36NI8kTlMD4RC
	 PMgj10CvGyoACLkrDKMySkFDXEpHwEWdMwBHJesHHB+kpVkAamV7ICNW0QYhy7wcMy
	 GVu4F5KpZ6Ygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97952D74963
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173026775361.7785.8299393058066805922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6d95508d808084dfc1e20cb2c69783cdfcabec5e8b409829eb54c81600b898
Date: Wed, 30 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730267753

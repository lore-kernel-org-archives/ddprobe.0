Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4968961FFE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737796554; cv=none; b=fzTI3ngt5m7wQ3TQfHYWTyi256eh4YJa90eZ2PiRyk4MyDQIQ4yU5CETOJblefnmfwLeySfhbMXuVZK5W+vM/yBuk0rzxaueOuMqoxxaARoRS9DwZi4EfsyxUu6BZpKvURqIkoJBoQYUJdKR4r3DgazKRRYHK34LSREbk1igfgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737796554; c=relaxed/simple;
	bh=X3o64d0EsLCQc12zFhPYLRTH48+za10v6NwtOwCtE5I=;
	h=To:Subject:From:Message-Id:Date; b=L9a0R3jMekE1hQOSpbbEP0DgewPFgJFjMF+fIIrianXJsXw5qouxh61K8GkGN4S/mZNx1FY7m1TGzpUkt0JONKT2yOi+Phl3yBM9XGDko/opHmE96UNKoK+Jst1Fx6o6UDv1dQ0GSmmnL39gyPFSWB+wLFHSugaPO+lR2/pG3uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzxZJSUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzxZJSUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABEBC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737796553;
	bh=X3o64d0EsLCQc12zFhPYLRTH48+za10v6NwtOwCtE5I=;
	h=To:Subject:From:Date:From;
	b=QzxZJSUHVEeHT1J0OoP7DbCWRo+TEuKDBkMPp96KkryqwzN4QoHab4RJJBLa96yoK
	 TzekYy6xFm/A6Xq1dVbJV0XrAkVbe0mgGZjgfbl/LnoJOP4f84V6xgz3do9mWMGqR0
	 LttG2jSt5Yz+rW53Zln9Bwg8jdWf1Fv0zTc3OQoyxmxfo1LUqBlZ3pGauYr3RItvAR
	 fJeFcLzmUibtcH/ZFyA38D7L3lGudMBj+pu4SIZ+BEVk6dAZ9O2PPZaM0gQQSXTZ00
	 SgQehbD/wQOzNKX33IZOzHgIRlu0jMEuvPk+97gmeBnnSf1jGeuKTMJD/0MUtXFBLA
	 ZVVmoE36FTgUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93393C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779655358.14045.5185904291752038644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d4bdac2fd03062e22f62b5384dbbde0b041191cfeb9ade8871513c899cb0fe
Date: Sat, 25 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737796553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218013168F6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766660634; cv=none; b=XI1ZEvJzGjEyCQ2VR2c6M+MiCK930rC/MYy2ZkNMnO/z6OuJ7dd4Ds6u0Wlab39irKFeSx5rX68ZIsjH9l07HNfdYK2zrhAkfj34AXQzVhLXb5ek1TKWKHuiy2HAAFcS/cNaayNHKakz29V6g4c8H+/jDReVxeZfn1vfxhifN10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766660634; c=relaxed/simple;
	bh=4NPjd2g07zax/1A1R2SDl7qlR8JE26LCeh1oUSiV8+o=;
	h=To:Subject:From:Message-Id:Date; b=ieHol7ALGXXb8urTqQuWKMApkAqRoajhVpz5eafC/5iHTKnp3kCuAnISKedVhsRmMYs6AmeZOOsHtRuVWzKxZWo7LukhHwwipWpWH0MKiE4GQ+ZquTNextbYIeH1Ddw8gMUrlS8NZHOk5CZOtkObJm29jiu6SvZmmDoMaM02i/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDxiTKBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDxiTKBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB27C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766660633;
	bh=4NPjd2g07zax/1A1R2SDl7qlR8JE26LCeh1oUSiV8+o=;
	h=To:Subject:From:Date:From;
	b=bDxiTKBpmljt+g3hgdmgmB1ionEVaEENI3vIdcWSuKIemkWn/udCcDsBjiU4WXDjo
	 xG3Euq805uEfeMpv4ajer4GMG6XJBTbDH2Mk3g9VoYEC7OxxxuEE1eVJ41Bnd3LsSR
	 nc7RFaJeJ/0HoocdY7OswdolntJRrEWyO/BJt38rtvKywQlcWV7txi55PST7AiiNPL
	 FGJF7JEwNZ5fCWcXkN3sYO8JAjqWnjlniZlP8ZhxNPOcCmNDurXJ6Y1Y79UjwAj2yr
	 B37hUD8V8805Ecv7897bAvJTZ+aS+MVWVYNCKFbaq40KLeAy5CWC2e3I6B/pwysQPL
	 JV0+z7hchY9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CEE7AD49
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666063357.15170.10448297407521044864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d080fd9c889b4c100d7f3953b6fa972268db91e7558ccecfd1706b29f01fc7c
Date: Thu, 25 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766660633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2360F2F5A06
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438494; cv=none; b=FtwokIp9PIABXudGSq4/8uWxc0xt03wbRYz5gaDGeMgmyg81rTWO0EsM54Id4/UPovfhbpWf7cW9VP2pAhqtt9j+wju60hR4WNRF8RBeoAIr697AmR7GSIeRIOyY7+drwlvkeJ6EUATFIQ+vKy2SDv2dLnwjXxhZ4WfDmaltLAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438494; c=relaxed/simple;
	bh=y91p/Xz3IYKM44tb9fgs5/f2dSfX4oV4jZ1vcL2QE5s=;
	h=To:Subject:From:Message-Id:Date; b=WEF932jfH1CSUhvY49k7XpXLf06FShoY2FsM3d3AJeH1TqcHFNJYT2dfFx6T1SzgvfINgNsJlMJrKL+l59o6gDG+1MwG83CrDzwEoT+DOhQZLkKKHhZqeDduxs2sHMCu7nuze48XcigNjE1ecXMbvQCqugTero+2PO9+VB1pyr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXd+XW1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXd+XW1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB710C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771438493;
	bh=y91p/Xz3IYKM44tb9fgs5/f2dSfX4oV4jZ1vcL2QE5s=;
	h=To:Subject:From:Date:From;
	b=lXd+XW1YiaLOU9jHR6A3IR8+3IBVlg0nDL+qAO8nOvRHAPjzey4xktgK30Niv5FjE
	 +R9Ni7dWaGZyunNnRktqbIoK4gU+IcHBr0yLzCp2t6XVM2mJnTOFxMKd3WkixF/3l+
	 XSIzW27fnVgWShEYr3QwVpppBJQSgH0C4L6beFLA6rP5s/8AS38ESApSJLK8cIS/uR
	 DAt7GSOw4Bb9lGOFFG/WTjHT9yqox50QV3/0J1A3RlQntQJv6ZDd8c6MKkT0vy26uI
	 ccX9EYZk6LnUL6W8GSBdBqOpaH8IIK71w8iqb4n3vP5yopBHrf7yvrhbCr8+C9Uar4
	 kPtrjHtcaReJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91730E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143849358.4685.15278432401858157626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f71d038369ebb6061ae6efc680191032c21eab2d7d5fbf6d5a3e944fe997271
Date: Wed, 18 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771438493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A1D175A62
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772319294; cv=none; b=hG7gOUcJj+NuIbtVXCLxCqdbwnyBsvKFwax3DMZ93ZAZs36rlNnf8xY2N00H6IpTDqTPeAwVxjR9+EyK0hRGoT4u5fqaNdMJSd1fdUVVucERO+QOYMWwtObSHS2tYnesWTRMrXUvohTuzO7qN0ZPt0TeYndM9AM2uvjOtsGXZ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772319294; c=relaxed/simple;
	bh=2+7sl6utLQRYtb0guN9OzKzcQmQRqQS9UxIA4mz+JtA=;
	h=To:Subject:From:Message-Id:Date; b=a9a4r1QPh75caNEQWhXnKp1t9W0iZvai36wMSeyVE5di+ifMvihWs6d5AkC5YelyJwBuekbrNBUlYzVEp7S4yMOWAQ0S6eQKlRAdTXR+rfT0C+VriQauwdR2awPx7vGj4vdDKfFHN961a3bMeABhSCb0ROZbPd04rMAMI99I3xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd3vlY8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd3vlY8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35EEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772319293;
	bh=2+7sl6utLQRYtb0guN9OzKzcQmQRqQS9UxIA4mz+JtA=;
	h=To:Subject:From:Date:From;
	b=Fd3vlY8R/hd4cAt4sZ9ddNGKus7KfwBzzzidtKOeysy0zM6UhEA3ciGbJpC+++Tp2
	 qjjI6X8dbu1eOW9PUMYB/yd6SJsgDBqrRIDl6IKxETK+ReSReGpzRj4/+v9nZm46Ye
	 Ro4258cNVbcCHM79feRdJJU1ixO62l2lGTX8beEGHzfe7E+NFxUJiH2raZ8dvWQtbn
	 ge0SaYfiVVvXxrgx2scSIDMjDmDw4S71uZDRf8RYRQ8xXAN6LiNBkRE3HqNulEwylU
	 lVK074pM0ESpSy887zITvtY7VpddVoq7OQJDk1MZMdgLyV/Rkj5czrIhAlHWAAEkdb
	 b0H9u878TOdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A46FD0046
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231929359.5748.13868880292655407174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d62db0a8901860b5af83e202d7fe75f14323bcf84c4f02ff526b68bd2f65d5c
Date: Sat, 28 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772319293

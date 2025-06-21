Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7FD1DE4FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750502993; cv=none; b=SzgFZmLNzZK/AxP1lO7Zaz0T7jkRYUP9RvutGcVuTviQpQYJvwOS8WAKYFZ3uXQFhdZOw9cHthnFx5oUeOviZ7laSh8+s82ilmbuDIBrSMHOdZfSu+yvwy6RFqfkJ7cbJgFp0dPqloVAUhbWJxwiMwsljQTN7xmsrIl+hfJkF+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750502993; c=relaxed/simple;
	bh=lPH2VK9NNdCGFB5GUjwjo/YQDm2JjE8OcqXFCzEaftQ=;
	h=To:Subject:From:Message-Id:Date; b=JrrwAwRl2pMzfYizkefyP8O5bo5XJHwlfWCfs1ikrYEO3UKLB9zIndbHOp98IhQMiaFxJJUuxNB+xDyATzpxPKPKhROU/0dijgyhFEOuVE0sb9ZoiSdJWo2SmBv4GhcxScabt5U2xd7yg5YLLBxyWnfiwuTf4V8DhOhENUuDuns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2luysiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2luysiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F60C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750502993;
	bh=lPH2VK9NNdCGFB5GUjwjo/YQDm2JjE8OcqXFCzEaftQ=;
	h=To:Subject:From:Date:From;
	b=d2luysiADBH0rGFhxqv2ma+aZmCMjI70QOXJxFHBJU7v7j4quosLLH6nQuyCFWdmR
	 HMCr2g7ygWaNJR14j8yVpKe4l/3I6ArykUIEGlKn6aytBGJLrUu1ZbQB/LCSVl9zNM
	 EIh6MwT/EcJ0ZUJTXy5WdqTxmP+Ikr8FWQUMsxYF1orZBk1khK4/4xzfl0XF979N6J
	 X4T/AgAWVg8asI+MLEVDM2s+pxOFzdCgsJDryt5lq0EVFpwArTIgCgHUkcnk9z4ToN
	 vD0J4+Pjva2gA++p46yBqscmbP5Wl0GIbd/7Ox0LqHCIPidxPkWzM1J+myR5HAUFpZ
	 NK7MGfZ2LbMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C4C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050299357.32220.8123456826281103678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9823cb94b4a59980a1c32c52ed12e22215fea343a23e510a4ecddce41d31965d
Date: Sat, 21 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750502993

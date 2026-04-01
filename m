Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C192F25F5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775086534; cv=none; b=t4OhlpIwhs7JItrP9BCuSBUwJtJd30L382RHG4Am7dm/VemwA7EflK+fRcpuxIyMgLHv5ypKJ0szn5VxtZpSJvkHlNSgrA1D22man695tVKOmtyM5fUmHl5mtvttmrGsAm6iC+359u/CiWGSD0Uu0k4CKzm38LtJZFRI0W/4lKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775086534; c=relaxed/simple;
	bh=cBhTsdhjEwjiR0Bs1qy3dgUOmrYwTX0uCwyFQRxy4IU=;
	h=To:Subject:From:Message-Id:Date; b=emLEsVsBVLDkJO+ONLYbX3OkY88zpthanM5/nFyVjcx4gTXWbR0gpAx9MCqmwC1KZymvs6m3rUTF0m5RSNQmpGS4ISSK7qrhk3J/+b65+DIvDEXe/PQvNRAkrLpTn3nSDVVXhT8oPOoa48MM5a0wNxp4XESiaCe7ECYINAXxj5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZB3hLaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZB3hLaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF8CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775086533;
	bh=cBhTsdhjEwjiR0Bs1qy3dgUOmrYwTX0uCwyFQRxy4IU=;
	h=To:Subject:From:Date:From;
	b=JZB3hLaWNWPFEpVZXkaXXcvPDfdQGo4NPZvsT+ao9lxAZp8Z438VwiZ71qVDkddF1
	 j4HJi9WAuf62N+LmEj2mXDhIua4xMXwh/GYrUmqZ9Dq6TsjNCfXMYg19cB/D5lUjmd
	 DD76RkK7YOzaQB1E1kzGwiQOEpiN1XVOv5lX5gYLjzpW1APlS7KFUZofV8LI9whCFG
	 FoU21crJ7W4ZqIXM1Y5q4oqsFtZDfKqeRdHIAALrdARr2wM2b/DmHnPJpHcDesO17v
	 vngR48cU3dyO/3PCm5s3gAnN5GYWia2+Z+oWXVCnba5j3d4BeF186XJ6A/tDKAZNcC
	 pHfGjgPn1apTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A91112241
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508653368.10070.6968227824094801809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378ac36701fd69e88f7cebc1cf5987dc4170429670b76eaf0c6eabe242a0771c
Date: Wed, 01 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775086533

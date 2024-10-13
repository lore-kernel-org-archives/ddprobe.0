Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90E231CB3
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728789354; cv=none; b=iVI+nhvs7IYjvR6nCbaVQfbDzZ09Kfv/cQmlniuTVEAYFtOEMk2NaAADoXwvQRHt0At+eUBNmXjg9zQB1r58SCcZTetkhwE64V1cl4OPzeSpnsAPAtmuV7iGpLJk+yZww2iRHDQImuekdgiHimWrKkARYyXgiOPqDePRnRhws+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728789354; c=relaxed/simple;
	bh=UptDjD/8NLewhK+elVnqof39vEZQ2D7DhMF7VhLqcNw=;
	h=To:Subject:From:Message-Id:Date; b=LE7xouWHUGi/1myEOf6XqQBE3zgJhojwusKBPnup7Y9KT63g55JzcMUv0C52gqqxTyjtbMpsRD7NL5F7UytRrAZnotYW9rZ4H7nmhEmoio1ZiIJjvrSmRGpYp7i5T1IyeWnWCi+Bvw+86W4sMM3HUkH8ytVSy+X/CUR4qcX1f6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cee9i0oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cee9i0oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C2CC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728789353;
	bh=UptDjD/8NLewhK+elVnqof39vEZQ2D7DhMF7VhLqcNw=;
	h=To:Subject:From:Date:From;
	b=cee9i0oMYsoYtoA/YS0120CVBKL1SVXJwpPayejsDwBqBWmYpAFHPlaTnXtFPTS8r
	 wDTLUkzc7Nc4b5DwgJgr7aYkBVkQyO0G6cDIhdVS+YRMutOqj/S+kRTySez21RCrf2
	 chfmANmWDpfuq/njWNaAWkbCRYkBj6vOtC38ryj5fEgqi06zrNvrrzn6msELyES2sh
	 EM9rer0ffJ8pKmRfl0j5DE7o65JXkaDQ59vSNGojrK/mMRM20eHVkwnEe1hNavGu86
	 v1WU9itYCQsqjkxRmf0Nh2h7NAivPlYLSshiafweQHbAg3AgJ2V5dvpL/iWk71Zp6h
	 45zbjTnVZerbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5E9CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878935362.8049.13276237634855724657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eeb764c2ebce9318612ae233ac87479d252bf55a0eb300679e74027e1a0f778
Date: Sun, 13 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728789353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23966227E95
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768130034; cv=none; b=IuZMTaJDVJ1wkbOFYm+QcMB8IW7XBdye3a+3GlK+RE5S/uQZ7sZVT5CunximwBoPPjZlNFHWL8Ptwn1B/w+NoEtKjpLtXj+KhIVfqpaoJOFX2GdezHKNzV4gB5SY4LDL0hdM2aLJXROXk9OwawpkntYMPiKnBkXMRMlGUqSxoJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768130034; c=relaxed/simple;
	bh=2DGK6yH2/WmevWiWgjHLx/HquRvm90OeYmUqGBtO1wA=;
	h=To:Subject:From:Message-Id:Date; b=RUoGMSArMbioZtBVmEvh4ITB3CgfRK5crCY1AehNtWduym27G0WhDEtsgG3lIcrcvjxdH47hvRBXVHUdTsaz6ZtZZiOcKPrDODu1y1xfveTCgtfqIGoGz5P5GwiTNsfZdBAql5S3s8AmzzoZtLHGEPu0l2fe5xBuFLdGR9rAZc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIIX/Tkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIIX/Tkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62B0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768130033;
	bh=2DGK6yH2/WmevWiWgjHLx/HquRvm90OeYmUqGBtO1wA=;
	h=To:Subject:From:Date:From;
	b=SIIX/Tkxk0jQdjQc351dAOLwCilzm0pk4rhL6eyr1OCiMdNRzY9lFLPqvndz8gZrG
	 UOD61UnpE/XfZhRuWvZuywKSe43n4Y1fkEX54CsGpQurRevj83jGFJHnUgOUvZ0YgM
	 65KSw0HHUWNuSvsYUNSlP2Cuv1pu4ChcpREoPV0WySWydD0VZ31fFEPnS+T8g4JAM/
	 WufBQGX+BzWG5RwJQBtGdB/wU8QMsV5MhUwAqoHxFZ/8BgGwWTvYl+9v4v2jeHjBvz
	 fHKnsPAu6RYYYpApbDnN5PLat5CwO7rk1IVa27ULTV1622kZw5bofGkmlnD4keAyyQ
	 ZBNkFrlX9oeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515BD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813003357.5778.12084944583805134528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c336b749e38f5abad5c07dd3cdfbcc25c67a53066967c25d33d77ca1e1d38fc
Date: Sun, 11 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768130033

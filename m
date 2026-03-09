Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146FC366558
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773086694; cv=none; b=mY96Yi3PQlB3ownKPxKIaK5u4GQ1tFtSAYyRqO/yqmXy04XRqGeEALYwaN7T+IEM7uUlv571LEw/k7xDQuxrRp7UIK/g3/kgkQ9zfGJ968GfNOa9xzIyEriiqrXwmf20h38axV0Uks8j4GLVlklHcKlnVas/vqxIqPR/qMDI2yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773086694; c=relaxed/simple;
	bh=lgNkZqqh8Ltjw3ca7iMwZMW9JlfRQZtW2Q0W8iRDcrQ=;
	h=To:Subject:From:Message-Id:Date; b=mdmw85xc70C75jkCjkOpjpKqhb8AlN0VVUAEc4y51TcWWHY+AQiEnCTT/4Ta3WQEu6+9Q5p2e3TEF3eAvExOMw1BGsDLmycK33AQWCk5Ed3kunXtJtausCHKeUQyHQipSYOygHeq+u8+Vc+UsCxhIqr9Kq4CMedCXlFp++61VzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQDYXiRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQDYXiRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBEBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773086693;
	bh=lgNkZqqh8Ltjw3ca7iMwZMW9JlfRQZtW2Q0W8iRDcrQ=;
	h=To:Subject:From:Date:From;
	b=BQDYXiRK602H1ZOBk/l4fvYIk05G8zK7iEsrhdxx0CfEKHmhelp5q+qL7TPA8C8mW
	 ScGPMgc5yBFX3dIQNMMqVlXildOu67Jr3pbiiFqUeqLxJTRII6nsNCdQcBzIFSD+mV
	 H6q4huEGcWIqU1EWqKQ0bRy+0TUBDHj3y4udYjoihtLmRD3+qwzmi5G3oBQ2O/uB+o
	 lYQX6X5bUFZSu1sXk1ECZFkee6UzLbPeWIMvluShyZQOvNlml5SOEhoanVNjbgeWlR
	 MQnUkI2ERO9nbFiF6GLt38+2Ui7xrdCja8vl1c4lthxC128kzczqOPMIShBNrQuYbe
	 uUnPGdgKZsoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D7FCA17B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308669357.3214.13953462758580063474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dea77ae17fd7b692768cb8bff2a50d761d7a0a7b3d2f2ee05a01c26bfbff7a0
Date: Mon, 09 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773086693

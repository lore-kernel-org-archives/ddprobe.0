Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9113A258
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751508594; cv=none; b=WMBpryc+TyrGPct5A+Lfiz4/W17jr45ifbzjykcjsdili9aEY+h5xsDLxtZd7sRnubBMidXg8YsR2Yfk0zZ1lA+QT5IuZ+VvtSdJ1G2vC63knw2HUrwPWOP299+82sfjE0UxsFpqNSYEgh4oD6Fss/BMbxKftaHsW3whMiJwZpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751508594; c=relaxed/simple;
	bh=wuAwefUnuHXc/mSbQdirtYGy3K5f3cFUBMpvN75tt68=;
	h=To:Subject:From:Message-Id:Date; b=PZfVUnkfBhYbbmypnsxEy4ejXuXnI3mL9rplXvFyEFnoQX5ldI6l8G25iehvrBeqNwNQaUCrLGLuUFpsyaDy1H6N8gWGMx8KrQ2t9bWI2sAsdIkUKos9UgLhz1Z1Au8/qMA4CKqkegqLyzmjX4jQcqR10v4p/ifq1gkQOXAj0kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8h+agEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8h+agEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F15C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751508593;
	bh=wuAwefUnuHXc/mSbQdirtYGy3K5f3cFUBMpvN75tt68=;
	h=To:Subject:From:Date:From;
	b=b8h+agExFE7EqVaZ2+UWa1tk2fgxF/E6CzznQXnq3MKob4W1JvNcei47tX2KfV3P1
	 3O4qMCmpmzWjFDqHPG2koiWlrUkS/m9nCbG6EqVyxIq7HOOCzFK+KoxV+lhFRYumT5
	 m8NUOjdj3M7gdkGOsrQnxxsopZu0qqVcVPELDGRFkn6hsqvW4GQq/UWJDDaSYEpoGg
	 AK8SNhUIWyHza8/ne0ngUyIr24ZMQ3WrfT7MmuRJrT1yDJplaB/RpiwyTG+fLQo70g
	 jMRdgBLsokOK0JmTZT2Zr0WRgItbzeyqm0APKquKmHcgEDXHBB5jr7C62EtNU81d5o
	 Lezr6EMa62eGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E0C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150859357.25744.7642938784825330270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa742eb82f49a5287c6625ace728ea4de7afea1062ad24829aa9f7d06206040
Date: Thu, 03 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751508593

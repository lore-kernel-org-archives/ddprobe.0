Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F74526A08A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775366734; cv=none; b=hHyf4NueFRKWBZ+5ERM0p6/ZizkMQWmZICJYD63ABdg10bz7CmRbJgk6QvH5pbGYb+xsbOXLOf2c9ZlaukZcbCUt0P5iooW8h1LD7XeK2XJfthnGmpQKCykAGe82a7V2Gz5IN+Kmmktv9RFfAoKle7LOt7+BOX3S1QWht+uJkWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775366734; c=relaxed/simple;
	bh=ivfuRUlDnjna8DLwpR4S8YPWyMFhLa3B74txPxzurGI=;
	h=To:Subject:From:Message-Id:Date; b=QINlrVnl8IWHc+XxQN6zjKcFWCAO3VtFlTL75PSbBohjPwOZL5ZTdP0mvvkbRaLIHXHsYsCG9i/20Bev0rtXVjzJjxtYSSMF5PewhwTZmg9/ON37RnqQlDD6scfGa7oC+iaI2ku8mi3TSfDXsiA/HsyLkGMZH5/0khEj7EuEckI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cykRa/qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cykRa/qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B06C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775366733;
	bh=ivfuRUlDnjna8DLwpR4S8YPWyMFhLa3B74txPxzurGI=;
	h=To:Subject:From:Date:From;
	b=cykRa/qwbbGhV/1qXr9dIx8ynDMYZJ9gn0CArnadrTXR3Slntf7OJRoEx/5WdFzsl
	 22XmRId2vT1wQ47bnr9UoINsg5FiVucqHhMntCEsqOT+VTdDsSMUHzlguNoqsGIU++
	 Dz1KXSQYlgwRf1X3vo3P4XIMyTCtWdEHaKEZSeMc4FS97tLXI+NaxkjXEFP+M+TWwv
	 bQ1FM7ttKzT0TdQusWAWA7psvaz+YrkEQpZTk3Rl1cMMyge8jLcX5nOf/qaJt0AGMG
	 s3QKEoWXf9NzzP9wAW17Ew+I0NFOgXKfBf5qnAiyDWzQYgHywrH9gclr95UCrPs7P0
	 0YnxuJMjXigZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF297E64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536673374.649.6230465934246095199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62fdb9a204fd0481dfc93ab384c3b3c24de3ba7a689b42a017dc1603c1ff00b
Date: Sun, 05 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775366733

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5974263899
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758743993; cv=none; b=kremED3fFOkufO3/+W7mtvLjCimRShhLECcrqaP8qXTShj79uoZ2SlQ2PF5Q/I2rz03Z5b7DAP0Ly6fOMtBv+jIqTOqfKaNIo0v84w8e9Uro/our+muZS+4TqLi15gyqDenQ7f+8vGVbKAmvcvnhT91SBx72qXK6g/GfVAZIfbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758743993; c=relaxed/simple;
	bh=ud57tDC3BhrASgptWNBl8ofm7SLr83bHznJ/Z6tpjwk=;
	h=To:Subject:From:Message-Id:Date; b=Yzp1UR4n1PkVbf6RbFHb6piSew0kjnASzqLW/giZh1u9D+CXzcJz5dNCRe1YL7HHQFETjLxEy3bqtbdHJ2kSCG9L0RGKxHeGy12d1pV+AWHvtcDfS8ipXuTEeJZIDZLPROxV++aQMqAefj+XfLuWjTGdukGsc3/rJMzgJxdgNc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQHm2HNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQHm2HNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758743993;
	bh=ud57tDC3BhrASgptWNBl8ofm7SLr83bHznJ/Z6tpjwk=;
	h=To:Subject:From:Date:From;
	b=VQHm2HNbXUQZcYa392+4GxVgbcQq+tgZQmjKi3Zz3py18kJf41g+eHewStP0GWVLo
	 DQyj15ZOyc77tIw94dcrE3yKfPlqOdWU0aa08J/yclJfko3aAet1IMcYbEco/F5xH+
	 7JbjGaNUFtlvtdI9+ElWgqU3Oi8TojjgycC1n2OjYW1E6DfaK5BireNySpYn+YDd+i
	 eV9az+KD3b539aVq/3a5iozRZYmQHhY2CzDreSwmiUHKU58nrbIMuPIBFfJAo7PAZK
	 CMXpn7aANbaA5QxNOlfHyidM1HurezYX20uKmL2wkGxckUghzARP6kbdsJcx6xeo65
	 TXgaHFLkILJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B1CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874399360.24085.3382596633963093364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160d285a0a2d0ba765c33e348884612426fcb9519e3861d2bd5f1de8e5bf202b
Date: Wed, 24 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758743993

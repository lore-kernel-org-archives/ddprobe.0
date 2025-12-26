Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE712E63C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766709834; cv=none; b=OCKHA1/6ttVcayiqyTDa5eCxdyHbSdLHchwDuu3ENYsOLldyyqml0VKqsZ8ocDZrAUcC0WbglZfjqdJvS3ko8bDR6J9AAIu/APKJ7c6l6ViJf72tyMOVnEvwd5CXyIP9jDUq6WM44uOetng9uuDWaSvVb9aIvfweALfZMq+FAB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766709834; c=relaxed/simple;
	bh=NGzK+w+3box3bINTdDsVM6ZTWx+16Y7hAqvpHpi9/pw=;
	h=To:Subject:From:Message-Id:Date; b=bksbS9ZqSCKeKOwO5JLFdEBb3VjTOT60D1Pylf7ExyawH+LnF2opIAFePhb3eHYJ1NsU+7KQlSpM91ynGMpBdXlzDKm/o6XbF7xMOngEpIPelkG2nidNKzAbqPl7XSfDOBXDnK29zTjixQyKSm6/XzA3K31cXjkekcLp0tKf8+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG+JIYZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG+JIYZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF81C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766709833;
	bh=NGzK+w+3box3bINTdDsVM6ZTWx+16Y7hAqvpHpi9/pw=;
	h=To:Subject:From:Date:From;
	b=lG+JIYZdnKSglXxQ2YZi+58ink8QcqvUMeOaxJ0YCVneXHb5x1RBAdPPNtM3Wfddn
	 oQuLvPboan7cHB3SBcRqX8iyKVDuQDA9PMOYaOsvrFxG+L6naAwmZ0arG4mGe0TOIn
	 +pfpzNDmfbeo9KhsLePFScXJa7ah/fTCIL/WfA2l7pOsQ0GcBX6mNqKB2AHnuveR+p
	 i34Z+pmcid/h7VLPiYHYIegukgPtyozkDikKWIC5ancZ7hTfx0vGVM5ZDW3bAKVb3e
	 5iXQnqhggcMbZtiDI8/iU3TkVnlpqG3veXJzDyqvt+HQ5ZcqRm1xAxQ7r4icY7BRuJ
	 u7ulB6HZ5Jjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97838E7AD69
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670983358.18066.15135524203644580432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b80b7bb27bbb31a35f71333fa5002168695774f0d39621a36cbc4002469bb4
Date: Fri, 26 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766709833

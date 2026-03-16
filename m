Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A53F31AA90
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773673494; cv=none; b=Iw4kYtBHhH5rsyqu01hHMYk2IeZqh8w+k5P5eEPkfsyxwT3hnnheOEYXp5ZL7+KXA3BmWA89jrIXHEx95t18IwsfaI9i3zZr4guFL8Oni2eTOdCcRuWFYubyh7NmCDtEFB63xcsdrQMFw8kPU507aFtVUnV6XHu9MipSuvj8kSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773673494; c=relaxed/simple;
	bh=Bpg5snVJuy0rg6PSrZmcUdJ7oUEUiAAGJx6KjJNUErQ=;
	h=To:Subject:From:Message-Id:Date; b=AlfN+XSfYIiWqtjXwqH8Bsl6Q+DjY0IIMO02oZDQSUMFGJoHa/lRfXfrkr2hg5mMbUvqP2uVJkhua3kC+sMmK3FppXoLoVoYC6xEhBmHSbbDG0MqMINB/eJc0iGJhFDDUag27blBIMYcprZ0oVkUY8vryVdBfyjyAYwwoK4Mdrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih8qLl5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih8qLl5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C54C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773673493;
	bh=Bpg5snVJuy0rg6PSrZmcUdJ7oUEUiAAGJx6KjJNUErQ=;
	h=To:Subject:From:Date:From;
	b=Ih8qLl5EYqMBK+aSqFQZ4gs/qA9b6afCgqa2ftVwOrBN8g/fQa9rr6nr5fzz0LVQW
	 bWUwVJpZL+fZSCJkEW3BRv2T35YOz0gORqQ/j9stoZFd2FvV5kd9e1vAMQEcVY8W+8
	 5K59DmZqZkNaq61DQhMfcXlpjiCssT3coPI6q8VoUDzZJ+vafM4op9JZX4Gjman1wg
	 8R1yuWpSdvW2PspMFoBHjrs3VrUtPwnqVh025GlnJaH4nQ/89+JX46/Ab70DYX9V3w
	 td8r/mMKniX8icykYplYm8gDek1JpBkHn81+MT2IFMi6ZtW7pfV+CE4oJ4eabniBSo
	 s+vukXbcaR33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423FF53D67
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367349359.16435.8477728538567625976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38233b23f5efdc49607a76539136b8b93b839d6c594389bdaea5cf0b7a66ae1e
Date: Mon, 16 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773673493

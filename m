Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410802D5A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783792114; cv=none; b=qwVAWK8Vg0QMLclIOo6XZrivSaHntf6xhsfIRy1QGc7a76j+SSfKZYS+XQgs5lAG4lVV152lv++5ZPs8pC/Ioq5lfLNRUbxvSQzQOJx6H/gC4MBwG5PufBEhtEZeyRYSZmavS6voEUraclrz8577UQ7Y9pV8v7QOR00mzQShoV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783792114; c=relaxed/simple;
	bh=1JoxsQgf3yiC95cE+QnXOlBI3kQkSJHZGx8kQXMwHTE=;
	h=To:Subject:From:Message-Id:Date; b=cpYHSaKmrzdRV+ik0ESghG94UvaIGc2qb1xs9Xcl5ORWqG7chl7Mo4JeZbjwqxs1q+vtq5GRimrJU2hgpKcGm0H9I6dXHMQRKHOcNv0paGX3dxoFLEDxwYHSZNhkTSO7rls6iu5T7P1YpWsqwTEsieIBqZd7NZc+q+NrDcAQ4KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkEXIYe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkEXIYe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DF3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783792113;
	bh=1JoxsQgf3yiC95cE+QnXOlBI3kQkSJHZGx8kQXMwHTE=;
	h=To:Subject:From:Date:From;
	b=IkEXIYe4K6eLILFjXpYd/QkTfX7UPoeDH7JkGx8KbqpeFT51nJ9S7IalS0al+E4I0
	 4UhAsbWj9jAVywDIs8HR/2WSh/f/bOB6bMD/4mKe6uDCKAf/ReaJk5lqunO10eNXQM
	 6K3jUGYtwGf/AL+r2C7IDyrHoNFV3VTl9ibvJegPWYVNrQcqrENMQWWR+xboUpV1xa
	 2e/pSDsU/0QDyOuk63X0L/2bgChqWP8h0u+ZGlZ/mbXV0r/GWoO756u8rRntgmgm/d
	 2K58aoQiph+GmvhVQZCdVGHPQY5w+fuy4isLCPx7p3e6nJdZm1gXiY7rhxqpkYJfjF
	 MhVf0HoBnu7UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE025C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379211368.1128.205572432966229214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22810de0adee85f9b6e4b8d56f692fb4e60d2fe4b8c8e60bab63854f52043d32
Date: Sat, 11 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783792113

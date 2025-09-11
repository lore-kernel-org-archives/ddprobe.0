Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F6F3112D9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757585394; cv=none; b=NRpJsR5JN/AtmchJPXH8KVXLEz0pdzg8gnZ4EUufFsNMTmh363AYpKo0reL02H5D1d+LYv2pcd9sBvAkGnaC4aZZHLJC5Xfz4/qWqM5FvJp6lrh5E6BgmU5DaY5uRbSRtiLY9XF+TN4d5xdSm6c4VfB6VcVS7FaJXTRGVeJ5P4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757585394; c=relaxed/simple;
	bh=B0DwglI7BJWgmhRDGws1chi2pLzSjXEbW70j6LiQvsM=;
	h=To:Subject:From:Message-Id:Date; b=dc5b3i7uDA+fGxp0Eou9AY2grgcqldZFND4TqV8BX2dBn5lgswv+g8XPhdk/anPIgsrRG2aJljRU9PjB57vTWT4if5ujA/x2vhC1HgS5UiUjkpYmoga1b3f75Df7xiyiDTYGYjLmJx4oR1CK1M7RV4LIU8AEw2eapaaTRAfOWTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ2SUcpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ2SUcpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0699C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757585393;
	bh=B0DwglI7BJWgmhRDGws1chi2pLzSjXEbW70j6LiQvsM=;
	h=To:Subject:From:Date:From;
	b=mQ2SUcppBy+EvFQLTaMjFfJCrAYIhI+TD4p8/39aQRqK62Hg1qkIuJ5DCNlA7DD80
	 5OOkU0ZerjPXDkJna04vIdgNh86bZNdjeDGX/vlLtxAgOzupaFRqKioh4nkTE/0Wa4
	 1545VF9INCpNHGCyX933v1sXLap5JPvpY3aubhU6A49/1ffzEHZPRtejC/5vIurYix
	 z9hORt5YtLAFruD03oZ/NouahCxcZFcUO/vn+mqaJOBwtFsEHbGgqKQ1ezeftlPEQn
	 iB29rDJDyBfcx/ne83qaUsSBKaKpFzH6fMxPnuWQjIqVwTM9+8VHpKULM6KWJQlB7L
	 BPkP5gel1eiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0DCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758539357.22954.10775130885413851386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8677591668b1705f028061ef9cd7c1f59d9730fec2905ebaae22431db2c7afbb
Date: Thu, 11 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757585393

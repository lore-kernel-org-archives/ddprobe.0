Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0374610F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710123497; cv=none; b=ZbsJ1PSLQVGiguziezfwYims9DTfxFo2tJxhYGDlT7Ix0sLyl5y2ZuocKAWfK/JNtrhy2xE0fiC28u/7IQKMsfFRgYV7Q/r/KKgRrcUWvWUKZLT9cmcGjFamzPGlXPuHrNLyxOgTxafvPqT5fAujwuBIcXuNSySeK7fAbR+C4MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710123497; c=relaxed/simple;
	bh=liWcQwKrDrZJ5DnMNr+yCPSk2OJFXGI58N3T7ItATus=;
	h=To:Subject:From:Message-Id:Date; b=hc4N2J1JZw/iTbDJVCqzjl3n7pPqIjyfMn86fiD6JDZ6wcA5M2RYiCtzq4CTHxymUPzFf6Qrx/YruI7aJJA3QM460j+mjDhpXYdj/vSScgi+qAnz8PFSBx961Ev1xjGT9L9EmZRYYWa31A8wbk1+MGele/fLwssGJOeWD46FXrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/V64F5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/V64F5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB05C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710123496;
	bh=liWcQwKrDrZJ5DnMNr+yCPSk2OJFXGI58N3T7ItATus=;
	h=To:Subject:From:Date:From;
	b=h/V64F5caLfe/bEOybwqqUIv8mNWUd3sFeZd6hoT7piX9SRwA1nLsVIw0ook1ApZ6
	 WPwsp3dr3V1fUpwyvtoKAnbKxYUrKdxgFzwnwBiggovR8OAXnocGtmHYwPY0XsT1mb
	 eu4EikOQIDlzq5b7j3hVElQ9qwMLBCK2FgMCvki002A/lyMGN4GZ9PQq+WholDJ52P
	 G/pggr0jN0hdxA3/7hI5ItKcxk4Xfx+0mUWBkVDh4EOYyAKziPRltFEVZesAVc6s+A
	 OptBVQgO1EAXChmpmnFV5uEdu8vO3XIxd0g1iD+5azByjxFst6spUqcz6MZEbkfa6f
	 DZfTupy6lMuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60621C54791
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171012349637.25923.11138708989559389376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5a2740e257f04f0463a92caf43aae6d17cccf2db6a0aaf5931d18ee8099ffc
Date: Mon, 11 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710123496

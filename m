Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B5D1FE451
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759181993; cv=none; b=DlDBF3adXOTwfRB5WAh85EkMUZ+zHJwFHQ0pbl59xod92lJX1NrMfX8xNn8NyFLUIrrE5tgsprXISS4uGhOf6RxJid3oNi5W03oQd9ymAhveD+LjzsFwI4vvnmOCL3MeCCW8L2i9u7ME8BDkppq4G4VU9+K5Z6k4vpF4BZN95wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759181993; c=relaxed/simple;
	bh=eehFuMc3vN+kVYxG9i7QgANd2WUe/XY135oeI2VyYSE=;
	h=To:Subject:From:Message-Id:Date; b=a1hdd+TtHYxlLFcZ6AuziVYrwttdjSOp4E7UMuIHPdd3daQ0pw8E4GoUdaRYFLge9ghbKbulITgoVB9JbUWBcobhQzdygD0lX1irxHzB/se4z2+fmF4016ODg+XaUA4I6zqVtxZnGOPX4aZZcGUKn5Di2Qw684zFVEF77yjEnkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmqgicxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmqgicxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759181993;
	bh=eehFuMc3vN+kVYxG9i7QgANd2WUe/XY135oeI2VyYSE=;
	h=To:Subject:From:Date:From;
	b=MmqgicxRWUTwiNhE4x+6Kb8GYvRl2MedK8oGz4Bwr3Zvqm7yYmNTgVd2TJ4OETv07
	 jbl/w1ChCgl+U3Brfi5SqGgAUbg2IuOYqCc4ZQxBESitJD1BXFF43L23MWgmnKItco
	 MMWnVfpik7tkD0XBrT0r8/rV5VVnkOHcZ+/EG2bDo0hU2UjGfgkLJ5+gz0MJSWU5GE
	 qggG6cgbfMW9wmEygZSQu1QFEdd4ZQ6ELdqeb/4UNwgJMHjx0LegUs2W9cHfcyvUNA
	 8icBFHowFjgCCUm2yUx9KkYn+KeDRv6niWvkm/43QUDFzOO98sSC1A5Yltn9ZTSY15
	 v76MNfx/I0OMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A8CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918199358.19061.7608214283061307782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece6bdb5cc0f25bd69cb58ce7b8096b4f8e00508625c95ae3e1757f2af54f121
Date: Mon, 29 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759181993

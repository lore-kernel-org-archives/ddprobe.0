Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C04A30AD18
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757336994; cv=none; b=G7CU0PkVoBtfXINgcLIv4snQP0I/oMPRKwRUa5KWX7SO9PomVyBdeH1ph9z6rBkSaqQfSStCVfGz65MOXHxJbiroJI7xYnlrizyKA1VRflv68iR1lsbaxpc5CMbvlXNd8lyrgg+IbUInobjI5GVU/rzrTso2BTFAody5mHAdjxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757336994; c=relaxed/simple;
	bh=qMmi2lo5Thc1Hl5+PYyt29Uc2M5Hpzn0OVHtNf/PcL4=;
	h=To:Subject:From:Message-Id:Date; b=tDzIt0B3fV62J3m+j5VDO9TQzsVbsahY2I6YotVw/O2P63UJ+fy6j0oHD8jaUwIR4Xjduih+uPmDCJ4b11a7QZlSLOez69VBHINQxL+1GrAwH1NSuQaGRydruMiGKl6bsXa0G+zE0MNQTr89n0SjKVMNbHtApXazLHdERMpMs2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc9DZ50Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc9DZ50Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757336993;
	bh=qMmi2lo5Thc1Hl5+PYyt29Uc2M5Hpzn0OVHtNf/PcL4=;
	h=To:Subject:From:Date:From;
	b=Kc9DZ50ZLzEQOeFqdDlrAnH7vk0VPU/AUWOpAHRxmMgon0TYgKPk/zPURS83sCU+M
	 onAol4V7h9GRHRWa02E2e5VRGlst3IyHpUO7HkNEyoQTx7k7Z74TcrasthekldIU8X
	 NUj5Kkdyb/wVdlbdG64uKdkkT4XywlHoPO1xVzHD+GJ88uZxqGj2XmXkkkqeN5gzke
	 1FYY03go+cPegalebmw7VkYrU8I/P1NRS1tqCYqo+dtCkyX5Ole62HHADvr3RJFVe5
	 3/I5PWdLiKs/RI6d/Ttc0ewSAs7Ua7XV2YRTD0J/XV3YhAVfcLHnQNKXHSLlbzJysu
	 r0TnqZ+51HvCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CBCAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733699358.2028.7055388106457587788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d393a637258914b458d4160ac86adb28a7fd80570108a40fa10dc739b43a72
Date: Mon, 08 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757336993

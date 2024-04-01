Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118B250255
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711997897; cv=none; b=HNNSXVU2i0peZK+lkbF+uZL/qdgq5E18SJOZVOBUmN1MCLzmPQQ5hHkyV+QcC3ZLYs6ne7MmK0ok/gYZTGOnnQpyZzTnPZcZNEVZ0rXjFV+eE+F6mkac+lKauR8orZOp5NQCdXJya2oBMgoJi592+RlLhpmJh68/9syS4mfLQvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711997897; c=relaxed/simple;
	bh=tmTWds/E/FkhVtGh89dU2lGHoB+Omht8MuGuYmaPS84=;
	h=To:Subject:From:Message-Id:Date; b=uO7OpZpzOKady/8buiZf2seJPgIpNZLFb7lX1BUTrGa8aVtaZknmgbQkDh8flf4Pl6l2VClvMtAEk9dMA4wgFAERfUMS/7LZoUMC3d8Q4s1hxV1fcW/vq7ZD/5O7KNhRYEU1tJoGyo88iO0N13Ul+Px2LQ5wTjjZDSQVgIqS9sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVw2Olee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVw2Olee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EDBC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711997896;
	bh=tmTWds/E/FkhVtGh89dU2lGHoB+Omht8MuGuYmaPS84=;
	h=To:Subject:From:Date:From;
	b=JVw2OleePq1ZoRnTWfjzHwTPzg72/RvDXgxMC+MiyFg+eOwgPbTNUhSRboNpSn7Aj
	 ux9xCzUGSfaRKx4aqd9WwJQvA2/GySk9DDjoIHa0UqKWnamwJVbQRQOe7WDHfiqHaD
	 UT7bTy8yjamxiMDJ2LFI+1uH16RMzlFSkwBXopljK55jgDPWEdbq0IIx/rvwKBDs2J
	 jAf0XKQyixw+Ox0bLx7sjW2qCXXe4Q6uiQKxE0zTfnDrHjJaHhPlSOOIXYTVuojhxv
	 PObMKNZ22mbEEpfV1wCSlrX8IDqjyPhAfVMtg0pQZDrhv5VWT33PHkVGeG/Lgb+eAC
	 HepeZdcvrQGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681ECCD1288
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171199789641.13150.16507553214114560030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7969b8ac1c3e595536d8d90959a871d450292a827c64ca5ced735d3f93afa7
Date: Mon, 01 Apr 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711997896

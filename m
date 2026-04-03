Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1692ECE91
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775255734; cv=none; b=kP1tIkxxEX6yghf7ByFWDijjUSF+8X3dUwS03sZVFrKTc5pXIduk2i2tkRET548xDzEYXiyP6wYU9EkTnzRoSbLSfLT8g76NN2oUsuklleAbGNP1ZabxDCjjwm7K/0Wq8FEU8+GWpMi5zYoYfqrqL/sIUaMLQbrJAhokAAmh0Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775255734; c=relaxed/simple;
	bh=XVBaj8HGUS4ctc2TKf0C38kRD4bk+v6X3U6Wfzedsbg=;
	h=To:Subject:From:Message-Id:Date; b=okhen2O23qjsN2rtM3F8nFHuOh444hIqk6OmtGNJEXKBXyjXJI+5Tf9umSfKzD/DBUTU0iEllKTutLpOGJv7vzgWmoNRge3oX6K/yNfv0o9/YJ8FaeTfJr2J19TunjNZfYvP4Q0yRaio+j2/ob8SUcNaNYTaZBxWfdmfjYdg6DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSNEFBDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSNEFBDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775255733;
	bh=XVBaj8HGUS4ctc2TKf0C38kRD4bk+v6X3U6Wfzedsbg=;
	h=To:Subject:From:Date:From;
	b=kSNEFBDxsNjUQHGRZQZZ8Wf+sVeIUArjzZrzvHOWBSn3MkDx3ExokjiNTqhjBoacr
	 e0GOPsdlxbVJswmpd5bPlqcJjyE5f8RG3mFaYmaVo4a44UGzewDwM2ZmXE3d2hisj/
	 jt1VDfUsOzh+XLmCKXvcXgavYd0g6A618aZWYzYOZLgDpiiXfDYLqP3JM4srrQyRxU
	 /RL8BKEMDQMtNTKpJDgnKVjkwWYwohMRJ1H+UQBRc7rHx4tQs7BsyOIoyL0jf9V7xY
	 eMO/H3I3GuvojF4dSEo5FM7STRwGCwYtEcHCKGYVTH7RQ2+ZFefJYtDbaUI3r0Yz2g
	 ZHG2YsJrjUuqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBEE88D6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525573368.13151.7745337155694911115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680cd696243b8c29e3525d1267a17075d85a1b6fc6dba75896389bbcd84ed5a3
Date: Fri, 03 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775255733

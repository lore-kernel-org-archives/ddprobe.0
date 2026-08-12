Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ED349502D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786575034; cv=none; b=KDfM9s1jyCP+bj0op6PbJgxOBF7+n7NQoWUkwqOvoXiAYIqQ5wPkkq/CQ+jWmtS5ddhbu/gt8gElRiwOKVg8bf36xq8n7fKzSVps/TInvJyLq0uBCkwRC3rlvuXO+SHCdLOEf62jFUwnoIa4OsPyG+/DvLyQJcg1GA2xBhi2U/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786575034; c=relaxed/simple;
	bh=39yaoK2T5c0N3QP8WizYbnkxh6qgEY0kbR34squSbFg=;
	h=To:Subject:From:Message-Id:Date; b=SXuYgCWz9Q+bPy3o+auIil3y115mKpyIkQmwDmPoDzDxSSazXJpHpeK7kvwk6m2JsbM49jEqQferotW6ffqJiCVgpAGomQsPP9b6mHuRgaDkpys/WCEUx0IZz3IcTth3NfG7mtEoQRVFCHUC30IcPHJ8MOXf7EPhcU2VMaxBjN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5pieKgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5pieKgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE908C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786575033;
	bh=39yaoK2T5c0N3QP8WizYbnkxh6qgEY0kbR34squSbFg=;
	h=To:Subject:From:Date:From;
	b=d5pieKgu1ENfgJ+lL5IujoiRRpMP+ix66s01kvx/4RetJTSr+qx0pI1aG6QSpFBLR
	 f9wr8bTv6hauP8RpuauQBml1yKNR52OzSnVjyCR5OyBlwp9K4/i3FwpF+xVdykG15V
	 QtkXk+YGj80B96jvJ9itVQnWcX4iR+XMMrbfTUHoOKTVG7CTRzNanwmNShdoqNGBW2
	 Bp2yKsrCI+Su43Ny5naf6TTcoe2hgYMXQp1gijeGgb827u4YNhjiYjj3GfwAm90up4
	 u4BqKIUvw5WjrsgnirTHOt8tqTZPOTrGIwfbqgh0H/wfQfV3XM+KupXCHqacTO7wZN
	 TNEoDPGmfvuuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C0C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657503368.26362.13753039716941134686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ab2fcfcd4b5a76d3ffa1885fa11b710e77d930e1b8ed238adbef02a7c0bfae
Date: Wed, 12 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786575033

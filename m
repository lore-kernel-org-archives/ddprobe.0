Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E00528EC
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744591194; cv=none; b=XDGisdaf9ipCamWoIHq/YgfgRT1EgPiezrgLSURHe+zVzf23RHGnL5IxDxIQp02JJZuJnUoEWXC5wFNdwGKaM3EYOhNYW/5PZ6UlEeY61kxYnMG6c2GCQXErza4YM/jUfSCGlEFxCPavDwppGpq3N2sI1G1GXOdvnjcnLsAfntk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744591194; c=relaxed/simple;
	bh=FSfTOGG89GGb0Izcn3Iv5OvgA49XOTd1IqErQRRtcnM=;
	h=To:Subject:From:Message-Id:Date; b=PHfacOKa6Yq4opUPU4kqMybPenoJZOrDCt076/rwYKHLuhmkD0ErXxybCxzxw/ddRCApnI6NhFLC1JQrCApMbNs6ySQvmY7brlS5PO1IAZvVeaG10Q84gMUn6MdS91UdRFn4exwWHvvlpDOqY2CIta3VqqqJq3OkTHflhtjA49I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnNucRZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnNucRZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB809C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744591193;
	bh=FSfTOGG89GGb0Izcn3Iv5OvgA49XOTd1IqErQRRtcnM=;
	h=To:Subject:From:Date:From;
	b=mnNucRZNay2HXUY1eF/XBWuy9uE68DVAUljci7WuqEg3Y2FcuzUEOOu+G8Pq+vQMg
	 0WBf32J4JbRY9i6wtpYVmf95vp9+E8AoIifcKypPmIznLl9aMp5J3XQYZyer/HGA2e
	 9aoBZj5e3xVssFkbptN9piwJ0LhNmRhPp7CsZOXfkt7XdIfZ0/q8ohy2cGqtWDWUsp
	 +6eaKy/T+/I4F5LyrGnXoU7eSpCK1psNDx7pFKm16VhOtr7oUlEfPXpSzUqx1nCmb1
	 3VG8diSN9PfH3ZkRr3Y64Ox4kMa03PcEhqqyvY9nwUrGgah3hHRHHwbkXtXo9kdC3p
	 b708Pgmrci0iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FCFC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459119359.24507.18374133142949289762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811ff0e7e3fa6c02e9633468256010bf7dd6b33041f9ca8e249ea6a28ff042d0
Date: Mon, 14 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744591193

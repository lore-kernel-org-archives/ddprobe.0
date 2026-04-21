Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D53A3835
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776814054; cv=none; b=Uy77B4TJaILup7yv9Otp0Q09GI336WFFOn1tocuBJuzxQGuGLbvFfbtBrQ2WcNA2a3KivGt+uPhJlwlqOLBzMeH5hgl9Sf6M2S0/8IScXLpAx3OEVtrfJUqHky6UgxwIaADRY7U6wD/qtB9B87nKS85/NYAQC9l8F0DZzi1tnZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776814054; c=relaxed/simple;
	bh=TGN9lClXy5o/bTWdmIBt8b0cITaD4W+qpXcIrsDLpFM=;
	h=To:Subject:From:Message-Id:Date; b=IyUMCpUrUI5+OHMG/UwfvdoL4VlXTw4x0qHyF3To9fi4bwF1qLCVg0E4ga+Wq9E/AoCbt8W1dHhmLogyCaz8EyYvJEIfhzoPjjAGRPzGue2SFxA80ueBHLXqXYsJOpI2MQad8U6N/Y1nt3Oz70RDHTl1ssgadiSV+A8uifPdz9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgEekP9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgEekP9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B746FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776814053;
	bh=TGN9lClXy5o/bTWdmIBt8b0cITaD4W+qpXcIrsDLpFM=;
	h=To:Subject:From:Date:From;
	b=cgEekP9Cfk40dyjdjJQfCW25bTrqZ445PeMi3fwlD8L6qXq7vlWWb+ZY51WMNPzxz
	 kqtYGgcLoYitDnd9frO7784Xb+Bv18sxczwPkv18nbPlQq9rdhKpWpdDz5tPKoyKG0
	 TA8ozZKzyIODB0TS1wXNqv7XEzGM4kld/VY5U98sHFTT34FdeaVOUvir7gAFQ4B+Zn
	 UNtgESSbsvtIVKA+tRudXx+EDHFwAZiE1EG9zM+UYlrp8IPC+LwrxcIDx44PKKmNoX
	 GA+zEPlDuFfUOb73c/sYf3IUb2H4vHCIT4dPxcKRde639YgBSa2Y4bRilPjb8oPxzx
	 YBjc2bCjGYa9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDBF94CB7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681405368.30623.202806014608142907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbba73dbfd2855461eae5e48c5aa121c1608db682039b6b9c9eab8148dfe881a
Date: Tue, 21 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776814053

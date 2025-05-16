Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D4B224225
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747434594; cv=none; b=dOlH7mxcK6nbAaV7TOa7mfsimajwvpb2qV2GxnGifVhoyZybJc20XE/5JNcloPBzeWrnp7whrlL6uF6C5DgVX1sA5HULLeQJUyNbI0eOsZQZs6KeOfbSc2Zf7gYmBSuCnoFJ4FfvLk42MAprhF9HPnlkNso1Kess8sWE8h020Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747434594; c=relaxed/simple;
	bh=Vyh5Bi4Fk54X+UDYxLeJoqBskgkrWmV9jVJvVixWhUs=;
	h=To:Subject:From:Message-Id:Date; b=OTySApH5NlVz7FXFymcElUFg/1BLSu1V3TezVFCHdlTam/yAxofGdBEGHk9WOQX++SVm/OqRAoU0qYbyHJyd54I4/MSFQ5YYzUU0VGJIcULtZ+dQC9Y52yv+xLkNDjARYWRMh1Lfu2QK6Q9TiEOqWb+7/p1oJcU0HZjSBR3ocRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5zaThzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5zaThzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40DAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747434593;
	bh=Vyh5Bi4Fk54X+UDYxLeJoqBskgkrWmV9jVJvVixWhUs=;
	h=To:Subject:From:Date:From;
	b=a5zaThzm5ywCWDeu45fY2TCqRIDkocJxITnIjvZymspMzZcm8uud7zAcDY+PJoD52
	 cuG7N4hYX9ifFjfqMuYahe0RmF6PzWbPVt3+mLLccNuRGKtES9j1G4pIiSxbakQkJ9
	 mWtBhqfhjwmifZSszep1fwzi9oOJGgc5ABRk+udZimw3YztX+6CdDA+q5iGrdlwETa
	 9tNBtDwXe9YKXwEEi4ATTK1sxzuQe7cImFdifshayrgNe2jrryAM8Nv9TetmxDWa8J
	 8GwJQ//761ts5zNG7Cg9G4fVaaDrcuESjf4pajZf8hyDOvJY/o5DsD4cf3jl0Vtls3
	 mlMpZpYqibdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F1C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743459357.8333.2308840575954741581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40433177383b2347ad77d5056179ad3e921467c2d288a298779c7ad3e44cf18f
Date: Fri, 16 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747434593

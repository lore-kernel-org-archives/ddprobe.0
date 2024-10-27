Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D211741CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730059554; cv=none; b=G9AFaYKQNtw4d/Py7BdSlChd0dIum9mmGJD1S4V+E7h807sruRsqnmJ4bsg8GUs73xtlS3RPaLTfBcj1Kp08MwCBgVeUTT/KgHiRmTtg4qMnbsQk8OOIF0XqjKz6tK7h53kOrQIUxZTZW3d2gxdjDyqvZKbis1LLtywhdDg58cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730059554; c=relaxed/simple;
	bh=aU1OQoIJZ9QjdddX0dp1HIH9cntXDD0/iC6E4rMsOUE=;
	h=To:Subject:From:Message-Id:Date; b=q0OWBdF1vJaBu9PAjRHoIKhLhtPcCXpNUwxq3YOcMUw1vrRr50s+dMkVFwV7i3gJxfn3kaK04uzzj8z9uxtCZTFecSAE9s1G84DXZB/xBrnq2RSZxvtFUBb+GvARtbj/9xyN7kHDiJxGuitO5RAULjJV8ppT/VOLbjN9yTTx35s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/Xb3WI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/Xb3WI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDE5C4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730059553;
	bh=aU1OQoIJZ9QjdddX0dp1HIH9cntXDD0/iC6E4rMsOUE=;
	h=To:Subject:From:Date:From;
	b=C/Xb3WI9IjvkLauZN84EVIJa28ZmLYK3w7ObFAigCgQxWLEqc2spcHftn0PLxx9LF
	 90RJ2baYajLnU9jEpNllR5tX+qmWV8Fsv6tEPkBal+Es/jFavJl1bGwA4hY49FZFaz
	 +vWZW3t/hjMljORT69178wYBiFTpb3/9W0OElZPmih9qPz1Yd2aOR4PBom7ZeX7B8M
	 MptWIDFwMzRRN9nHaxtqOeGiclN+JVi4q1OSWB3dwySol9GYkfUpO8syYgm4PE+6OL
	 fxjpQ5F4TDc/B2t1B8xjjSaZx9nLBHntwxBI9saHqWOk985eCFm+Ik0gh1Na4JY8np
	 1KMRRH1cWo5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99561D13580
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005955361.5771.16633748800775603435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75300f0bce2c624195a889baa85ba7f85e5ba4fd685fa8e332748a570cd0855
Date: Sun, 27 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730059553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2633C145FE0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746755394; cv=none; b=c3pnLsxr6fuWK4JitafxNCF+reRcwF+GlIx35CVo4nZ/y7wNBaKEfhR725ZcFSMgiUVeVm4tlT1lamsvlwRxG29a7JRf2VafRICD5yxMr7PYpm9WjZrZbeKDGmFgj2huAM8IGU3cpDorDb9GDOOZW8s0u3gcLAHAW/0SkwK3ct4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746755394; c=relaxed/simple;
	bh=HbfQ1HZDTqPHvGMkZW7aeTpRXTPF4vBNDeM0wuLClfY=;
	h=To:Subject:From:Message-Id:Date; b=WDVqlZcThDkaK4iNBRNNPDgaaak9haUcK4CGWADli5JVTW5VKMPfuaJaGByDBcEnDhIL9AAQwuICRUBSR4mI0nOWxytQG+mgytNT1XQiLC+lSzFo0pWOWEpBkKzfZzbJE0qnFw8RUIr/WMbhpNmlZbnqSkG9XlGrnugnRfWFKYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUwXq+n/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUwXq+n/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746755393;
	bh=HbfQ1HZDTqPHvGMkZW7aeTpRXTPF4vBNDeM0wuLClfY=;
	h=To:Subject:From:Date:From;
	b=QUwXq+n/KECxr8Au9q9awAiVkFsquIHxgBxvZIiHZSCGLNQborYb46pc0cZ42AMvy
	 1inklj3eLbKd1aeXaUq6xTO1iLQJlEVy20s+tft74MF7HaUenLhLB1XY8HnujlEqUD
	 sXd7030sLcSSCWt0rOrHEaAYCaTX9eGpJbIZKVPSkt0TtCE8BL7rFwBCB5xno39V1E
	 FxnxE/JKLO40Q3wd4OOj2nCPNH+JUFtIDjMZoma9kVt19RT8NeES3V4DjbpEtAs7Ir
	 wefqZmmAPOWOWaH8CUJ4DPbLeYoicPr0nUKMwjQMIw5t3yILq2YsA6yUKcJ6Pkknhy
	 SGIBKb9CSyeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A1C3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675539358.14324.9052686149344739702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c8bfe53866f3106e10ac5490ac3bdc96a04fb46a17e698f4069afd2900214f
Date: Fri, 09 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746755393

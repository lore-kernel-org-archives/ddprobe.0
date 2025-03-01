Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECE0258A
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740798534; cv=none; b=BQuNvh1TqxtOzRm8aVj9PlPeFDmgSX4sIOSwxte/Ucn9azROxbzEydBwLkAjTvKTpVXji4nsZeUMqw5fO2z4tYOcrH0KAGCR+Fgi0mi4MKP8xkvp3C+cxW6PlCgI5OIuZHAfAccRHokqjTumq9SG8PadCtgB5WG+kbhupcHYtDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740798534; c=relaxed/simple;
	bh=nL60/jdR48VH1aSUQGMnYixgkqABAlyzjMwrMq1zFtU=;
	h=To:Subject:From:Message-Id:Date; b=EUCGiXXVELFz4X5jJcv0LS4xcrtMfIoPG6h1dWbTwVIVzJSn7OhW69QWFLS6cwiLV39KMcltjseAohJUpULuW6feH0aq60t4hlhWW9ZIsrHhI40Hmv0gysgqwbNzg1HbUVq06uiiEnfkdDmhYcBgKTqIG+orOVDCfFMGDvT3ORk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev76i/wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev76i/wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740798533;
	bh=nL60/jdR48VH1aSUQGMnYixgkqABAlyzjMwrMq1zFtU=;
	h=To:Subject:From:Date:From;
	b=ev76i/wDZSMXnkfNX0Qe4E+ukWy+fcWVYjhdijwlbBX3HVwQWDcNy4aVLRcOOkGvc
	 9v28bzCrC9j6d+4X1/ROoGSGq7oyZhyL+/G0cltt/AOy+8bCMIEwof1j20jHa0cj0Y
	 FXIj7UnlAG+lfi9qd0EAg0F3s2h6y98dtmPDipFVbsvBBa8Ca/XnrmEFxi7al//PzK
	 gLlnpwBNPqFj4MfF3YRMir/vuFT9bLy7oPxFkZfPZ+35nj7uw9GLV0trKlho/oPTGN
	 qGsphG2VDArNDbswMjLtwTd8gsOLKLqoHZryJvnMKxodqZcsPkI0TAF8C53Iaqnn0U
	 qGdCio8S577Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F0C282C5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174079853357.9465.12510205420788756675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3592a52d4957512ad4c3713c983d186cde44849165fd4fdc7f46119988914667
Date: Sat, 01 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740798533

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49913241107
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739039154; cv=none; b=E9dmsZYScVe2+lmhz3cF53EPRWFnfG1ziuTrR7tUtBbPmA7V5QZLwvT0166B57FiI/4npPq+KTDJCfWnJXFURK6XCGffKXFmuQAZBVR2aDfhUhTw+H/j9E0e2gOSVoK3hCJqO9GPgHoiTWZKLRqkGzmgLDdGuoSqbOVuy+JIKLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739039154; c=relaxed/simple;
	bh=ty3htsxRoRJX//xaEQyLKKZpCE9GVqNTTxNCTY3nu6E=;
	h=To:Subject:From:Message-Id:Date; b=Ei7J/n8Uz9J51kD6YbFEDzkK/StZoB7NV6Q1q420DoaJMCSxMs4eO0JC1gSfvdcDFcUCJwAZ8rKXyt8SenD3Ifk2Q3ZL6mYwHHurXM9gknRZI9FDyQvLJ+6OJjPi8uIQwMCSdTdV0hGeebWRLhdrbheUSLq6F7epuPSU/cmXiGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSfbdqj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSfbdqj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CF4C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739039153;
	bh=ty3htsxRoRJX//xaEQyLKKZpCE9GVqNTTxNCTY3nu6E=;
	h=To:Subject:From:Date:From;
	b=SSfbdqj+YKsdZIbttg2Bgmy0+zPLXd/vgOGYsMfvMbfapeFwLNbZVShRV+e+jxqjT
	 mp3UhZ0Zle66gCSkPmLGS6iljcLih+ep/GY/eiBRBp5oMUk10fzXECQLXshB97VuFv
	 MO0+kxCStf5ZfZlhrxPkjeIAmvYs03ulhmNgX45eagYXhVuWg1A1OiWQJA4DMoxN+C
	 DU+bHfOJRfl30BIUN6ADrzrEXwnLOAVwwxn9WeasJas2M/zCdUL4mLks/RlwcGgppc
	 xUEXKgBES84tlUucq1UawxC1K4zQwJgnF6Gn1mUPhPc6yfCbBlKQcHaHmkyF6puG1b
	 K3n8IjkT+6tvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFC9C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903915361.13966.10060395732907418792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8245866132ed2c86edce18940e6252dd3501805c08c1f11948f74f62ab3a60
Date: Sat, 08 Feb 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739039153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D51B3E9F72
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774458294; cv=none; b=ZGyV7umfHVXFA0/bWube4rXAEubDje68SAXOhuMbiFuv4EMYEHz7a1m2BAMHoavUEdnC08wO8XrU9wDn5dk08o/I04i8xwzWxg+L3dKu1AVrw64pdGs7zVJd+mHYTpIrbRIBxJITQQ1LFgMPucKtpc7U1AyHQuaixqBWq7D5RY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774458294; c=relaxed/simple;
	bh=gif3+HZ99sU5MHfFKOWmqJKJcUhZm7ENoS/eHOOM5z8=;
	h=To:Subject:From:Message-Id:Date; b=L4GRHJR9vJMjBnY9LtY+rcKcnjgJun844SHXXNyBWbr+HUFSIgtt7tfWThSGy3+bvQcil167uVlooKByGG9C5ty687evQA/gdPUBQPzQlM3JpuSYwRnS3gBgyPHynbdsujKjVj0qk3Gi+saC0dmTGNP4KurR5AePp7OWkspjFV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFnYdyIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFnYdyIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9258C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774458293;
	bh=gif3+HZ99sU5MHfFKOWmqJKJcUhZm7ENoS/eHOOM5z8=;
	h=To:Subject:From:Date:From;
	b=kFnYdyIjArfLCFJRYu+ZMjAm+/gZ4fs5BxtLxljipj4S18I5Gqb6xSizKDa9bYUab
	 918vcSkDbvO8yucs8IoXiR2A3T+DmVwgZXexjzJaXCUYnf+eDyu+203xbtCJ5pENw2
	 evWoL3abqgW19UEqLrZbwkYs/IG0zLUNow8PbYxmBqmfoMAdLMErTV5aem6iHMOtx9
	 vEwezm7Id/2pAko3zS8v2s3/VSV0Ejic4yMNhA2+yGXtNOfoCEOsDh38VxBo3rs1QH
	 F1vXv/MAt8YHgY50B3QybmcaGnc+qaHmZ/NYHFp9nW4V69EPuC9sBzA8W+E8lrwFKi
	 T99RGsKQsg6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F0109C047
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445829361.2042.17527426860874674001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b45e6c9a40c5c09b705384de195a15dd8277e446a3775a3c3b442992349cf40
Date: Wed, 25 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774458293

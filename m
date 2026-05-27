Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31080364950
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779893554; cv=none; b=eZynh97WVhRjD3C29eU5uleNgnSgrxRAPBP8OH/yEBr49uA3d+HTJzY9tRVH2AInpfswCjBuxM7hyHAHjnWL3JyGDw0yF7edpa8tH4BmyJD/JNh2XQ36IoovHNS+oJ5vqllJApGJub3jGgz+FJURdesY7BI3WqyEBUWbucLob8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779893554; c=relaxed/simple;
	bh=Rq4AyISN62u+wEIYq4OajFVRPzeFKefP/3D4B9NvAZ0=;
	h=To:Subject:From:Message-Id:Date; b=RiOLnda9ItditZW3veGcwJQSr5g+Kzj4Y2JOFWcREHYx9d/l33/rcj83CMLuNSjkkLj+laVHC4i2H4u8WUdFNulhznGLLdEuiQou4dehFeM3LFVMks4Tpz+xxA4L7pK++jqXUopTgTZm2MvDF/dMax83hwhMvoAVXdlYywNGrQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaqAsuzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaqAsuzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E17C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779893553;
	bh=Rq4AyISN62u+wEIYq4OajFVRPzeFKefP/3D4B9NvAZ0=;
	h=To:Subject:From:Date:From;
	b=QaqAsuzQRr7yk9KBdRSqG6aqFlEni0o+flvyb5y53JKT7R+ugFqW9Npf3eA0oEV7o
	 U5WltmTVSBpmhyNfYZc7h6CiSpbJxZ91eOF5tJoJAZ9zgeqD9sAt9Z+9Rb/pmYBkQ9
	 Mz4YXA4n695bGNDK7ZzHAcgFKJyeqC54TGc2ehatXFmsZXrI7Azg99FrQ/9018C1v2
	 rq7t0gFK76z9o8/0JAuBHg1PIHg2GHXUibnODBZsvcawcJdGHZuDM8LrsU0yKRjbGJ
	 7BjwC/yblmrA0WVNWVQwoJ5dG4XUO/axNuLneL4vPiXiKjDh7PBuTOBpKjyJbpYD8J
	 aucGcqkJRFpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA21CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989355370.18572.11009117462762060477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51dec035683cdb8de5ff8d4ccefe311ff7735a2b4f464087145d3b5f4df020e0
Date: Wed, 27 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779893553

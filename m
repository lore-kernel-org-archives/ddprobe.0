Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15B28C035
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751291995; cv=none; b=bpG+Jr+K8ALmAEFMMfFwjGW9F+R6UkpA7kH1rQuIKkvqZyje5BgXu4/Z5ziFD6PmxbKbvcviQd3/c6VRCSNpi57rQOYljsoQx4QZb4N7cHbFHg06TIL9ZfAxVXtFBeaDcntDsQL1DFqN/TDpfbbNDIA8N0H2WFNh39sytx5hIO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751291995; c=relaxed/simple;
	bh=4rLZJsIpGLvQnJXXf2a0cUMoojo1c2bML9rjHqBmwXM=;
	h=To:Subject:From:Message-Id:Date; b=hLwNb1jtkw9UKAeg3xJGwuyipenh7tRLIpe64sFFdVd4GmOudExx12Zz5mLhzMBxT6BT6/dXIbes48vxLvKLV/I1805BDqzsJND91gwpOAQCST07KdXIGCvwCfU+67re4dpQ7DzWtUKeyhzVN97qawwwoykgkylImcmbclfPriA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+ZAk7F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+ZAk7F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D16DC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751291993;
	bh=4rLZJsIpGLvQnJXXf2a0cUMoojo1c2bML9rjHqBmwXM=;
	h=To:Subject:From:Date:From;
	b=C+ZAk7F5hsZ5WC5JWv2WnFZTikKiZEb1LMoWgUd/NVZDnePNnyZKVfIL7zFSVzw9L
	 70lw1KMNQchiRCZfOBs4c2tu4yQOGdEUsv4vxg0W3VAPRGKaCyJ+RBMAbIl/SyBGfY
	 m2Dg3lR21yRkZJ4nrfhAtltHZfl++voxIZBPQaVz6bO1LbKnjXZt4SzymHMa6/DeOa
	 Pb2D7Z9//LCCZRst8mGTW21A0okqtZfWaOFaNpks/6wjNgsEx6ExF/idpqCnyynHr8
	 wVjFdW2+f1HKK607JBAHrxgCYqyBuauqWdbMUNHYuKEnWrxS3EemNbJOPkVn6m0ObR
	 ZIpjktx7nXlIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAAC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129199357.21046.17688646812576212608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c6c6f62627d05954f4d913d5994471016451229a87b53044d15111db8b826f
Date: Mon, 30 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751291993

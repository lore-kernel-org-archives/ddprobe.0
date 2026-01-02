Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6F4400
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767312834; cv=none; b=C9OKAbD5WhVvvFyXceznxp/RPiXEqysbF6pm5SylVHylWYpkkdrcqrCxnMBVQTzPn95mLvd67GoHNZdWZfXC9YmGqHOZNGCp6PW6ZN1HWhEpdfJwrFMxHYpEqt7mFvfSAIfisuzvzu+NoYsI/RCY+AFbK2QFWHk/8F0+WBBm6/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767312834; c=relaxed/simple;
	bh=IIFZkpHeccp87dKRy5OLEt2Ho00VvXRR5LvlzU7C/fQ=;
	h=To:Subject:From:Message-Id:Date; b=gmaGVlOU71BXgEbX8tqKS7vLjcHjRvpyx7vDA6AmuwI8btMQUObd0aL+zsU9RWsIq4dr68APviLghRf94ylbmMIKzuD9uzPiyObCv6Z4Rbpo1VsG+yqZrfUxkAwdtVN3wLGLqgzIJ8nNEpbiz6hia28l25/YkT9Mf0dQxS9f/J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiRzxUf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiRzxUf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767312833;
	bh=IIFZkpHeccp87dKRy5OLEt2Ho00VvXRR5LvlzU7C/fQ=;
	h=To:Subject:From:Date:From;
	b=tiRzxUf9JVqI/0Gdbbs6KF4Gm2Z4NPWs6OUAdYYH56uO0rwprovP9nakVBcat8TWL
	 mTHPODFqgo6EEHDcVV2s+vpdFBrhblyLDUYT/0Vgg8/AHwjNlpfydPwiNPccBUVwvh
	 w3I6yd+HqWRUxpn5IsYlTf6rCDwMvnMiSEWYifIslFOcfV854QNDOABCIp1tmmgKUQ
	 RGl1effYI6qWg+njNGo+jM8//zKQu1EBkjSOUfm7uk+089AJuhcBmudhV/otlb4pN6
	 mjImIFk1qXTqAawDny+8eSDDG/fi6ISMgjPhCCIaRfIOvS3s43ENhQ6lvqDDArhSpV
	 Uz78XBS6XUDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DEEEEC1C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731283357.6752.16920039227643259827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df824925f4aa6d2444527c2719d77fd3551461a99d3368bfd1a0f7a0c6acbb6
Date: Fri, 02 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767312833

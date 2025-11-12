Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218C2186294
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762988994; cv=none; b=uZgmuHIRNpKYwHG19LE8VeUYnJUvq8sYbjkM2C8ZKHq+INYL+6JDdd3aiwj8s6m2p85GDkAJ3CSqguUEb4NcxPwR9hgpyqMJUbOXreoG168T36LylivqgsUGS5MaQ7XOQf1a8APc2RLXvCaNLQD/MlS7C0kbXKGNTiYzxxJJSz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762988994; c=relaxed/simple;
	bh=U0/GotSnwzbwQEWnQFNzwHxpGYQMZdBbpc16UktLFjw=;
	h=To:Subject:From:Message-Id:Date; b=EvuKcDOyFJOKmsPQSzZ2IhHvlXTYBVOv+x8LYhKQub5hJb89fB89N1I/yuCkNyry5Mq17lVwVGCDgxn3HdrC05qd2JdpmfqdhvtEh1aOrtnIgFIqV71kdXJMAVLLFeD0G7JzTTvrCo7oeCpeCW5n060O3Nmpuv3MhEHkWy6qTRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKKQgvt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKKQgvt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B71C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762988993;
	bh=U0/GotSnwzbwQEWnQFNzwHxpGYQMZdBbpc16UktLFjw=;
	h=To:Subject:From:Date:From;
	b=lKKQgvt/QS48W6tp4zYSR9/F2P8uq3hH/64upp/9M8bXE1yZposxyLJkD9ACs4Dze
	 otrSo3PkDJEhLxqNIT55DHWkhsiAJOODWgp2mSd4KZvBcD6BT3sdYd3U+zLC3mnXS9
	 thFgvbeljatnYn1XIWZR06PONGAtmJ6vjEB8XTPRme6QZlc20cALDia/y/FHSwiNh6
	 WOt7wtM9TIeVj7Bi5WWOohFppwsdEQ75stkDz4HcX61nt69uj9/xZvQt2i+TuLAhDj
	 ydlW+Z22l3FdX4JLmVbmhWqVYSfBqk5RGTEir+2ly2bGrFFSkiy0oe7XmnpYGkLnVp
	 S0ZSk4J31evbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970DACD4F23
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298899358.24796.5996705342239491221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcdf59b1eafbb13602030f1a71170aad4a0610f4aa63d9e5290489e9aa5dc55
Date: Wed, 12 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762988993

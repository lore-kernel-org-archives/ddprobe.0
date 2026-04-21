Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFCB13D638
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776754654; cv=none; b=gEtMjbOWt/ZSB2jVI0Nr1wMLm0dV2qWgY2UYbQn5MQcETC5sGe4usE0dbgPMQQIEi/9XBSaXXgx1SYGLNNqzBf/bhTuG5/pMdNvb87NLeFyzENnC5qYx3dZ+PUztvRr/k43RB5gGo6Dw9lNOhLAtHIUOKFRypdGSK1ZL8+dHqIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776754654; c=relaxed/simple;
	bh=T7zX7CctLcmGJMjpuDwJg1DUsU+r90eBYKqCG9S+Dt0=;
	h=To:Subject:From:Message-Id:Date; b=hQkUatOgT3EUpvxiyhFDsBZrJHGgQ1ugRDKkrrJXp06IHXIkO4RVkgh1rrxea0aMGb8FBYrYt0JYxmnU1I+gwgDG8suYlBKyntWbH1k/u5XbFGYUPHMLh/BSuFUS9pimj1zu5CnA3/A478gXP2mst0xd7WLWVR/9V6mMLZ7jWqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwlr2M96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwlr2M96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97FCC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776754653;
	bh=T7zX7CctLcmGJMjpuDwJg1DUsU+r90eBYKqCG9S+Dt0=;
	h=To:Subject:From:Date:From;
	b=Dwlr2M960/zK5mrxACQfrr99fIrrxI3FF6F60wxT/Bj0J4W7l/C6LgS6vQ9AfmfiW
	 6nwCivQXxPZcYfPcQzN3pIUIRXd+Yu9xtWVPCJau9EHd1iL3ZFbpmcPJe7b0HxwonA
	 sIBSyzMJYqB6IXh4NjhqnA6twMuxBVWBEhYRTNe464VqxrLpKDhBiwv3xnsY//LnRM
	 XeGGxQ1w+2KBtvJ16CI2Is+Im1Fx7fnRvMHsh9pjNTHesb1B9WezdvVWxpa0ONVLzD
	 ffMuTvNfWWLHBwwrnIRgqtiSvMcUMigEbVRf+YoyCeVI9SV+a+qA62I7URcDv/RRiH
	 /+NEohcNJAbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAAFF327AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675465368.27601.17371513134465220422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb350f4ca47af93674799592c0b5ee457de97bbf34ca62c0ba4d76540494d3b
Date: Tue, 21 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776754653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EFBEAC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773780894; cv=none; b=jymSXmS09fJ/lWTQBifpE+2qCraq8xEsh5hSKrAsvIJDxU75Z/aMPIkMT3Izc5niCsQlvQxNzE6iiYWb18Z2Rtdt3DvpKX8001uUM7/JrE0/ci6o9cWW39hcn7dOpqA2A90CPoR5eL3+c/CjdPKGqe3QK1igXi9zyncfZw7EAwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773780894; c=relaxed/simple;
	bh=eb+SYcB+p37277ONHZqIBjHMsEFjREjhCGyP+SSlj00=;
	h=To:Subject:From:Message-Id:Date; b=khKTbx2H1y63BHwAHxTOAmgk4Yi6fM36q4G2YiWplh5Sq6TtXXGjpJY3xdl4xnc/L9xj8S7XzuNKX6zpk8EZETPaxBCSs0GaFXHjES84oPmfjBm+zd2RPXrf2mZmYZQNbyaYxCQxkonjH2sAmAD/I409Qh/O4RBEvzxP1QncheE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kd4EAvcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kd4EAvcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12CEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773780893;
	bh=eb+SYcB+p37277ONHZqIBjHMsEFjREjhCGyP+SSlj00=;
	h=To:Subject:From:Date:From;
	b=kd4EAvcnSC3wcVIFZJFYyhKYz30K5GmBeonol+Neu0/jIMJif7BswAvNpy8mX6BT3
	 zrB8BbXfZrvPMDuMGLTw6ajvq988U1JkP87kMNgPVx3C9bJ4GxAu46+T8xUbLwWRex
	 8ggFFMjKhToUodHKUASjP4Af+iAohm57naLagrN/qjA/gnbyhrRAW7Tjw2q/soqYmz
	 o2ujjgVUVshcE9ASghxhZpdhLAqCW6og/eHfCWL4zGnt7LpZCPiW2F3vHJVIwqEm0l
	 0r4HP1iHZNYHU9A+J7gjbrZoVUHvDrl+h0hM669BGk77jRFYCIlxCnh+5dePf2k5TH
	 dq8QldT4gr+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E5FF6E7F
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378089357.9999.4530002898401309053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc27ec81296139db28861f0d58e52d6144887b8a36b4547daa01eeeddb6ec2b
Date: Tue, 17 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773780893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185625D533
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756505394; cv=none; b=EmL5OuhnU5lS/x5O+05FnpONoE7kfoOmr5DY7oPgroZ2jKHxE3GsvhYzeScw/npgkFl0ETGnn4og7iUIeWgpkKs/CY3BW+VBEisP6rUnadvqMQnMXJMhHw4SJl6k9jkMCSj1n6/FSV8WnZR8hZfxUx8k4LqnVMsYJ5GfpFLf3qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756505394; c=relaxed/simple;
	bh=syKXxzmnyF7OJd+47kRE4+otDLsTp+EYsO2Mid1TVv4=;
	h=To:Subject:From:Message-Id:Date; b=kTxghH7FSgvGh9zkA4ORveittcMzpKxd/DYlBM/lbOUYc4MC2BTu24xHc+NGvAXBYDyBI9osDjS+ad0gBmC67yRKDWc38NIPJoHN17SQ4q6kfRJnuqO2KiMMPabOymBnHaxL514yresSjhgX5SQoaF4aXRrL1mf72C9A9CNynTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsOXcOLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsOXcOLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B94C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756505393;
	bh=syKXxzmnyF7OJd+47kRE4+otDLsTp+EYsO2Mid1TVv4=;
	h=To:Subject:From:Date:From;
	b=FsOXcOLBPCw4MfFZ9QKAGqTcXE8DiPYYdHHuWV2ZwZBi8FYWEpgkWK5skxrnUOiVy
	 hmpunp1oHA1w3dWdMEUvpAJBJPAKACeqE8Y+Q8Dg0PPTGrd1DezWbath2CjB3jipzZ
	 H+CN37A/jxskBloE7xzFVGqr5ka9GGUS7mGjGr6uj6V1slbjsRQyCa6UiyV5WY94pn
	 BsiG7dhwb4Bcr5HNH4AnqbY0v0ryRDhX5eF/rKwAgFtyAkXPx7hLpgX0Zqh5Fip0Fc
	 Fkro7EhvwvvdILLwVtXk7qr6ONAxd2/HYp94Zq2wYiveF4OJ0olhjQVSLP0n7xezsO
	 F1Y6KO3q7IAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FCCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650539359.22718.13528219287900593466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8566cd624c154fcf8ece28cb51bc588a29957d141c50a18e38f7d60fbf61f642
Date: Fri, 29 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756505393

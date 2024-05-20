Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F0A135A72
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716213743; cv=none; b=lt1TTTbIqTtIurjvwSoWYEzdnT1r88jJFuht5C6Z6M31MkFtqoQM91zj9XzSnAEaDD880qSxWXCgtbKOgFtbeJXMpIsJWQQ0i8bfJ/Q9AM/NjDnfKrfPZ1zxQpKoG/kXLJZNUSdjFmcJOJ5uINKKpOPzbXHGLMl83OFtaf178II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716213743; c=relaxed/simple;
	bh=DUizh5KqYBtS0oddpEy09YkjBkgFyocUiTP18GvuC00=;
	h=To:Subject:From:Message-Id:Date; b=DRuiSjPfRl2kRLY5391a5Vrqr446r34ji20qsGYiKaVweNimo6HGZjNjCDpM1KxHxL7I0OwIWIVQqT1X/TLK1ucTaL/OOKVuJr5BhC+935155ioQYSNGuGQvjEms/Lm95P85b3dhgjUAMndmrQR4bMmQF1FeP6Y7XF85ncYhVSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgyEJiOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgyEJiOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC6AC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716213743;
	bh=DUizh5KqYBtS0oddpEy09YkjBkgFyocUiTP18GvuC00=;
	h=To:Subject:From:Date:From;
	b=jgyEJiOK4pHnqbIvCXTbfD3ZZBcI9qIWQdQn69/jGYyF30N44LXcGUEcQjw3vxvs3
	 xUXz70OB94GE/fUaE378enTcSG3zU8ofzGTUZCQisfruwuxD83Vt2hfxipWjWFnvRi
	 N32UKHz/NL3oA4RoBG2av5RHN3Val/iwDFtnPsk9f2w0YlIiQ5n1MHE/IWjhBhfnZY
	 rceaz32cj8cZuE0uF9jTQ+3lU1iCLH/Hex8uEU2lhUyZGWGyk++ipJEah3kg9w61KW
	 3+LFP+bA/2d27VZD0ZtRFV1WnUHQ3Ujs8egrh3yaNeXXLSpOg8+oGlnu0HMQtZyzXk
	 gMvCERvuHhSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF2FC25B78
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621374283.12290.12006624140580606823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56bce675364ada577ca37bc5e42666cd0ae549d6431a55b27262c88f68b68a8
Date: Mon, 20 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716213742

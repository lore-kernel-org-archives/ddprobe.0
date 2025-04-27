Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC75C148
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745767194; cv=none; b=obMZ//TYRtWOHGHF714qypeW1ffn1d5W72dn7CnKmTk547dOTmFji9prFWvHd4IWH5JdSuAPLczGXClQzIPk5HaTAPDVinPqJxqxy+1s1DFksjqh3ZqtyHDn0hrc+JoKpEGup1GyS4ViyorQNStgr4OxzitmUhkq8bYZ4ZtaThs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745767194; c=relaxed/simple;
	bh=G62nFO3xIqisMBxb6kLaCKA3RPpkBKkOJWNN8o0gEJY=;
	h=To:Subject:From:Message-Id:Date; b=aOsx+rH352TLT51IK8GGf5V+MNzp71BfNFGZekvPFL/I7Zeq725stuKHTlmxH50DsDHkbeOIt6ca6YUcosMNZKr1X9GD67ZCLW+I5z3En2yBcDyHxFDLJdBxbSx8PZZ/j6XZwGGyLRr2oZfo+cbs5pA9aoweofR7467rZykelII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klf88wnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klf88wnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C00C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745767193;
	bh=G62nFO3xIqisMBxb6kLaCKA3RPpkBKkOJWNN8o0gEJY=;
	h=To:Subject:From:Date:From;
	b=Klf88wnnfmCNQKzPRGxavhkk4Um2nMEATz5EFNQqsSSGauRywKsH+uluEwYAk1pm9
	 tn4yWRnd5JOIK03o9vGdPbdCvWqT3xg0R5e2Jlaz0gefOolPkdh3mveSocaBlNJsUX
	 b+aSx8b1j7tlGXikUiZ7G5+5F+zccuzaQSpWe78gbYHH6RNcTJ66LiOorN4xe2oDCa
	 Se7Gb2xTsk+Ifj5nDguPwePivSXKJir8v0sjTp8QNaIeGbeMkD+85PkXFBstIcKFml
	 cngtmKXdftPfXI1nN5AUi3z1BD4+s06MFliPwjmK3k9lVQ0TQ30EEIcaBShFjFkI84
	 /SuhCN+fxI1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41AC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576719357.2057.2512412591466034764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57473ec5938f9e1b49545ad4aa73a016285a6e29bff228230fd3918550473f5
Date: Sun, 27 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745767193

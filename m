Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17571286D7C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764765774; cv=none; b=RAFK9GRkYX2mEzBe7aGGQWBK/brWQd64lku+PFkgXzsg/+IJkI2LAn8NwSr+n87E32bVUot+6i22SaaLU8OZtCVJVxvws23+E6l1QVb0tor8uf0jYBsJhm5mywJcd4Pnvot4tGOWTMap2ej1ybuZGn1x4VH5bLN+lPG5FQ2Ecs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764765774; c=relaxed/simple;
	bh=S8+f6U7YT0n2FO1tQUt7MXpnpIWrlwu6o+HxxoC4S0s=;
	h=To:Subject:From:Message-Id:Date; b=tELf0DUYzzRWVHnvscsnL/T0tyYYbL8fXTD0o8Hv+OjIMnn1EKYlVEg9P9C4vg1ntwPsd4oshu/29dgRAMINuuo+2i/IXy65NdGvtqoFbvhvZhnygyVLUG5kzD5Tm0fO1gKwDht2NMPp8Q+025Ml5s9uT/ed3DcTJoh/2S/o4rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4G3igTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4G3igTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764765773;
	bh=S8+f6U7YT0n2FO1tQUt7MXpnpIWrlwu6o+HxxoC4S0s=;
	h=To:Subject:From:Date:From;
	b=a4G3igTIWgy5plUudiNQaf7GDn7g/V8qJEKOO9BKBJEG8g08NqTcV26gr+WxfNK3K
	 s2MtAfCOnp4gfDgQjvQ3tYzfydgydAARLTgD6fIm4yZPBUnbKEZgGUe1cgdp3aIOPK
	 1AujIU7zgETWhvPyjaf6Zm3BagXA1II83aQoUjwqvdQ3J4r1jYGzQ4GcLHV3+AWNDL
	 zAw8qth619hTFCmdx6ljszGAUFRCaQGVQdGdrAqBf571+22oRKAhE54hYuogYeLBtk
	 TCE3pwGv6wnOHMxZk4R4WjwZ1EAjXEYDqtCYmnNq1cxVyJoKCd2Nz561FTPyElNxeZ
	 nvRn1kFEyAsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93279D12D50
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476577359.554.4606447171623684960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83679487bcf9502b95889bbd13ac877b21f96c05589a47e5711c198d85fbb2cb
Date: Wed, 03 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764765773
